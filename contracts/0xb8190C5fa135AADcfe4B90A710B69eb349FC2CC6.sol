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

function getRewardsData(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address arg2) with:
         gas gas_remaining wei
        args 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(arg1) < eth.balance(arg1):
        revert with 'NH{q', 17
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address arg2) with:
         gas gas_remaining wei
        args 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(arg2)
    staticcall arg2.delegates(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[288] = ext_call.return_data[12 len 20]
    require ext_code.size(arg2)
    staticcall arg2.getCurrentVotes(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    mem[320] = ext_call.return_data[20 len 12]
    mem[(6 * ceil32(return_data.size)) + 416] = mem[300 len 20]
    mem[(6 * ceil32(return_data.size)) + 448] = mem[340 len 12]
    return 0, 0, mem[(6 * ceil32(return_data.size)) + 416 len 64]
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
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
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
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
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
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
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
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
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
            _916 = mem[(32 * idx) + 128]
            if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _936 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _942 = mem[_936]
                require mem[_936] == mem[_936 + 12 len 20]
                mem[mem[64] + 4] = address(_916)
                require ext_code.size(address(_942))
                staticcall address(_942).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_916)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _976 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _982 = mem[_976]
                require mem[_976] == mem[_976]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1005 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1010 = mem[_1005]
                require mem[_1005] == mem[_1005 + 12 len 20]
                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                require ext_code.size(address(_1010))
                staticcall address(_1010).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1043 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1046 = mem[_1043]
                require mem[_1043] == mem[_1043]
                if _982 and 10^18 > -1 / _982:
                    revert with 'NH{q', 17
                if 10^18 * _982 / 10^18 != _982:
                    revert with 0, 'math-not-safe'
                if 10^18 * _982 > -(mem[_1043] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _982) + (mem[_1043] / 2) < 10^18 * _982:
                    revert with 0, 'math-not-safe'
                if not mem[_1043]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_916)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1191] == bool(mem[_1191])
                _1212 = mem[_1191 + 32]
                require mem[_1191 + 32] == mem[_1191 + 32]
                _1233 = mem[_1191 + 64]
                require mem[_1191 + 64] == bool(mem[_1191 + 64])
                require ext_code.size(address(_916))
                staticcall address(_916).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1261 = mem[_1256]
                require mem[_1256] == mem[_1256]
                _1281 = mem[64]
                mem[64] = mem[64] + 480
                mem[_1281] = (10^18 * _982) + (_1046 / 2) / _1046
                mem[_1281 + 32] = _982
                require ext_code.size(address(_916))
                staticcall address(_916).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1291 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1291] == mem[_1291]
                mem[_1281 + 64] = mem[_1291]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_916))
                staticcall address(_916).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1347 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1347] == mem[_1347]
                mem[_1281 + 96] = mem[_1347]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_916))
                staticcall address(_916).borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1410 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1410] == mem[_1410]
                mem[_1281 + 128] = mem[_1410]
                mem[_1281 + 160] = _1261
                require ext_code.size(address(_916))
                staticcall address(_916).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1438 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1443 = mem[_1438]
                require mem[_1438] == mem[_1438]
                if _1261 > -mem[_1438] - 1:
                    revert with 'NH{q', 17
                if _1261 + mem[_1438] < _1261:
                    revert with 0, 'math-not-safe'
                require ext_code.size(address(_916))
                staticcall address(_916).totalReserves() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1470] == mem[_1470]
                if _1261 + _1443 < mem[_1470]:
                    revert with 'NH{q', 17
                if -mem[_1470] > 0:
                    mem[_1281 + 192] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1501 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                            gas gas_remaining wei
                           args address(_1501)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1525 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1525] == mem[_1525]
                    mem[_1281 + 224] = mem[_1525]
                    require ext_code.size(address(_916))
                    staticcall address(_916).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1542] == mem[_1542]
                    mem[_1281 + 256] = mem[_1542]
                    require ext_code.size(address(_916))
                    staticcall address(_916).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1563 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1563] == mem[_1563]
                    mem[_1281 + 288] = mem[_1563]
                    mem[_1281 + 320] = _1212
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1581 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1581)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0, address(_1581)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1611] == mem[_1611]
                    mem[_1281 + 352] = mem[_1611]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1632 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_1632)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 1, address(_1632)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1658] == mem[_1658]
                    mem[_1281 + 384] = mem[_1658]
                    mem[_1281 + 416] = bool(_1233)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1675 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                            gas gas_remaining wei
                           args address(_1675)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1701 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1701] == bool(mem[_1701])
                    mem[_1281 + 448] = bool(mem[_1701])
                else:
                    if _1261 + _1443 < mem[_1470]:
                        revert with 'NH{q', 17
                    mem[_1281 + 192] = _1261 + _1443 - mem[_1470]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1514 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                            gas gas_remaining wei
                           args address(_1514)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1535] == mem[_1535]
                    mem[_1281 + 224] = mem[_1535]
                    require ext_code.size(address(_916))
                    staticcall address(_916).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1552 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1552] == mem[_1552]
                    mem[_1281 + 256] = mem[_1552]
                    require ext_code.size(address(_916))
                    staticcall address(_916).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1575 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1575] == mem[_1575]
                    mem[_1281 + 288] = mem[_1575]
                    mem[_1281 + 320] = _1212
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1595 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1595)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0, address(_1595)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1626 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1626] == mem[_1626]
                    mem[_1281 + 352] = mem[_1626]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1644 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_1644)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 1, address(_1644)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1669 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1669] == mem[_1669]
                    mem[_1281 + 384] = mem[_1669]
                    mem[_1281 + 416] = bool(_1233)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1687 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                            gas gas_remaining wei
                           args address(_1687)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1718 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1718] == bool(mem[_1718])
                    mem[_1281 + 448] = bool(mem[_1718])
                if idx >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = _1281
            else:
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _929 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_929] == mem[_929 + 12 len 20]
                require ext_code.size(mem[_929 + 12 len 20])
                staticcall mem[_929 + 12 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _953 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _957 = mem[_953]
                require mem[_953] == mem[_953]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _983 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _991 = mem[_983]
                require mem[_983] == mem[_983 + 12 len 20]
                mem[mem[64] + 4] = address(_916)
                require ext_code.size(address(_991))
                staticcall address(_991).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_916)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1024 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1028 = mem[_1024]
                require mem[_1024] == mem[_1024]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1045 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1048 = mem[_1045]
                require mem[_1045] == mem[_1045 + 12 len 20]
                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                require ext_code.size(address(_1048))
                staticcall address(_1048).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1074 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1075 = mem[_1074]
                require mem[_1074] == mem[_1074]
                if 18 < _957:
                    revert with 'NH{q', 17
                if not -_957 + 18:
                    if _1028 and 10^18 > -1 / _1028:
                        revert with 'NH{q', 17
                    if 10^18 * _1028 / 10^18 != _1028:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1028 > -(mem[_1074] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1028) + (mem[_1074] / 2) < 10^18 * _1028:
                        revert with 0, 'math-not-safe'
                    if not mem[_1074]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                            gas gas_remaining wei
                           args address(_916)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1258] == bool(mem[_1258])
                    _1284 = mem[_1258 + 32]
                    require mem[_1258 + 32] == mem[_1258 + 32]
                    _1306 = mem[_1258 + 64]
                    require mem[_1258 + 64] == bool(mem[_1258 + 64])
                    require ext_code.size(address(_916))
                    staticcall address(_916).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1330 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1336 = mem[_1330]
                    require mem[_1330] == mem[_1330]
                    _1362 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_1362] = (10^18 * _1028) + (_1075 / 2) / _1075
                    mem[_1362 + 32] = _1028
                    require ext_code.size(address(_916))
                    staticcall address(_916).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1368] == mem[_1368]
                    mem[_1362 + 64] = mem[_1368]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_916))
                    staticcall address(_916).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1426] == mem[_1426]
                    mem[_1362 + 96] = mem[_1426]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_916))
                    staticcall address(_916).borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1457 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1457] == mem[_1457]
                    mem[_1362 + 128] = mem[_1457]
                    mem[_1362 + 160] = _1336
                    require ext_code.size(address(_916))
                    staticcall address(_916).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1481 = mem[_1479]
                    require mem[_1479] == mem[_1479]
                    if _1336 > -mem[_1479] - 1:
                        revert with 'NH{q', 17
                    if _1336 + mem[_1479] < _1336:
                        revert with 0, 'math-not-safe'
                    require ext_code.size(address(_916))
                    staticcall address(_916).totalReserves() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1506] == mem[_1506]
                    if _1336 + _1481 < mem[_1506]:
                        revert with 'NH{q', 17
                    if -mem[_1506] > 0:
                        mem[_1362 + 192] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1546 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_1546)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1565 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1565] == mem[_1565]
                        mem[_1362 + 224] = mem[_1565]
                        require ext_code.size(address(_916))
                        staticcall address(_916).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1590 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1590] == mem[_1590]
                        mem[_1362 + 256] = mem[_1590]
                        require ext_code.size(address(_916))
                        staticcall address(_916).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1615] == mem[_1615]
                        mem[_1362 + 288] = mem[_1615]
                        mem[_1362 + 320] = _1284
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1638 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_1638)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_1638)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1662 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1662] == mem[_1662]
                        mem[_1362 + 352] = mem[_1662]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1680 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_1680)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_1680)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1713 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1713] == mem[_1713]
                        mem[_1362 + 384] = mem[_1713]
                        mem[_1362 + 416] = bool(_1306)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1742 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_1742)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1768 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1768] == bool(mem[_1768])
                        mem[_1362 + 448] = bool(mem[_1768])
                    else:
                        if _1336 + _1481 < mem[_1506]:
                            revert with 'NH{q', 17
                        mem[_1362 + 192] = _1336 + _1481 - mem[_1506]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1561 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_1561)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1578 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1578] == mem[_1578]
                        mem[_1362 + 224] = mem[_1578]
                        require ext_code.size(address(_916))
                        staticcall address(_916).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1603 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1603] == mem[_1603]
                        mem[_1362 + 256] = mem[_1603]
                        require ext_code.size(address(_916))
                        staticcall address(_916).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1628 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1628] == mem[_1628]
                        mem[_1362 + 288] = mem[_1628]
                        mem[_1362 + 320] = _1284
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1649 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_1649)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_1649)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1671 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1671] == mem[_1671]
                        mem[_1362 + 352] = mem[_1671]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1695 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_1695)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_1695)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1734 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1734] == mem[_1734]
                        mem[_1362 + 384] = mem[_1734]
                        mem[_1362 + 416] = bool(_1306)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1762 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_1762)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1787 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1787] == bool(mem[_1787])
                        mem[_1362 + 448] = bool(mem[_1787])
                    if idx >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 129] = _1362
                else:
                    if bool(bool(-_957 + 18 < 78)) or bool(bool(-_957 + 18 < 32)):
                        if 10^(-_957 + 18) > -1:
                            revert with 'NH{q', 17
                        if not 10^(-_957 + 18):
                            revert with 'NH{q', 18
                        if _1028 / 10^(-_957 + 18) and 10^18 > -1 / _1028 / 10^(-_957 + 18):
                            revert with 'NH{q', 17
                        if 10^18 * _1028 / 10^(-_957 + 18) / 10^18 != _1028 / 10^(-_957 + 18):
                            revert with 0, 'math-not-safe'
                        if 10^18 * _1028 / 10^(-_957 + 18) > -(mem[_1074] / 2) - 1:
                            revert with 'NH{q', 17
                        if (10^18 * _1028 / 10^(-_957 + 18)) + (mem[_1074] / 2) < 10^18 * _1028 / 10^(-_957 + 18):
                            revert with 0, 'math-not-safe'
                        if not mem[_1074]:
                            revert with 'NH{q', 18
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1269 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1269] == bool(mem[_1269])
                        _1300 = mem[_1269 + 32]
                        require mem[_1269 + 32] == mem[_1269 + 32]
                        _1321 = mem[_1269 + 64]
                        require mem[_1269 + 64] == bool(mem[_1269 + 64])
                        require ext_code.size(address(_916))
                        staticcall address(_916).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1348 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1357 = mem[_1348]
                        require mem[_1348] == mem[_1348]
                        _1381 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_1381] = (10^18 * _1028 / 10^(-_957 + 18)) + (_1075 / 2) / _1075
                        mem[_1381 + 32] = _1028 / 10^(-_957 + 18)
                        require ext_code.size(address(_916))
                        staticcall address(_916).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1388 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1388] == mem[_1388]
                        mem[_1381 + 64] = mem[_1388]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_916))
                        staticcall address(_916).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1439 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1439] == mem[_1439]
                        mem[_1381 + 96] = mem[_1439]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_916))
                        staticcall address(_916).borrowBalanceStored(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1469] == mem[_1469]
                        mem[_1381 + 128] = mem[_1469]
                        mem[_1381 + 160] = _1357
                        require ext_code.size(address(_916))
                        staticcall address(_916).getCash() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1488 = mem[_1486]
                        require mem[_1486] == mem[_1486]
                        if _1357 > -mem[_1486] - 1:
                            revert with 'NH{q', 17
                        if _1357 + mem[_1486] < _1357:
                            revert with 0, 'math-not-safe'
                        require ext_code.size(address(_916))
                        staticcall address(_916).totalReserves() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1526] == mem[_1526]
                        if _1357 + _1488 < mem[_1526]:
                            revert with 'NH{q', 17
                        if -mem[_1526] > 0:
                            mem[_1381 + 192] = 0
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1558 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1558)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1577 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1577] == mem[_1577]
                            mem[_1381 + 224] = mem[_1577]
                            require ext_code.size(address(_916))
                            staticcall address(_916).0xd3bd2c72 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1602 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1602] == mem[_1602]
                            mem[_1381 + 256] = mem[_1602]
                            require ext_code.size(address(_916))
                            staticcall address(_916).0xcd91801c with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1627 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1627] == mem[_1627]
                            mem[_1381 + 288] = mem[_1627]
                            mem[_1381 + 320] = _1300
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1646 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = address(_1646)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 0, address(_1646)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1670 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1670] == mem[_1670]
                            mem[_1381 + 352] = mem[_1670]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1689 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = address(_1689)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 1, address(_1689)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1731 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1731] == mem[_1731]
                            mem[_1381 + 384] = mem[_1731]
                            mem[_1381 + 416] = bool(_1321)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1758 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1758)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1783 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1783] == bool(mem[_1783])
                            mem[_1381 + 448] = bool(mem[_1783])
                        else:
                            if _1357 + _1488 < mem[_1526]:
                                revert with 'NH{q', 17
                            mem[_1381 + 192] = _1357 + _1488 - mem[_1526]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1571 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1571)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1591] == mem[_1591]
                            mem[_1381 + 224] = mem[_1591]
                            require ext_code.size(address(_916))
                            staticcall address(_916).0xd3bd2c72 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1616 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1616] == mem[_1616]
                            mem[_1381 + 256] = mem[_1616]
                            require ext_code.size(address(_916))
                            staticcall address(_916).0xcd91801c with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1640 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1640] == mem[_1640]
                            mem[_1381 + 288] = mem[_1640]
                            mem[_1381 + 320] = _1300
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1659 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = address(_1659)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 0, address(_1659)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1682 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1682] == mem[_1682]
                            mem[_1381 + 352] = mem[_1682]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1708 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = address(_1708)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 1, address(_1708)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1747 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1747] == mem[_1747]
                            mem[_1381 + 384] = mem[_1747]
                            mem[_1381 + 416] = bool(_1321)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1772 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1772)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1800 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1800] == bool(mem[_1800])
                            mem[_1381 + 448] = bool(mem[_1800])
                        if idx >= mem[floor32(arg2.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg2.length) + 129] = _1381
                    else:
                        t = 10
                        u = 1
                        s = -_957 + 18
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
                        if _1028 / u * t and 10^18 > -1 / _1028 / u * t:
                            revert with 'NH{q', 17
                        if 10^18 * _1028 / u * t / 10^18 != _1028 / u * t:
                            revert with 0, 'math-not-safe'
                        if 10^18 * _1028 / u * t > -(mem[_1074] / 2) - 1:
                            revert with 'NH{q', 17
                        if (10^18 * _1028 / u * t) + (mem[_1074] / 2) < 10^18 * _1028 / u * t:
                            revert with 0, 'math-not-safe'
                        if not mem[_1074]:
                            revert with 'NH{q', 18
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                                gas gas_remaining wei
                               args address(_916)
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1456 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1456] == bool(mem[_1456])
                        _1472 = mem[_1456 + 32]
                        require mem[_1456 + 32] == mem[_1456 + 32]
                        _1485 = mem[_1456 + 64]
                        require mem[_1456 + 64] == bool(mem[_1456 + 64])
                        require ext_code.size(address(_916))
                        staticcall address(_916).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1498 = mem[_1494]
                        require mem[_1494] == mem[_1494]
                        _1509 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_1509] = (10^18 * _1028 / u * t) + (_1075 / 2) / _1075
                        mem[_1509 + 32] = _1028 / u * t
                        require ext_code.size(address(_916))
                        staticcall address(_916).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1520] == mem[_1520]
                        mem[_1509 + 64] = mem[_1520]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_916))
                        staticcall address(_916).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1551] == mem[_1551]
                        mem[_1509 + 96] = mem[_1551]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_916))
                        staticcall address(_916).borrowBalanceStored(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1589 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1589] == mem[_1589]
                        mem[_1509 + 128] = mem[_1589]
                        mem[_1509 + 160] = _1498
                        require ext_code.size(address(_916))
                        staticcall address(_916).getCash() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1614 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1618 = mem[_1614]
                        require mem[_1614] == mem[_1614]
                        if _1498 > -mem[_1614] - 1:
                            revert with 'NH{q', 17
                        if _1498 + mem[_1614] < _1498:
                            revert with 0, 'math-not-safe'
                        require ext_code.size(address(_916))
                        staticcall address(_916).totalReserves() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1655] == mem[_1655]
                        if _1498 + _1618 < mem[_1655]:
                            revert with 'NH{q', 17
                        if -mem[_1655] > 0:
                            mem[_1509 + 192] = 0
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1699 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1699)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1724] == mem[_1724]
                            mem[_1509 + 224] = mem[_1724]
                            require ext_code.size(address(_916))
                            staticcall address(_916).0xd3bd2c72 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1753 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1753] == mem[_1753]
                            mem[_1509 + 256] = mem[_1753]
                            require ext_code.size(address(_916))
                            staticcall address(_916).0xcd91801c with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1786 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1786] == mem[_1786]
                            mem[_1509 + 288] = mem[_1786]
                            mem[_1509 + 320] = _1472
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1808 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = address(_1808)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 0, address(_1808)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1825 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1825] == mem[_1825]
                            mem[_1509 + 352] = mem[_1825]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1836 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = address(_1836)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 1, address(_1836)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1849 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1849] == mem[_1849]
                            mem[_1509 + 384] = mem[_1849]
                            mem[_1509 + 416] = bool(_1485)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1856 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1856)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1865 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1865] == bool(mem[_1865])
                            mem[_1509 + 448] = bool(mem[_1865])
                        else:
                            if _1498 + _1618 < mem[_1655]:
                                revert with 'NH{q', 17
                            mem[_1509 + 192] = _1498 + _1618 - mem[_1655]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1714 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1714)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1740 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1740] == mem[_1740]
                            mem[_1509 + 224] = mem[_1740]
                            require ext_code.size(address(_916))
                            staticcall address(_916).0xd3bd2c72 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1770 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1770] == mem[_1770]
                            mem[_1509 + 256] = mem[_1770]
                            require ext_code.size(address(_916))
                            staticcall address(_916).0xcd91801c with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1801 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1801] == mem[_1801]
                            mem[_1509 + 288] = mem[_1801]
                            mem[_1509 + 320] = _1472
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1819 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = address(_1819)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 0, address(_1819)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1832 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1832] == mem[_1832]
                            mem[_1509 + 352] = mem[_1832]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1846 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = address(_1846)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 1, address(_1846)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1853 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1853] == mem[_1853]
                            mem[_1509 + 384] = mem[_1853]
                            mem[_1509 + 416] = bool(_1485)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1862 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1862)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1868 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1868] == bool(mem[_1868])
                            mem[_1509 + 448] = bool(mem[_1868])
                        if idx >= mem[floor32(arg2.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg2.length) + 129] = _1509
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _915 = mem[64]
        mem[mem[64]] = 32
        _920 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _920:
            _1280 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1280 + 32]
            mem[t + 64] = mem[_1280 + 64]
            mem[t + 96] = mem[_1280 + 96]
            mem[t + 128] = mem[_1280 + 128]
            mem[t + 160] = mem[_1280 + 160]
            mem[t + 192] = mem[_1280 + 192]
            mem[t + 224] = mem[_1280 + 224]
            mem[t + 256] = mem[_1280 + 256]
            mem[t + 288] = mem[_1280 + 288]
            mem[t + 320] = mem[_1280 + 320]
            mem[t + 352] = mem[_1280 + 352]
            mem[t + 384] = mem[_1280 + 384]
            mem[t + 416] = bool(mem[_1280 + 416])
            mem[t + 448] = bool(mem[_1280 + 448])
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        return memory
          from mem[64]
           len _915 + (480 * _920) + -mem[64] + 64
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
    _1686 = mem[96]
    idx = 0
    while idx < _1686:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1698 = mem[(32 * idx) + 128]
        if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1723 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1732 = mem[_1723]
            require mem[_1723] == mem[_1723 + 12 len 20]
            mem[mem[64] + 4] = address(_1698)
            require ext_code.size(address(_1732))
            staticcall address(_1732).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1698)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1782 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1789 = mem[_1782]
            require mem[_1782] == mem[_1782]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1813 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1816 = mem[_1813]
            require mem[_1813] == mem[_1813 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1816))
            staticcall address(_1816).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1841 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1843 = mem[_1841]
            require mem[_1841] == mem[_1841]
            if _1789 and 10^18 > -1 / _1789:
                revert with 'NH{q', 17
            if 10^18 * _1789 / 10^18 != _1789:
                revert with 0, 'math-not-safe'
            if 10^18 * _1789 > -(mem[_1841] / 2) - 1:
                revert with 'NH{q', 17
            if (10^18 * _1789) + (mem[_1841] / 2) < 10^18 * _1789:
                revert with 0, 'math-not-safe'
            if not mem[_1841]:
                revert with 'NH{q', 18
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_1698)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1882 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1882] == bool(mem[_1882])
            _1887 = mem[_1882 + 32]
            require mem[_1882 + 32] == mem[_1882 + 32]
            _1892 = mem[_1882 + 64]
            require mem[_1882 + 64] == bool(mem[_1882 + 64])
            require ext_code.size(address(_1698))
            staticcall address(_1698).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1899 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1902 = mem[_1899]
            require mem[_1899] == mem[_1899]
            _1909 = mem[64]
            mem[64] = mem[64] + 480
            mem[_1909] = (10^18 * _1789) + (_1843 / 2) / _1843
            mem[_1909 + 32] = _1789
            require ext_code.size(address(_1698))
            staticcall address(_1698).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1915 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1915] == mem[_1915]
            mem[_1909 + 64] = mem[_1915]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1698))
            staticcall address(_1698).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1933 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1933] == mem[_1933]
            mem[_1909 + 96] = mem[_1933]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1698))
            staticcall address(_1698).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1957 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1957] == mem[_1957]
            mem[_1909 + 128] = mem[_1957]
            mem[_1909 + 160] = _1902
            require ext_code.size(address(_1698))
            staticcall address(_1698).getCash() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1970 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1973 = mem[_1970]
            require mem[_1970] == mem[_1970]
            if _1902 > -mem[_1970] - 1:
                revert with 'NH{q', 17
            if _1902 + mem[_1970] < _1902:
                revert with 0, 'math-not-safe'
            require ext_code.size(address(_1698))
            staticcall address(_1698).totalReserves() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1990 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1990] == mem[_1990]
            if _1902 + _1973 < mem[_1990]:
                revert with 'NH{q', 17
            if -mem[_1990] > 0:
                mem[_1909 + 192] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2009 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                        gas gas_remaining wei
                       args address(_2009)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2028 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2028] == mem[_2028]
                mem[_1909 + 224] = mem[_2028]
                require ext_code.size(address(_1698))
                staticcall address(_1698).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2040 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2040] == mem[_2040]
                mem[_1909 + 256] = mem[_2040]
                require ext_code.size(address(_1698))
                staticcall address(_1698).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2060 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2060] == mem[_2060]
                mem[_1909 + 288] = mem[_2060]
                mem[_1909 + 320] = _1887
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2078 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_2078)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0, address(_2078)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2108 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2108] == mem[_2108]
                mem[_1909 + 352] = mem[_2108]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2129 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = address(_2129)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 1, address(_2129)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2155 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2155] == mem[_2155]
                mem[_1909 + 384] = mem[_2155]
                mem[_1909 + 416] = bool(_1892)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2172 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                        gas gas_remaining wei
                       args address(_2172)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2194 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2194] == bool(mem[_2194])
                mem[_1909 + 448] = bool(mem[_2194])
            else:
                if _1902 + _1973 < mem[_1990]:
                    revert with 'NH{q', 17
                mem[_1909 + 192] = _1902 + _1973 - mem[_1990]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2019 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                        gas gas_remaining wei
                       args address(_2019)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2035] == mem[_2035]
                mem[_1909 + 224] = mem[_2035]
                require ext_code.size(address(_1698))
                staticcall address(_1698).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2049 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2049] == mem[_2049]
                mem[_1909 + 256] = mem[_2049]
                require ext_code.size(address(_1698))
                staticcall address(_1698).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2072 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2072] == mem[_2072]
                mem[_1909 + 288] = mem[_2072]
                mem[_1909 + 320] = _1887
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2092 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_2092)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0, address(_2092)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2123 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2123] == mem[_2123]
                mem[_1909 + 352] = mem[_2123]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2141 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = address(_2141)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 1, address(_2141)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2166] == mem[_2166]
                mem[_1909 + 384] = mem[_2166]
                mem[_1909 + 416] = bool(_1892)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2183 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                        gas gas_remaining wei
                       args address(_2183)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2205 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2205] == bool(mem[_2205])
                mem[_1909 + 448] = bool(mem[_2205])
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _1909
        else:
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1710 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1710] == mem[_1710 + 12 len 20]
            require ext_code.size(mem[_1710 + 12 len 20])
            staticcall mem[_1710 + 12 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1749 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1757 = mem[_1749]
            require mem[_1749] == mem[_1749]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1790 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1796 = mem[_1790]
            require mem[_1790] == mem[_1790 + 12 len 20]
            mem[mem[64] + 4] = address(_1698)
            require ext_code.size(address(_1796))
            staticcall address(_1796).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1698)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1824 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1827 = mem[_1824]
            require mem[_1824] == mem[_1824]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1842 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1845 = mem[_1842]
            require mem[_1842] == mem[_1842 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1845))
            staticcall address(_1845).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1859 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1861 = mem[_1859]
            require mem[_1859] == mem[_1859]
            if 18 < _1757:
                revert with 'NH{q', 17
            if not -_1757 + 18:
                if _1827 and 10^18 > -1 / _1827:
                    revert with 'NH{q', 17
                if 10^18 * _1827 / 10^18 != _1827:
                    revert with 0, 'math-not-safe'
                if 10^18 * _1827 > -(mem[_1859] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _1827) + (mem[_1859] / 2) < 10^18 * _1827:
                    revert with 0, 'math-not-safe'
                if not mem[_1859]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1698)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1901 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1901] == bool(mem[_1901])
                _1912 = mem[_1901 + 32]
                require mem[_1901 + 32] == mem[_1901 + 32]
                _1919 = mem[_1901 + 64]
                require mem[_1901 + 64] == bool(mem[_1901 + 64])
                require ext_code.size(address(_1698))
                staticcall address(_1698).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1926 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1928 = mem[_1926]
                require mem[_1926] == mem[_1926]
                _1938 = mem[64]
                mem[64] = mem[64] + 480
                mem[_1938] = (10^18 * _1827) + (_1861 / 2) / _1861
                mem[_1938 + 32] = _1827
                require ext_code.size(address(_1698))
                staticcall address(_1698).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1941 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1941] == mem[_1941]
                mem[_1938 + 64] = mem[_1941]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1698))
                staticcall address(_1698).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1963 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1963] == mem[_1963]
                mem[_1938 + 96] = mem[_1963]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1698))
                staticcall address(_1698).borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1982 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1982] == mem[_1982]
                mem[_1938 + 128] = mem[_1982]
                mem[_1938 + 160] = _1928
                require ext_code.size(address(_1698))
                staticcall address(_1698).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1996 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1998 = mem[_1996]
                require mem[_1996] == mem[_1996]
                if _1928 > -mem[_1996] - 1:
                    revert with 'NH{q', 17
                if _1928 + mem[_1996] < _1928:
                    revert with 0, 'math-not-safe'
                require ext_code.size(address(_1698))
                staticcall address(_1698).totalReserves() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2014 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2014] == mem[_2014]
                if _1928 + _1998 < mem[_2014]:
                    revert with 'NH{q', 17
                if -mem[_2014] > 0:
                    mem[_1938 + 192] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2044 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                            gas gas_remaining wei
                           args address(_2044)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2062] == mem[_2062]
                    mem[_1938 + 224] = mem[_2062]
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2087 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2087] == mem[_2087]
                    mem[_1938 + 256] = mem[_2087]
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2112] == mem[_2112]
                    mem[_1938 + 288] = mem[_2112]
                    mem[_1938 + 320] = _1912
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2135 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_2135)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0, address(_2135)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2159] == mem[_2159]
                    mem[_1938 + 352] = mem[_2159]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2177 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_2177)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 1, address(_2177)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2202 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2202] == mem[_2202]
                    mem[_1938 + 384] = mem[_2202]
                    mem[_1938 + 416] = bool(_1919)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2222 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                            gas gas_remaining wei
                           args address(_2222)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2241 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2241] == bool(mem[_2241])
                    mem[_1938 + 448] = bool(mem[_2241])
                else:
                    if _1928 + _1998 < mem[_2014]:
                        revert with 'NH{q', 17
                    mem[_1938 + 192] = _1928 + _1998 - mem[_2014]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2058 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                            gas gas_remaining wei
                           args address(_2058)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2075 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2075] == mem[_2075]
                    mem[_1938 + 224] = mem[_2075]
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2100 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2100] == mem[_2100]
                    mem[_1938 + 256] = mem[_2100]
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2125 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2125] == mem[_2125]
                    mem[_1938 + 288] = mem[_2125]
                    mem[_1938 + 320] = _1912
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2146 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_2146)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0, address(_2146)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2168] == mem[_2168]
                    mem[_1938 + 352] = mem[_2168]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2190 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_2190)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 1, address(_2190)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2215 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2215] == mem[_2215]
                    mem[_1938 + 384] = mem[_2215]
                    mem[_1938 + 416] = bool(_1919)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2235 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                            gas gas_remaining wei
                           args address(_2235)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2254] == bool(mem[_2254])
                    mem[_1938 + 448] = bool(mem[_2254])
                if idx >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = _1938
            else:
                if bool(bool(-_1757 + 18 < 78)) or bool(bool(-_1757 + 18 < 32)):
                    if 10^(-_1757 + 18) > -1:
                        revert with 'NH{q', 17
                    if not 10^(-_1757 + 18):
                        revert with 'NH{q', 18
                    if _1827 / 10^(-_1757 + 18) and 10^18 > -1 / _1827 / 10^(-_1757 + 18):
                        revert with 'NH{q', 17
                    if 10^18 * _1827 / 10^(-_1757 + 18) / 10^18 != _1827 / 10^(-_1757 + 18):
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1827 / 10^(-_1757 + 18) > -(mem[_1859] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1827 / 10^(-_1757 + 18)) + (mem[_1859] / 2) < 10^18 * _1827 / 10^(-_1757 + 18):
                        revert with 0, 'math-not-safe'
                    if not mem[_1859]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                            gas gas_remaining wei
                           args address(_1698)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1905 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1905] == bool(mem[_1905])
                    _1918 = mem[_1905 + 32]
                    require mem[_1905 + 32] == mem[_1905 + 32]
                    _1922 = mem[_1905 + 64]
                    require mem[_1905 + 64] == bool(mem[_1905 + 64])
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1934 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1936 = mem[_1934]
                    require mem[_1934] == mem[_1934]
                    _1946 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_1946] = (10^18 * _1827 / 10^(-_1757 + 18)) + (_1861 / 2) / _1861
                    mem[_1946 + 32] = _1827 / 10^(-_1757 + 18)
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1950 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1950] == mem[_1950]
                    mem[_1946 + 64] = mem[_1950]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1971 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1971] == mem[_1971]
                    mem[_1946 + 96] = mem[_1971]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1989 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1989] == mem[_1989]
                    mem[_1946 + 128] = mem[_1989]
                    mem[_1946 + 160] = _1936
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2002 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2003 = mem[_2002]
                    require mem[_2002] == mem[_2002]
                    if _1936 > -mem[_2002] - 1:
                        revert with 'NH{q', 17
                    if _1936 + mem[_2002] < _1936:
                        revert with 0, 'math-not-safe'
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).totalReserves() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2029 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2029] == mem[_2029]
                    if _1936 + _2003 < mem[_2029]:
                        revert with 'NH{q', 17
                    if -mem[_2029] > 0:
                        mem[_1946 + 192] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2055 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2055)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2074 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2074] == mem[_2074]
                        mem[_1946 + 224] = mem[_2074]
                        require ext_code.size(address(_1698))
                        staticcall address(_1698).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2099 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2099] == mem[_2099]
                        mem[_1946 + 256] = mem[_2099]
                        require ext_code.size(address(_1698))
                        staticcall address(_1698).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2124 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2124] == mem[_2124]
                        mem[_1946 + 288] = mem[_2124]
                        mem[_1946 + 320] = _1918
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2143 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2143)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2143)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2167] == mem[_2167]
                        mem[_1946 + 352] = mem[_2167]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2185 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2185)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2185)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2213 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2213] == mem[_2213]
                        mem[_1946 + 384] = mem[_2213]
                        mem[_1946 + 416] = bool(_1922)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2232 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2232)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2252 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2252] == bool(mem[_2252])
                        mem[_1946 + 448] = bool(mem[_2252])
                    else:
                        if _1936 + _2003 < mem[_2029]:
                            revert with 'NH{q', 17
                        mem[_1946 + 192] = _1936 + _2003 - mem[_2029]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2068 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2068)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2088 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2088] == mem[_2088]
                        mem[_1946 + 224] = mem[_2088]
                        require ext_code.size(address(_1698))
                        staticcall address(_1698).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2113 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2113] == mem[_2113]
                        mem[_1946 + 256] = mem[_2113]
                        require ext_code.size(address(_1698))
                        staticcall address(_1698).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2137 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2137] == mem[_2137]
                        mem[_1946 + 288] = mem[_2137]
                        mem[_1946 + 320] = _1918
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2156 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2156)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2156)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2179] == mem[_2179]
                        mem[_1946 + 352] = mem[_2179]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2198 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2198)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2198)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2225 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2225] == mem[_2225]
                        mem[_1946 + 384] = mem[_2225]
                        mem[_1946 + 416] = bool(_1922)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2244 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2244)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2262] == bool(mem[_2262])
                        mem[_1946 + 448] = bool(mem[_2262])
                    if idx >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 129] = _1946
                else:
                    t = 10
                    u = 1
                    s = -_1757 + 18
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        _1686 = mem[96]
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
                    if _1827 / u * t and 10^18 > -1 / _1827 / u * t:
                        revert with 'NH{q', 17
                    if 10^18 * _1827 / u * t / 10^18 != _1827 / u * t:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1827 / u * t > -(mem[_1859] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1827 / u * t) + (mem[_1859] / 2) < 10^18 * _1827 / u * t:
                        revert with 0, 'math-not-safe'
                    if not mem[_1859]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                            gas gas_remaining wei
                           args address(_1698)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1981 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1981] == bool(mem[_1981])
                    _1992 = mem[_1981 + 32]
                    require mem[_1981 + 32] == mem[_1981 + 32]
                    _2001 = mem[_1981 + 64]
                    require mem[_1981 + 64] == bool(mem[_1981 + 64])
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2006 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2008 = mem[_2006]
                    require mem[_2006] == mem[_2006]
                    _2016 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_2016] = (10^18 * _1827 / u * t) + (_1861 / 2) / _1861
                    mem[_2016 + 32] = _1827 / u * t
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2024 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2024] == mem[_2024]
                    mem[_2016 + 64] = mem[_2024]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2048 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2048] == mem[_2048]
                    mem[_2016 + 96] = mem[_2048]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2086 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2086] == mem[_2086]
                    mem[_2016 + 128] = mem[_2086]
                    mem[_2016 + 160] = _2008
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2115 = mem[_2111]
                    require mem[_2111] == mem[_2111]
                    if _2008 > -mem[_2111] - 1:
                        revert with 'NH{q', 17
                    if _2008 + mem[_2111] < _2008:
                        revert with 0, 'math-not-safe'
                    require ext_code.size(address(_1698))
                    staticcall address(_1698).totalReserves() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2152 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2152] == mem[_2152]
                    if _2008 + _2115 < mem[_2152]:
                        revert with 'NH{q', 17
                    if -mem[_2152] > 0:
                        mem[_2016 + 192] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2192 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2192)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2208 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2208] == mem[_2208]
                        mem[_2016 + 224] = mem[_2208]
                        require ext_code.size(address(_1698))
                        staticcall address(_1698).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2229 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2229] == mem[_2229]
                        mem[_2016 + 256] = mem[_2229]
                        require ext_code.size(address(_1698))
                        staticcall address(_1698).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2253] == mem[_2253]
                        mem[_2016 + 288] = mem[_2253]
                        mem[_2016 + 320] = _1992
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2269 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2269)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2269)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2276 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2276] == mem[_2276]
                        mem[_2016 + 352] = mem[_2276]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2282 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2282)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2282)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2288 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2288] == mem[_2288]
                        mem[_2016 + 384] = mem[_2288]
                        mem[_2016 + 416] = bool(_2001)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2294 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2294)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2300] == bool(mem[_2300])
                        mem[_2016 + 448] = bool(mem[_2300])
                    else:
                        if _2008 + _2115 < mem[_2152]:
                            revert with 'NH{q', 17
                        mem[_2016 + 192] = _2008 + _2115 - mem[_2152]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2203 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2203)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2220 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2220] == mem[_2220]
                        mem[_2016 + 224] = mem[_2220]
                        require ext_code.size(address(_1698))
                        staticcall address(_1698).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2242] == mem[_2242]
                        mem[_2016 + 256] = mem[_2242]
                        require ext_code.size(address(_1698))
                        staticcall address(_1698).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2263] == mem[_2263]
                        mem[_2016 + 288] = mem[_2263]
                        mem[_2016 + 320] = _1992
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2273 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2273)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2273)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2279 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2279] == mem[_2279]
                        mem[_2016 + 352] = mem[_2279]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2285 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2285)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2285)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2291] == mem[_2291]
                        mem[_2016 + 384] = mem[_2291]
                        mem[_2016 + 416] = bool(_2001)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2297 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2297)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2303] == bool(mem[_2303])
                        mem[_2016 + 448] = bool(mem[_2303])
                    if idx >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 129] = _2016
        if idx == -1:
            revert with 'NH{q', 17
        _1686 = mem[96]
        idx = idx + 1
        continue 
    _1697 = mem[64]
    mem[mem[64]] = 32
    _1702 = mem[floor32(arg2.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
    idx = 0
    s = floor32(arg2.length) + 129
    t = mem[64] + 64
    while idx < _1702:
        _1908 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1908 + 32]
        mem[t + 64] = mem[_1908 + 64]
        mem[t + 96] = mem[_1908 + 96]
        mem[t + 128] = mem[_1908 + 128]
        mem[t + 160] = mem[_1908 + 160]
        mem[t + 192] = mem[_1908 + 192]
        mem[t + 224] = mem[_1908 + 224]
        mem[t + 256] = mem[_1908 + 256]
        mem[t + 288] = mem[_1908 + 288]
        mem[t + 320] = mem[_1908 + 320]
        mem[t + 352] = mem[_1908 + 352]
        mem[t + 384] = mem[_1908 + 384]
        mem[t + 416] = bool(mem[_1908 + 416])
        mem[t + 448] = bool(mem[_1908 + 448])
        idx = idx + 1
        s = s + 32
        t = t + 480
        continue 
    return memory
      from mem[64]
       len _1697 + (480 * _1702) + -mem[64] + 64
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
            else:
                _1009 = mem[(32 * idx) + 128]
                if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _1028 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1033 = mem[_1028]
                        require mem[_1028] == mem[_1028 + 12 len 20]
                        mem[mem[64] + 4] = address(_1009)
                        require ext_code.size(address(_1033))
                        staticcall address(_1033).getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(_1009)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _1060 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1064 = mem[_1060]
                            require mem[_1060] == mem[_1060]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _1084 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1089 = mem[_1084]
                                require mem[_1084] == mem[_1084 + 12 len 20]
                                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                                require ext_code.size(address(_1089))
                                staticcall address(_1089).getUnderlyingPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _1118 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1121 = mem[_1118]
                                    require mem[_1118] == mem[_1118]
                                    if _1064 and 10^18 > -1 / _1064:
                                        revert with 'NH{q', 17
                                    else:
                                        if 10^18 * _1064 / 10^18 != _1064:
                                            revert with 0, 'math-not-safe'
                                        else:
                                            if 10^18 * _1064 > -(mem[_1118] / 2) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if (10^18 * _1064) + (mem[_1118] / 2) < 10^18 * _1064:
                                                    revert with 0, 'math-not-safe'
                                                else:
                                                    if not mem[_1118]:
                                                        revert with 'NH{q', 18
                                                    else:
                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                                                                gas gas_remaining wei
                                                               args address(_1009)
                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _1284 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 96
                                                            require mem[_1284] == bool(mem[_1284])
                                                            _1310 = mem[_1284 + 32]
                                                            require mem[_1284 + 32] == mem[_1284 + 32]
                                                            _1333 = mem[_1284 + 64]
                                                            require mem[_1284 + 64] == bool(mem[_1284 + 64])
                                                            require ext_code.size(address(_1009))
                                                            staticcall address(_1009).totalBorrows() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1359 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1364 = mem[_1359]
                                                                require mem[_1359] == mem[_1359]
                                                                _1385 = mem[64]
                                                                mem[64] = mem[64] + 480
                                                                mem[_1385] = (10^18 * _1064) + (_1121 / 2) / _1121
                                                                mem[_1385 + 32] = _1064
                                                                require ext_code.size(address(_1009))
                                                                staticcall address(_1009).exchangeRateStored() with:
                                                                        gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _1395 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_1395] == mem[_1395]
                                                                    mem[_1385 + 64] = mem[_1395]
                                                                    mem[mem[64] + 4] = arg1
                                                                    require ext_code.size(address(_1009))
                                                                    staticcall address(_1009).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(arg1)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _1458 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_1458] == mem[_1458]
                                                                        mem[_1385 + 96] = mem[_1458]
                                                                        mem[mem[64] + 4] = arg1
                                                                        require ext_code.size(address(_1009))
                                                                        staticcall address(_1009).borrowBalanceStored(address arg1) with:
                                                                                gas gas_remaining wei
                                                                               args address(arg1)
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1522 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_1522] == mem[_1522]
                                                                            mem[_1385 + 128] = mem[_1522]
                                                                            mem[_1385 + 160] = _1364
                                                                            require ext_code.size(address(_1009))
                                                                            staticcall address(_1009).getCash() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _1550 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _1556 = mem[_1550]
                                                                                require mem[_1550] == mem[_1550]
                                                                                if _1364 > -mem[_1550] - 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if _1364 + mem[_1550] < _1364:
                                                                                        revert with 0, 'math-not-safe'
                                                                                    else:
                                                                                        require ext_code.size(address(_1009))
                                                                                        staticcall address(_1009).totalReserves() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1583 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_1583] == mem[_1583]
                                                                                            if _1364 + _1556 < mem[_1583]:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if -mem[_1583] <= 0:
                                                                                                    if _1364 + _1556 < mem[_1583]:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        mem[_1385 + 192] = _1364 + _1556 - mem[_1583]
                                                                                                        if idx >= mem[96]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            _1627 = mem[(32 * idx) + 128]
                                                                                                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(_1627)
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1648 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1648] == mem[_1648]
                                                                                                                mem[_1385 + 224] = mem[_1648]
                                                                                                                require ext_code.size(address(_1009))
                                                                                                                staticcall address(_1009).0xd3bd2c72 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1665 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_1665] == mem[_1665]
                                                                                                                    mem[_1385 + 256] = mem[_1665]
                                                                                                                    require ext_code.size(address(_1009))
                                                                                                                    staticcall address(_1009).0xcd91801c with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1688 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_1688] == mem[_1688]
                                                                                                                        mem[_1385 + 288] = mem[_1688]
                                                                                                                        mem[_1385 + 320] = _1310
                                                                                                                        if idx >= mem[96]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            _1708 = mem[(32 * idx) + 128]
                                                                                                                            mem[mem[64] + 4] = 0
                                                                                                                            mem[mem[64] + 36] = address(_1708)
                                                                                                                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args 0, address(_1708)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1739 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_1739] == mem[_1739]
                                                                                                                                mem[_1385 + 352] = mem[_1739]
                                                                                                                                if idx >= mem[96]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _1757 = mem[(32 * idx) + 128]
                                                                                                                                    mem[mem[64] + 4] = 1
                                                                                                                                    mem[mem[64] + 36] = address(_1757)
                                                                                                                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args 1, address(_1757)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _1782 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_1782] == mem[_1782]
                                                                                                                                        mem[_1385 + 384] = mem[_1782]
                                                                                                                                        mem[_1385 + 416] = bool(_1333)
                                                                                                                                        if idx >= mem[96]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            _1801 = mem[(32 * idx) + 128]
                                                                                                                                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                   args address(_1801)
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _1838 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_1838] == bool(mem[_1838])
                                                                                                                                                mem[_1385 + 448] = bool(mem[_1838])
                                                                                                                                                if idx >= mem[floor32(arg2.length) + 225]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * idx) + floor32(arg2.length) + 257] = _1385
                                                                                                                                                    if idx == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        idx = idx + 1
                                                                                                                                                        continue 
                                                                                                else:
                                                                                                    mem[_1385 + 192] = 0
                                                                                                    if idx >= mem[96]:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        _1614 = mem[(32 * idx) + 128]
                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(_1614)
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1638 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_1638] == mem[_1638]
                                                                                                            mem[_1385 + 224] = mem[_1638]
                                                                                                            require ext_code.size(address(_1009))
                                                                                                            staticcall address(_1009).0xd3bd2c72 with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1655 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1655] == mem[_1655]
                                                                                                                mem[_1385 + 256] = mem[_1655]
                                                                                                                require ext_code.size(address(_1009))
                                                                                                                staticcall address(_1009).0xcd91801c with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1676 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_1676] == mem[_1676]
                                                                                                                    mem[_1385 + 288] = mem[_1676]
                                                                                                                    mem[_1385 + 320] = _1310
                                                                                                                    if idx >= mem[96]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        _1694 = mem[(32 * idx) + 128]
                                                                                                                        mem[mem[64] + 4] = 0
                                                                                                                        mem[mem[64] + 36] = address(_1694)
                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args 0, address(_1694)
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1724 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_1724] == mem[_1724]
                                                                                                                            mem[_1385 + 352] = mem[_1724]
                                                                                                                            if idx >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                _1745 = mem[(32 * idx) + 128]
                                                                                                                                mem[mem[64] + 4] = 1
                                                                                                                                mem[mem[64] + 36] = address(_1745)
                                                                                                                                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args 1, address(_1745)
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _1771 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_1771] == mem[_1771]
                                                                                                                                    mem[_1385 + 384] = mem[_1771]
                                                                                                                                    mem[_1385 + 416] = bool(_1333)
                                                                                                                                    if idx >= mem[96]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        _1788 = mem[(32 * idx) + 128]
                                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args address(_1788)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _1816 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_1816] == bool(mem[_1816])
                                                                                                                                            mem[_1385 + 448] = bool(mem[_1816])
                                                                                                                                            if idx >= mem[floor32(arg2.length) + 225]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * idx) + floor32(arg2.length) + 257] = _1385
                                                                                                                                                if idx == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    continue 
                else:
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        _1021 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1021] == mem[_1021 + 12 len 20]
                        require ext_code.size(mem[_1021 + 12 len 20])
                        staticcall mem[_1021 + 12 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            _1042 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1046 = mem[_1042]
                            require mem[_1042] == mem[_1042]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                _1065 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1073 = mem[_1065]
                                require mem[_1065] == mem[_1065 + 12 len 20]
                                mem[mem[64] + 4] = address(_1009)
                                require ext_code.size(address(_1073))
                                staticcall address(_1073).getUnderlyingPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args address(_1009)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    _1100 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1103 = mem[_1100]
                                    require mem[_1100] == mem[_1100]
                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _1120 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1123 = mem[_1120]
                                        require mem[_1120] == mem[_1120 + 12 len 20]
                                        mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                                        require ext_code.size(address(_1123))
                                        staticcall address(_1123).getUnderlyingPrice(address arg1) with:
                                                gas gas_remaining wei
                                               args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1152 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1154 = mem[_1152]
                                            require mem[_1152] == mem[_1152]
                                            if 18 < _1046:
                                                revert with 'NH{q', 17
                                            else:
                                                if -_1046 + 18:
                                                    if not bool(-_1046 + 18 < 78) and not bool(-_1046 + 18 < 32):
                                                        t = 10
                                                        u = 1
                                                        s = -_1046 + 18
                                                        while s > 1:
                                                            if t > -1 / t:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if not bool(s):
                                                                    t = t * t
                                                                    u = u
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                                else:
                                                                    t = t * t
                                                                    u = u * t
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                        if u > -1 / t:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if not u * t:
                                                                revert with 'NH{q', 18
                                                            else:
                                                                if _1103 / u * t and 10^18 > -1 / _1103 / u * t:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if 10^18 * _1103 / u * t / 10^18 != _1103 / u * t:
                                                                        revert with 0, 'math-not-safe'
                                                                    else:
                                                                        if 10^18 * _1103 / u * t > -(mem[_1152] / 2) - 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if (10^18 * _1103 / u * t) + (mem[_1152] / 2) < 10^18 * _1103 / u * t:
                                                                                revert with 0, 'math-not-safe'
                                                                            else:
                                                                                if not mem[_1152]:
                                                                                    revert with 'NH{q', 18
                                                                                else:
                                                                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(_1009)
                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _1569 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 96
                                                                                        require mem[_1569] == bool(mem[_1569])
                                                                                        _1585 = mem[_1569 + 32]
                                                                                        require mem[_1569 + 32] == mem[_1569 + 32]
                                                                                        _1598 = mem[_1569 + 64]
                                                                                        require mem[_1569 + 64] == bool(mem[_1569 + 64])
                                                                                        require ext_code.size(address(_1009))
                                                                                        staticcall address(_1009).totalBorrows() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1607 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _1611 = mem[_1607]
                                                                                            require mem[_1607] == mem[_1607]
                                                                                            _1622 = mem[64]
                                                                                            mem[64] = mem[64] + 480
                                                                                            mem[_1622] = (10^18 * _1103 / u * t) + (_1154 / 2) / _1154
                                                                                            mem[_1622 + 32] = _1103 / u * t
                                                                                            require ext_code.size(address(_1009))
                                                                                            staticcall address(_1009).exchangeRateStored() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _1633 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_1633] == mem[_1633]
                                                                                                mem[_1622 + 64] = mem[_1633]
                                                                                                mem[mem[64] + 4] = arg1
                                                                                                require ext_code.size(address(_1009))
                                                                                                staticcall address(_1009).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg1)
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1664 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1664] == mem[_1664]
                                                                                                    mem[_1622 + 96] = mem[_1664]
                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                    require ext_code.size(address(_1009))
                                                                                                    staticcall address(_1009).borrowBalanceStored(address arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(arg1)
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1702 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_1702] == mem[_1702]
                                                                                                        mem[_1622 + 128] = mem[_1702]
                                                                                                        mem[_1622 + 160] = _1611
                                                                                                        require ext_code.size(address(_1009))
                                                                                                        staticcall address(_1009).getCash() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1727 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _1731 = mem[_1727]
                                                                                                            require mem[_1727] == mem[_1727]
                                                                                                            if _1611 > -mem[_1727] - 1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if _1611 + mem[_1727] < _1611:
                                                                                                                    revert with 0, 'math-not-safe'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(_1009))
                                                                                                                    staticcall address(_1009).totalReserves() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1768 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_1768] == mem[_1768]
                                                                                                                        if _1611 + _1731 < mem[_1768]:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if -mem[_1768] <= 0:
                                                                                                                                if _1611 + _1731 < mem[_1768]:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    mem[_1622 + 192] = _1611 + _1731 - mem[_1768]
                                                                                                                                    if idx >= mem[96]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        _1832 = mem[(32 * idx) + 128]
                                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args address(_1832)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _1860 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_1860] == mem[_1860]
                                                                                                                                            mem[_1622 + 224] = mem[_1860]
                                                                                                                                            require ext_code.size(address(_1009))
                                                                                                                                            staticcall address(_1009).0xd3bd2c72 with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _1892 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_1892] == mem[_1892]
                                                                                                                                                mem[_1622 + 256] = mem[_1892]
                                                                                                                                                require ext_code.size(address(_1009))
                                                                                                                                                staticcall address(_1009).0xcd91801c with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _1924 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_1924] == mem[_1924]
                                                                                                                                                    mem[_1622 + 288] = mem[_1924]
                                                                                                                                                    mem[_1622 + 320] = _1585
                                                                                                                                                    if idx >= mem[96]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        _1945 = mem[(32 * idx) + 128]
                                                                                                                                                        mem[mem[64] + 4] = 0
                                                                                                                                                        mem[mem[64] + 36] = address(_1945)
                                                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args 0, address(_1945)
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _1957 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_1957] == mem[_1957]
                                                                                                                                                            mem[_1622 + 352] = mem[_1957]
                                                                                                                                                            if idx >= mem[96]:
                                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                                            else:
                                                                                                                                                                _1972 = mem[(32 * idx) + 128]
                                                                                                                                                                mem[mem[64] + 4] = 1
                                                                                                                                                                mem[mem[64] + 36] = address(_1972)
                                                                                                                                                                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                       args 1, address(_1972)
                                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    _1982 = mem[64]
                                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                    require mem[_1982] == mem[_1982]
                                                                                                                                                                    mem[_1622 + 384] = mem[_1982]
                                                                                                                                                                    mem[_1622 + 416] = bool(_1598)
                                                                                                                                                                    if idx >= mem[96]:
                                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                                    else:
                                                                                                                                                                        _1992 = mem[(32 * idx) + 128]
                                                                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args address(_1992)
                                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            _2000 = mem[64]
                                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            require mem[_2000] == bool(mem[_2000])
                                                                                                                                                                            mem[_1622 + 448] = bool(mem[_2000])
                                                                                                                                                                            if idx >= mem[floor32(arg2.length) + 225]:
                                                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                                                            else:
                                                                                                                                                                                mem[(32 * idx) + floor32(arg2.length) + 257] = _1622
                                                                                                                                                                                if idx == -1:
                                                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                                                else:
                                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                                    continue 
                                                                                                                            else:
                                                                                                                                mem[_1622 + 192] = 0
                                                                                                                                if idx >= mem[96]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _1814 = mem[(32 * idx) + 128]
                                                                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args address(_1814)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _1844 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_1844] == mem[_1844]
                                                                                                                                        mem[_1622 + 224] = mem[_1844]
                                                                                                                                        require ext_code.size(address(_1009))
                                                                                                                                        staticcall address(_1009).0xd3bd2c72 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _1875 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_1875] == mem[_1875]
                                                                                                                                            mem[_1622 + 256] = mem[_1875]
                                                                                                                                            require ext_code.size(address(_1009))
                                                                                                                                            staticcall address(_1009).0xcd91801c with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _1908 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_1908] == mem[_1908]
                                                                                                                                                mem[_1622 + 288] = mem[_1908]
                                                                                                                                                mem[_1622 + 320] = _1585
                                                                                                                                                if idx >= mem[96]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    _1931 = mem[(32 * idx) + 128]
                                                                                                                                                    mem[mem[64] + 4] = 0
                                                                                                                                                    mem[mem[64] + 36] = address(_1931)
                                                                                                                                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args 0, address(_1931)
                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        _1952 = mem[64]
                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        require mem[_1952] == mem[_1952]
                                                                                                                                                        mem[_1622 + 352] = mem[_1952]
                                                                                                                                                        if idx >= mem[96]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            _1961 = mem[(32 * idx) + 128]
                                                                                                                                                            mem[mem[64] + 4] = 1
                                                                                                                                                            mem[mem[64] + 36] = address(_1961)
                                                                                                                                                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                   args 1, address(_1961)
                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                            else:
                                                                                                                                                                _1977 = mem[64]
                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                require mem[_1977] == mem[_1977]
                                                                                                                                                                mem[_1622 + 384] = mem[_1977]
                                                                                                                                                                mem[_1622 + 416] = bool(_1598)
                                                                                                                                                                if idx >= mem[96]:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    _1985 = mem[(32 * idx) + 128]
                                                                                                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args address(_1985)
                                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        _1995 = mem[64]
                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        require mem[_1995] == bool(mem[_1995])
                                                                                                                                                                        mem[_1622 + 448] = bool(mem[_1995])
                                                                                                                                                                        if idx >= mem[floor32(arg2.length) + 225]:
                                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                                        else:
                                                                                                                                                                            mem[(32 * idx) + floor32(arg2.length) + 257] = _1622
                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                                            else:
                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                continue 
                                                    else:
                                                        if 10^(-_1046 + 18) > -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if not 10^(-_1046 + 18):
                                                                revert with 'NH{q', 18
                                                            else:
                                                                if _1103 / 10^(-_1046 + 18) and 10^18 > -1 / _1103 / 10^(-_1046 + 18):
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if 10^18 * _1103 / 10^(-_1046 + 18) / 10^18 != _1103 / 10^(-_1046 + 18):
                                                                        revert with 0, 'math-not-safe'
                                                                    else:
                                                                        if 10^18 * _1103 / 10^(-_1046 + 18) > -(mem[_1152] / 2) - 1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if (10^18 * _1103 / 10^(-_1046 + 18)) + (mem[_1152] / 2) < 10^18 * _1103 / 10^(-_1046 + 18):
                                                                                revert with 0, 'math-not-safe'
                                                                            else:
                                                                                if not mem[_1152]:
                                                                                    revert with 'NH{q', 18
                                                                                else:
                                                                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(_1009)
                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _1373 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 96
                                                                                        require mem[_1373] == bool(mem[_1373])
                                                                                        _1406 = mem[_1373 + 32]
                                                                                        require mem[_1373 + 32] == mem[_1373 + 32]
                                                                                        _1431 = mem[_1373 + 64]
                                                                                        require mem[_1373 + 64] == bool(mem[_1373 + 64])
                                                                                        require ext_code.size(address(_1009))
                                                                                        staticcall address(_1009).totalBorrows() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1459 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _1470 = mem[_1459]
                                                                                            require mem[_1459] == mem[_1459]
                                                                                            _1494 = mem[64]
                                                                                            mem[64] = mem[64] + 480
                                                                                            mem[_1494] = (10^18 * _1103 / 10^(-_1046 + 18)) + (_1154 / 2) / _1154
                                                                                            mem[_1494 + 32] = _1103 / 10^(-_1046 + 18)
                                                                                            require ext_code.size(address(_1009))
                                                                                            staticcall address(_1009).exchangeRateStored() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _1500 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_1500] == mem[_1500]
                                                                                                mem[_1494 + 64] = mem[_1500]
                                                                                                mem[mem[64] + 4] = arg1
                                                                                                require ext_code.size(address(_1009))
                                                                                                staticcall address(_1009).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg1)
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1551 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1551] == mem[_1551]
                                                                                                    mem[_1494 + 96] = mem[_1551]
                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                    require ext_code.size(address(_1009))
                                                                                                    staticcall address(_1009).borrowBalanceStored(address arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(arg1)
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1582 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_1582] == mem[_1582]
                                                                                                        mem[_1494 + 128] = mem[_1582]
                                                                                                        mem[_1494 + 160] = _1470
                                                                                                        require ext_code.size(address(_1009))
                                                                                                        staticcall address(_1009).getCash() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1599 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _1601 = mem[_1599]
                                                                                                            require mem[_1599] == mem[_1599]
                                                                                                            if _1470 > -mem[_1599] - 1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if _1470 + mem[_1599] < _1470:
                                                                                                                    revert with 0, 'math-not-safe'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(_1009))
                                                                                                                    staticcall address(_1009).totalReserves() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1639 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_1639] == mem[_1639]
                                                                                                                        if _1470 + _1601 < mem[_1639]:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            if -mem[_1639] <= 0:
                                                                                                                                if _1470 + _1601 < mem[_1639]:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    mem[_1494 + 192] = _1470 + _1601 - mem[_1639]
                                                                                                                                    if idx >= mem[96]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        _1684 = mem[(32 * idx) + 128]
                                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args address(_1684)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _1704 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_1704] == mem[_1704]
                                                                                                                                            mem[_1494 + 224] = mem[_1704]
                                                                                                                                            require ext_code.size(address(_1009))
                                                                                                                                            staticcall address(_1009).0xd3bd2c72 with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _1729 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_1729] == mem[_1729]
                                                                                                                                                mem[_1494 + 256] = mem[_1729]
                                                                                                                                                require ext_code.size(address(_1009))
                                                                                                                                                staticcall address(_1009).0xcd91801c with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _1753 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_1753] == mem[_1753]
                                                                                                                                                    mem[_1494 + 288] = mem[_1753]
                                                                                                                                                    mem[_1494 + 320] = _1406
                                                                                                                                                    if idx >= mem[96]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        _1772 = mem[(32 * idx) + 128]
                                                                                                                                                        mem[mem[64] + 4] = 0
                                                                                                                                                        mem[mem[64] + 36] = address(_1772)
                                                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args 0, address(_1772)
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _1795 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_1795] == mem[_1795]
                                                                                                                                                            mem[_1494 + 352] = mem[_1795]
                                                                                                                                                            if idx >= mem[96]:
                                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                                            else:
                                                                                                                                                                _1826 = mem[(32 * idx) + 128]
                                                                                                                                                                mem[mem[64] + 4] = 1
                                                                                                                                                                mem[mem[64] + 36] = address(_1826)
                                                                                                                                                                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                       args 1, address(_1826)
                                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    _1867 = mem[64]
                                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                    require mem[_1867] == mem[_1867]
                                                                                                                                                                    mem[_1494 + 384] = mem[_1867]
                                                                                                                                                                    mem[_1494 + 416] = bool(_1431)
                                                                                                                                                                    if idx >= mem[96]:
                                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                                    else:
                                                                                                                                                                        _1894 = mem[(32 * idx) + 128]
                                                                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args address(_1894)
                                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            _1923 = mem[64]
                                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            require mem[_1923] == bool(mem[_1923])
                                                                                                                                                                            mem[_1494 + 448] = bool(mem[_1923])
                                                                                                                                                                            if idx >= mem[floor32(arg2.length) + 225]:
                                                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                                                            else:
                                                                                                                                                                                mem[(32 * idx) + floor32(arg2.length) + 257] = _1494
                                                                                                                                                                                if idx == -1:
                                                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                                                else:
                                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                                    continue 
                                                                                                                            else:
                                                                                                                                mem[_1494 + 192] = 0
                                                                                                                                if idx >= mem[96]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    _1671 = mem[(32 * idx) + 128]
                                                                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args address(_1671)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _1690 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_1690] == mem[_1690]
                                                                                                                                        mem[_1494 + 224] = mem[_1690]
                                                                                                                                        require ext_code.size(address(_1009))
                                                                                                                                        staticcall address(_1009).0xd3bd2c72 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _1715 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_1715] == mem[_1715]
                                                                                                                                            mem[_1494 + 256] = mem[_1715]
                                                                                                                                            require ext_code.size(address(_1009))
                                                                                                                                            staticcall address(_1009).0xcd91801c with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _1740 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_1740] == mem[_1740]
                                                                                                                                                mem[_1494 + 288] = mem[_1740]
                                                                                                                                                mem[_1494 + 320] = _1406
                                                                                                                                                if idx >= mem[96]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    _1759 = mem[(32 * idx) + 128]
                                                                                                                                                    mem[mem[64] + 4] = 0
                                                                                                                                                    mem[mem[64] + 36] = address(_1759)
                                                                                                                                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args 0, address(_1759)
                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        _1783 = mem[64]
                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        require mem[_1783] == mem[_1783]
                                                                                                                                                        mem[_1494 + 352] = mem[_1783]
                                                                                                                                                        if idx >= mem[96]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            _1803 = mem[(32 * idx) + 128]
                                                                                                                                                            mem[mem[64] + 4] = 1
                                                                                                                                                            mem[mem[64] + 36] = address(_1803)
                                                                                                                                                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                   args 1, address(_1803)
                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                            else:
                                                                                                                                                                _1850 = mem[64]
                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                require mem[_1850] == mem[_1850]
                                                                                                                                                                mem[_1494 + 384] = mem[_1850]
                                                                                                                                                                mem[_1494 + 416] = bool(_1431)
                                                                                                                                                                if idx >= mem[96]:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    _1880 = mem[(32 * idx) + 128]
                                                                                                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args address(_1880)
                                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        _1905 = mem[64]
                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        require mem[_1905] == bool(mem[_1905])
                                                                                                                                                                        mem[_1494 + 448] = bool(mem[_1905])
                                                                                                                                                                        if idx >= mem[floor32(arg2.length) + 225]:
                                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                                        else:
                                                                                                                                                                            mem[(32 * idx) + floor32(arg2.length) + 257] = _1494
                                                                                                                                                                            if idx == -1:
                                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                                            else:
                                                                                                                                                                                idx = idx + 1
                                                                                                                                                                                continue 
                                                else:
                                                    if _1103 and 10^18 > -1 / _1103:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if 10^18 * _1103 / 10^18 != _1103:
                                                            revert with 0, 'math-not-safe'
                                                        else:
                                                            if 10^18 * _1103 > -(mem[_1152] / 2) - 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if (10^18 * _1103) + (mem[_1152] / 2) < 10^18 * _1103:
                                                                    revert with 0, 'math-not-safe'
                                                                else:
                                                                    if not mem[_1152]:
                                                                        revert with 'NH{q', 18
                                                                    else:
                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                                                                                gas gas_remaining wei
                                                                               args address(_1009)
                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1361 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 96
                                                                            require mem[_1361] == bool(mem[_1361])
                                                                            _1388 = mem[_1361 + 32]
                                                                            require mem[_1361 + 32] == mem[_1361 + 32]
                                                                            _1414 = mem[_1361 + 64]
                                                                            require mem[_1361 + 64] == bool(mem[_1361 + 64])
                                                                            require ext_code.size(address(_1009))
                                                                            staticcall address(_1009).totalBorrows() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _1441 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _1448 = mem[_1441]
                                                                                require mem[_1441] == mem[_1441]
                                                                                _1474 = mem[64]
                                                                                mem[64] = mem[64] + 480
                                                                                mem[_1474] = (10^18 * _1103) + (_1154 / 2) / _1154
                                                                                mem[_1474 + 32] = _1103
                                                                                require ext_code.size(address(_1009))
                                                                                staticcall address(_1009).exchangeRateStored() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1481 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1481] == mem[_1481]
                                                                                    mem[_1474 + 64] = mem[_1481]
                                                                                    mem[mem[64] + 4] = arg1
                                                                                    require ext_code.size(address(_1009))
                                                                                    staticcall address(_1009).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg1)
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _1539 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_1539] == mem[_1539]
                                                                                        mem[_1474 + 96] = mem[_1539]
                                                                                        mem[mem[64] + 4] = arg1
                                                                                        require ext_code.size(address(_1009))
                                                                                        staticcall address(_1009).borrowBalanceStored(address arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg1)
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1570 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_1570] == mem[_1570]
                                                                                            mem[_1474 + 128] = mem[_1570]
                                                                                            mem[_1474 + 160] = _1448
                                                                                            require ext_code.size(address(_1009))
                                                                                            staticcall address(_1009).getCash() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _1592 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _1594 = mem[_1592]
                                                                                                require mem[_1592] == mem[_1592]
                                                                                                if _1448 > -mem[_1592] - 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if _1448 + mem[_1592] < _1448:
                                                                                                        revert with 0, 'math-not-safe'
                                                                                                    else:
                                                                                                        require ext_code.size(address(_1009))
                                                                                                        staticcall address(_1009).totalReserves() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1619 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_1619] == mem[_1619]
                                                                                                            if _1448 + _1594 < mem[_1619]:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if -mem[_1619] <= 0:
                                                                                                                    if _1448 + _1594 < mem[_1619]:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        mem[_1474 + 192] = _1448 + _1594 - mem[_1619]
                                                                                                                        if idx >= mem[96]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            _1674 = mem[(32 * idx) + 128]
                                                                                                                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args address(_1674)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1691 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_1691] == mem[_1691]
                                                                                                                                mem[_1474 + 224] = mem[_1691]
                                                                                                                                require ext_code.size(address(_1009))
                                                                                                                                staticcall address(_1009).0xd3bd2c72 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _1716 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_1716] == mem[_1716]
                                                                                                                                    mem[_1474 + 256] = mem[_1716]
                                                                                                                                    require ext_code.size(address(_1009))
                                                                                                                                    staticcall address(_1009).0xcd91801c with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _1741 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_1741] == mem[_1741]
                                                                                                                                        mem[_1474 + 288] = mem[_1741]
                                                                                                                                        mem[_1474 + 320] = _1388
                                                                                                                                        if idx >= mem[96]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            _1762 = mem[(32 * idx) + 128]
                                                                                                                                            mem[mem[64] + 4] = 0
                                                                                                                                            mem[mem[64] + 36] = address(_1762)
                                                                                                                                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                   args 0, address(_1762)
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _1784 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_1784] == mem[_1784]
                                                                                                                                                mem[_1474 + 352] = mem[_1784]
                                                                                                                                                if idx >= mem[96]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    _1809 = mem[(32 * idx) + 128]
                                                                                                                                                    mem[mem[64] + 4] = 1
                                                                                                                                                    mem[mem[64] + 36] = address(_1809)
                                                                                                                                                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args 1, address(_1809)
                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        _1853 = mem[64]
                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        require mem[_1853] == mem[_1853]
                                                                                                                                                        mem[_1474 + 384] = mem[_1853]
                                                                                                                                                        mem[_1474 + 416] = bool(_1414)
                                                                                                                                                        if idx >= mem[96]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            _1884 = mem[(32 * idx) + 128]
                                                                                                                                                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                   args address(_1884)
                                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                            else:
                                                                                                                                                                _1909 = mem[64]
                                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                require mem[_1909] == bool(mem[_1909])
                                                                                                                                                                mem[_1474 + 448] = bool(mem[_1909])
                                                                                                                                                                if idx >= mem[floor32(arg2.length) + 225]:
                                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                                else:
                                                                                                                                                                    mem[(32 * idx) + floor32(arg2.length) + 257] = _1474
                                                                                                                                                                    if idx == -1:
                                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                                    else:
                                                                                                                                                                        idx = idx + 1
                                                                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    mem[_1474 + 192] = 0
                                                                                                                    if idx >= mem[96]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        _1659 = mem[(32 * idx) + 128]
                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args address(_1659)
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1678 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_1678] == mem[_1678]
                                                                                                                            mem[_1474 + 224] = mem[_1678]
                                                                                                                            require ext_code.size(address(_1009))
                                                                                                                            staticcall address(_1009).0xd3bd2c72 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1703 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_1703] == mem[_1703]
                                                                                                                                mem[_1474 + 256] = mem[_1703]
                                                                                                                                require ext_code.size(address(_1009))
                                                                                                                                staticcall address(_1009).0xcd91801c with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _1728 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_1728] == mem[_1728]
                                                                                                                                    mem[_1474 + 288] = mem[_1728]
                                                                                                                                    mem[_1474 + 320] = _1388
                                                                                                                                    if idx >= mem[96]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        _1751 = mem[(32 * idx) + 128]
                                                                                                                                        mem[mem[64] + 4] = 0
                                                                                                                                        mem[mem[64] + 36] = address(_1751)
                                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args 0, address(_1751)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _1775 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_1775] == mem[_1775]
                                                                                                                                            mem[_1474 + 352] = mem[_1775]
                                                                                                                                            if idx >= mem[96]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                _1793 = mem[(32 * idx) + 128]
                                                                                                                                                mem[mem[64] + 4] = 1
                                                                                                                                                mem[mem[64] + 36] = address(_1793)
                                                                                                                                                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args 1, address(_1793)
                                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    _1831 = mem[64]
                                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    require mem[_1831] == mem[_1831]
                                                                                                                                                    mem[_1474 + 384] = mem[_1831]
                                                                                                                                                    mem[_1474 + 416] = bool(_1414)
                                                                                                                                                    if idx >= mem[96]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        _1862 = mem[(32 * idx) + 128]
                                                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                                                                                                                                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                                                                                                                                                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args address(_1862)
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _1890 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_1890] == bool(mem[_1890])
                                                                                                                                                            mem[_1474 + 448] = bool(mem[_1890])
                                                                                                                                                            if idx >= mem[floor32(arg2.length) + 225]:
                                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                                            else:
                                                                                                                                                                mem[(32 * idx) + floor32(arg2.length) + 257] = _1474
                                                                                                                                                                if idx == -1:
                                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                                else:
                                                                                                                                                                    idx = idx + 1
                                                                                                                                                                    continue 
        _1012 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1012] = 0
        mem[_1012 + 32] = 0
        mem[_1012 + 64] = 0
        mem[_1012 + 96] = 0
        _1016 = mem[64]
        mem[64] = mem[64] + 128
        mem[mem[64] + 36] = arg1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address arg2) with:
             gas gas_remaining wei
            args 1, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(arg1) < eth.balance(arg1):
            revert with 'NH{q', 17
        mem[_1016] = 0
        mem[mem[64] + 4] = arg1
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1083 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1088 = mem[_1083]
        require mem[_1083] == mem[_1083]
        mem[mem[64] + 36] = arg1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address arg2) with:
             gas gas_remaining wei
            args 0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = arg1
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1132 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1132] == mem[_1132]
        if mem[_1132] < _1088:
            revert with 'NH{q', 17
        mem[_1016 + 32] = mem[_1132] - _1088
        mem[mem[64] + 4] = arg1
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.delegates(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1173 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1173] == mem[_1173 + 12 len 20]
        mem[_1016 + 64] = mem[_1173 + 12 len 20]
        mem[mem[64] + 4] = arg1
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.getCurrentVotes(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1204] == mem[_1204 + 20 len 12]
        mem[_1016 + 96] = mem[_1204 + 20 len 12]
        _1232 = mem[64]
        mem[mem[64]] = 160
        _1238 = mem[floor32(arg2.length) + 225]
        mem[mem[64] + 160] = mem[floor32(arg2.length) + 225]
        idx = 0
        s = floor32(arg2.length) + 257
        t = mem[64] + 192
        while idx < _1238:
            _1800 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1800 + 32]
            mem[t + 64] = mem[_1800 + 64]
            mem[t + 96] = mem[_1800 + 96]
            mem[t + 128] = mem[_1800 + 128]
            mem[t + 160] = mem[_1800 + 160]
            mem[t + 192] = mem[_1800 + 192]
            mem[t + 224] = mem[_1800 + 224]
            mem[t + 256] = mem[_1800 + 256]
            mem[t + 288] = mem[_1800 + 288]
            mem[t + 320] = mem[_1800 + 320]
            mem[t + 352] = mem[_1800 + 352]
            mem[t + 384] = mem[_1800 + 384]
            mem[t + 416] = bool(mem[_1800 + 416])
            mem[t + 448] = bool(mem[_1800 + 448])
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        mem[_1232 + 32] = mem[_1016]
        mem[_1232 + 64] = mem[_1016 + 32]
        mem[_1232 + 96] = mem[_1016 + 76 len 20]
        mem[_1232 + 128] = mem[_1016 + 116 len 12]
        return memory
          from mem[64]
           len _1232 + (480 * _1238) + -mem[64] + 192
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
    _1799 = mem[96]
    idx = 0
    while idx < _1799:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1811 = mem[(32 * idx) + 128]
        if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1843 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1851 = mem[_1843]
            require mem[_1843] == mem[_1843 + 12 len 20]
            mem[mem[64] + 4] = address(_1811)
            require ext_code.size(address(_1851))
            staticcall address(_1851).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1811)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1904 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1910 = mem[_1904]
            require mem[_1904] == mem[_1904]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1937 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1942 = mem[_1937]
            require mem[_1937] == mem[_1937 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1942))
            staticcall address(_1942).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1967 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1969 = mem[_1967]
            require mem[_1967] == mem[_1967]
            if _1910 and 10^18 > -1 / _1910:
                revert with 'NH{q', 17
            if 10^18 * _1910 / 10^18 != _1910:
                revert with 0, 'math-not-safe'
            if 10^18 * _1910 > -(mem[_1967] / 2) - 1:
                revert with 'NH{q', 17
            if (10^18 * _1910) + (mem[_1967] / 2) < 10^18 * _1910:
                revert with 0, 'math-not-safe'
            if not mem[_1967]:
                revert with 'NH{q', 18
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_1811)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2026 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_2026] == bool(mem[_2026])
            _2036 = mem[_2026 + 32]
            require mem[_2026 + 32] == mem[_2026 + 32]
            _2043 = mem[_2026 + 64]
            require mem[_2026 + 64] == bool(mem[_2026 + 64])
            require ext_code.size(address(_1811))
            staticcall address(_1811).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2053 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2056 = mem[_2053]
            require mem[_2053] == mem[_2053]
            _2064 = mem[64]
            mem[64] = mem[64] + 480
            mem[_2064] = (10^18 * _1910) + (_1969 / 2) / _1969
            mem[_2064 + 32] = _1910
            require ext_code.size(address(_1811))
            staticcall address(_1811).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2069 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2069] == mem[_2069]
            mem[_2064 + 64] = mem[_2069]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1811))
            staticcall address(_1811).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2085 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2085] == mem[_2085]
            mem[_2064 + 96] = mem[_2085]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1811))
            staticcall address(_1811).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2104] == mem[_2104]
            mem[_2064 + 128] = mem[_2104]
            mem[_2064 + 160] = _2056
            require ext_code.size(address(_1811))
            staticcall address(_1811).getCash() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2117 = mem[_2114]
            require mem[_2114] == mem[_2114]
            if _2056 > -mem[_2114] - 1:
                revert with 'NH{q', 17
            if _2056 + mem[_2114] < _2056:
                revert with 0, 'math-not-safe'
            require ext_code.size(address(_1811))
            staticcall address(_1811).totalReserves() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2133 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2133] == mem[_2133]
            if _2056 + _2117 < mem[_2133]:
                revert with 'NH{q', 17
            if -mem[_2133] > 0:
                mem[_2064 + 192] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2152 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                        gas gas_remaining wei
                       args address(_2152)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2171 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2171] == mem[_2171]
                mem[_2064 + 224] = mem[_2171]
                require ext_code.size(address(_1811))
                staticcall address(_1811).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2183] == mem[_2183]
                mem[_2064 + 256] = mem[_2183]
                require ext_code.size(address(_1811))
                staticcall address(_1811).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2203] == mem[_2203]
                mem[_2064 + 288] = mem[_2203]
                mem[_2064 + 320] = _2036
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2221 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_2221)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0, address(_2221)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2251 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2251] == mem[_2251]
                mem[_2064 + 352] = mem[_2251]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2272 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = address(_2272)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 1, address(_2272)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2298 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2298] == mem[_2298]
                mem[_2064 + 384] = mem[_2298]
                mem[_2064 + 416] = bool(_2043)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2315 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                        gas gas_remaining wei
                       args address(_2315)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2340 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2340] == bool(mem[_2340])
                mem[_2064 + 448] = bool(mem[_2340])
            else:
                if _2056 + _2117 < mem[_2133]:
                    revert with 'NH{q', 17
                mem[_2064 + 192] = _2056 + _2117 - mem[_2133]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2162 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                        gas gas_remaining wei
                       args address(_2162)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2178 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2178] == mem[_2178]
                mem[_2064 + 224] = mem[_2178]
                require ext_code.size(address(_1811))
                staticcall address(_1811).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2192 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2192] == mem[_2192]
                mem[_2064 + 256] = mem[_2192]
                require ext_code.size(address(_1811))
                staticcall address(_1811).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2215 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2215] == mem[_2215]
                mem[_2064 + 288] = mem[_2215]
                mem[_2064 + 320] = _2036
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2235 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_2235)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0, address(_2235)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2266] == mem[_2266]
                mem[_2064 + 352] = mem[_2266]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2284 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = address(_2284)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 1, address(_2284)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2309 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2309] == mem[_2309]
                mem[_2064 + 384] = mem[_2309]
                mem[_2064 + 416] = bool(_2043)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2327 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                        gas gas_remaining wei
                       args address(_2327)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2355] == bool(mem[_2355])
                mem[_2064 + 448] = bool(mem[_2355])
            if idx >= mem[floor32(arg2.length) + 225]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg2.length) + 257] = _2064
        else:
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1828 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1828] == mem[_1828 + 12 len 20]
            require ext_code.size(mem[_1828 + 12 len 20])
            staticcall mem[_1828 + 12 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1868 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1879 = mem[_1868]
            require mem[_1868] == mem[_1868]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1911 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1919 = mem[_1911]
            require mem[_1911] == mem[_1911 + 12 len 20]
            mem[mem[64] + 4] = address(_1811)
            require ext_code.size(address(_1919))
            staticcall address(_1919).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1811)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1951 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1953 = mem[_1951]
            require mem[_1951] == mem[_1951]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1968 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1971 = mem[_1968]
            require mem[_1968] == mem[_1968 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1971))
            staticcall address(_1971).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1988 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1991 = mem[_1988]
            require mem[_1988] == mem[_1988]
            if 18 < _1879:
                revert with 'NH{q', 17
            if not -_1879 + 18:
                if _1953 and 10^18 > -1 / _1953:
                    revert with 'NH{q', 17
                if 10^18 * _1953 / 10^18 != _1953:
                    revert with 0, 'math-not-safe'
                if 10^18 * _1953 > -(mem[_1988] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _1953) + (mem[_1988] / 2) < 10^18 * _1953:
                    revert with 0, 'math-not-safe'
                if not mem[_1988]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1811)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2055 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_2055] == bool(mem[_2055])
                _2067 = mem[_2055 + 32]
                require mem[_2055 + 32] == mem[_2055 + 32]
                _2073 = mem[_2055 + 64]
                require mem[_2055 + 64] == bool(mem[_2055 + 64])
                require ext_code.size(address(_1811))
                staticcall address(_1811).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2080 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2081 = mem[_2080]
                require mem[_2080] == mem[_2080]
                _2089 = mem[64]
                mem[64] = mem[64] + 480
                mem[_2089] = (10^18 * _1953) + (_1991 / 2) / _1991
                mem[_2089 + 32] = _1953
                require ext_code.size(address(_1811))
                staticcall address(_1811).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2092 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2092] == mem[_2092]
                mem[_2089 + 64] = mem[_2092]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1811))
                staticcall address(_1811).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2109 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2109] == mem[_2109]
                mem[_2089 + 96] = mem[_2109]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1811))
                staticcall address(_1811).borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2125] == mem[_2125]
                mem[_2089 + 128] = mem[_2125]
                mem[_2089 + 160] = _2081
                require ext_code.size(address(_1811))
                staticcall address(_1811).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2141 = mem[_2139]
                require mem[_2139] == mem[_2139]
                if _2081 > -mem[_2139] - 1:
                    revert with 'NH{q', 17
                if _2081 + mem[_2139] < _2081:
                    revert with 0, 'math-not-safe'
                require ext_code.size(address(_1811))
                staticcall address(_1811).totalReserves() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2157] == mem[_2157]
                if _2081 + _2141 < mem[_2157]:
                    revert with 'NH{q', 17
                if -mem[_2157] > 0:
                    mem[_2089 + 192] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2187 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                            gas gas_remaining wei
                           args address(_2187)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2205 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2205] == mem[_2205]
                    mem[_2089 + 224] = mem[_2205]
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2230 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2230] == mem[_2230]
                    mem[_2089 + 256] = mem[_2230]
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2255] == mem[_2255]
                    mem[_2089 + 288] = mem[_2255]
                    mem[_2089 + 320] = _2067
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2278 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_2278)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0, address(_2278)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2302] == mem[_2302]
                    mem[_2089 + 352] = mem[_2302]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2320 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_2320)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 1, address(_2320)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2350] == mem[_2350]
                    mem[_2089 + 384] = mem[_2350]
                    mem[_2089 + 416] = bool(_2073)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2375 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                            gas gas_remaining wei
                           args address(_2375)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2397 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2397] == bool(mem[_2397])
                    mem[_2089 + 448] = bool(mem[_2397])
                else:
                    if _2081 + _2141 < mem[_2157]:
                        revert with 'NH{q', 17
                    mem[_2089 + 192] = _2081 + _2141 - mem[_2157]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2201 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                            gas gas_remaining wei
                           args address(_2201)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2218 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2218] == mem[_2218]
                    mem[_2089 + 224] = mem[_2218]
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2243 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2243] == mem[_2243]
                    mem[_2089 + 256] = mem[_2243]
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2268] == mem[_2268]
                    mem[_2089 + 288] = mem[_2268]
                    mem[_2089 + 320] = _2067
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2289 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_2289)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0, address(_2289)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2311] == mem[_2311]
                    mem[_2089 + 352] = mem[_2311]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2334 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_2334)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 1, address(_2334)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2366 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2366] == mem[_2366]
                    mem[_2089 + 384] = mem[_2366]
                    mem[_2089 + 416] = bool(_2073)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2391 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                            gas gas_remaining wei
                           args address(_2391)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2412] == bool(mem[_2412])
                    mem[_2089 + 448] = bool(mem[_2412])
                if idx >= mem[floor32(arg2.length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 257] = _2089
            else:
                if bool(bool(-_1879 + 18 < 78)) or bool(bool(-_1879 + 18 < 32)):
                    if 10^(-_1879 + 18) > -1:
                        revert with 'NH{q', 17
                    if not 10^(-_1879 + 18):
                        revert with 'NH{q', 18
                    if _1953 / 10^(-_1879 + 18) and 10^18 > -1 / _1953 / 10^(-_1879 + 18):
                        revert with 'NH{q', 17
                    if 10^18 * _1953 / 10^(-_1879 + 18) / 10^18 != _1953 / 10^(-_1879 + 18):
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1953 / 10^(-_1879 + 18) > -(mem[_1988] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1953 / 10^(-_1879 + 18)) + (mem[_1988] / 2) < 10^18 * _1953 / 10^(-_1879 + 18):
                        revert with 0, 'math-not-safe'
                    if not mem[_1988]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                            gas gas_remaining wei
                           args address(_1811)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2060 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2060] == bool(mem[_2060])
                    _2072 = mem[_2060 + 32]
                    require mem[_2060 + 32] == mem[_2060 + 32]
                    _2076 = mem[_2060 + 64]
                    require mem[_2060 + 64] == bool(mem[_2060 + 64])
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2086 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2088 = mem[_2086]
                    require mem[_2086] == mem[_2086]
                    _2096 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_2096] = (10^18 * _1953 / 10^(-_1879 + 18)) + (_1991 / 2) / _1991
                    mem[_2096 + 32] = _1953 / 10^(-_1879 + 18)
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2099 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2099] == mem[_2099]
                    mem[_2096 + 64] = mem[_2099]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2115] == mem[_2115]
                    mem[_2096 + 96] = mem[_2115]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2132 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2132] == mem[_2132]
                    mem[_2096 + 128] = mem[_2132]
                    mem[_2096 + 160] = _2088
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2146 = mem[_2145]
                    require mem[_2145] == mem[_2145]
                    if _2088 > -mem[_2145] - 1:
                        revert with 'NH{q', 17
                    if _2088 + mem[_2145] < _2088:
                        revert with 0, 'math-not-safe'
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).totalReserves() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2172 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2172] == mem[_2172]
                    if _2088 + _2146 < mem[_2172]:
                        revert with 'NH{q', 17
                    if -mem[_2172] > 0:
                        mem[_2096 + 192] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2198 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2198)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2217 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2217] == mem[_2217]
                        mem[_2096 + 224] = mem[_2217]
                        require ext_code.size(address(_1811))
                        staticcall address(_1811).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2242] == mem[_2242]
                        mem[_2096 + 256] = mem[_2242]
                        require ext_code.size(address(_1811))
                        staticcall address(_1811).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2267] == mem[_2267]
                        mem[_2096 + 288] = mem[_2267]
                        mem[_2096 + 320] = _2072
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2286 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2286)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2286)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2310 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2310] == mem[_2310]
                        mem[_2096 + 352] = mem[_2310]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2329 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2329)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2329)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2364 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2364] == mem[_2364]
                        mem[_2096 + 384] = mem[_2364]
                        mem[_2096 + 416] = bool(_2076)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2387 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2387)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2410 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2410] == bool(mem[_2410])
                        mem[_2096 + 448] = bool(mem[_2410])
                    else:
                        if _2088 + _2146 < mem[_2172]:
                            revert with 'NH{q', 17
                        mem[_2096 + 192] = _2088 + _2146 - mem[_2172]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2211 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2211)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2231 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2231] == mem[_2231]
                        mem[_2096 + 224] = mem[_2231]
                        require ext_code.size(address(_1811))
                        staticcall address(_1811).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2256 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2256] == mem[_2256]
                        mem[_2096 + 256] = mem[_2256]
                        require ext_code.size(address(_1811))
                        staticcall address(_1811).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2280 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2280] == mem[_2280]
                        mem[_2096 + 288] = mem[_2280]
                        mem[_2096 + 320] = _2072
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2299 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2299)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2299)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2322] == mem[_2322]
                        mem[_2096 + 352] = mem[_2322]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2346 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2346)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2346)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2378 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2378] == mem[_2378]
                        mem[_2096 + 384] = mem[_2378]
                        mem[_2096 + 416] = bool(_2076)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2401 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2401)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2422] == bool(mem[_2422])
                        mem[_2096 + 448] = bool(mem[_2422])
                    if idx >= mem[floor32(arg2.length) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 257] = _2096
                else:
                    t = 10
                    u = 1
                    s = -_1879 + 18
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        _1799 = mem[96]
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
                    if _1953 / u * t and 10^18 > -1 / _1953 / u * t:
                        revert with 'NH{q', 17
                    if 10^18 * _1953 / u * t / 10^18 != _1953 / u * t:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1953 / u * t > -(mem[_1988] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1953 / u * t) + (mem[_1988] / 2) < 10^18 * _1953 / u * t:
                        revert with 0, 'math-not-safe'
                    if not mem[_1988]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                            gas gas_remaining wei
                           args address(_1811)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2124 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2124] == bool(mem[_2124])
                    _2135 = mem[_2124 + 32]
                    require mem[_2124 + 32] == mem[_2124 + 32]
                    _2144 = mem[_2124 + 64]
                    require mem[_2124 + 64] == bool(mem[_2124 + 64])
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2149 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2151 = mem[_2149]
                    require mem[_2149] == mem[_2149]
                    _2159 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_2159] = (10^18 * _1953 / u * t) + (_1991 / 2) / _1991
                    mem[_2159 + 32] = _1953 / u * t
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2167 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2167] == mem[_2167]
                    mem[_2159 + 64] = mem[_2167]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2191 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2191] == mem[_2191]
                    mem[_2159 + 96] = mem[_2191]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2229 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2229] == mem[_2229]
                    mem[_2159 + 128] = mem[_2229]
                    mem[_2159 + 160] = _2151
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2258 = mem[_2254]
                    require mem[_2254] == mem[_2254]
                    if _2151 > -mem[_2254] - 1:
                        revert with 'NH{q', 17
                    if _2151 + mem[_2254] < _2151:
                        revert with 0, 'math-not-safe'
                    require ext_code.size(address(_1811))
                    staticcall address(_1811).totalReserves() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2295 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2295] == mem[_2295]
                    if _2151 + _2258 < mem[_2295]:
                        revert with 'NH{q', 17
                    if -mem[_2295] > 0:
                        mem[_2159 + 192] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2338 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2338)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2358 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2358] == mem[_2358]
                        mem[_2159 + 224] = mem[_2358]
                        require ext_code.size(address(_1811))
                        staticcall address(_1811).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2384 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2384] == mem[_2384]
                        mem[_2159 + 256] = mem[_2384]
                        require ext_code.size(address(_1811))
                        staticcall address(_1811).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2411 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2411] == mem[_2411]
                        mem[_2159 + 288] = mem[_2411]
                        mem[_2159 + 320] = _2135
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2430 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2430)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2430)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2440 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2440] == mem[_2440]
                        mem[_2159 + 352] = mem[_2440]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2446 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2446)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2446)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2452 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2452] == mem[_2452]
                        mem[_2159 + 384] = mem[_2452]
                        mem[_2159 + 416] = bool(_2144)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2458 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2458)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2464 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2464] == bool(mem[_2464])
                        mem[_2159 + 448] = bool(mem[_2464])
                    else:
                        if _2151 + _2258 < mem[_2295]:
                            revert with 'NH{q', 17
                        mem[_2159 + 192] = _2151 + _2258 - mem[_2295]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2351 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2351)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2373 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2373] == mem[_2373]
                        mem[_2159 + 224] = mem[_2373]
                        require ext_code.size(address(_1811))
                        staticcall address(_1811).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2399] == mem[_2399]
                        mem[_2159 + 256] = mem[_2399]
                        require ext_code.size(address(_1811))
                        staticcall address(_1811).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2423 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2423] == mem[_2423]
                        mem[_2159 + 288] = mem[_2423]
                        mem[_2159 + 320] = _2135
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2436 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2436)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2436)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2443 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2443] == mem[_2443]
                        mem[_2159 + 352] = mem[_2443]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2449 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2449)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2449)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2455 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2455] == mem[_2455]
                        mem[_2159 + 384] = mem[_2455]
                        mem[_2159 + 416] = bool(_2144)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2461 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2461)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2467 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2467] == bool(mem[_2467])
                        mem[_2159 + 448] = bool(mem[_2467])
                    if idx >= mem[floor32(arg2.length) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 257] = _2159
        if idx == -1:
            revert with 'NH{q', 17
        _1799 = mem[96]
        idx = idx + 1
        continue 
    _1817 = mem[64]
    mem[64] = mem[64] + 128
    mem[_1817] = 0
    mem[_1817 + 32] = 0
    mem[_1817 + 64] = 0
    mem[_1817 + 96] = 0
    _1825 = mem[64]
    mem[64] = mem[64] + 128
    mem[mem[64] + 36] = arg1
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address arg2) with:
         gas gas_remaining wei
        args 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(arg1) < eth.balance(arg1):
        revert with 'NH{q', 17
    mem[_1825] = 0
    mem[mem[64] + 4] = arg1
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1936 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1941 = mem[_1936]
    require mem[_1936] == mem[_1936]
    mem[mem[64] + 36] = arg1
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    call 0x486af39519b4dc9a7fccd318217352830e8ad9b4.claimReward(uint8 arg1, address arg2) with:
         gas gas_remaining wei
        args 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = arg1
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1975 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1975] == mem[_1975]
    if mem[_1975] < _1941:
        revert with 'NH{q', 17
    mem[_1825 + 32] = mem[_1975] - _1941
    mem[mem[64] + 4] = arg1
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.delegates(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1999 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1999] == mem[_1999 + 12 len 20]
    mem[_1825 + 64] = mem[_1999 + 12 len 20]
    mem[mem[64] + 4] = arg1
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.getCurrentVotes(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2008 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2008] == mem[_2008 + 20 len 12]
    mem[_1825 + 96] = mem[_2008 + 20 len 12]
    _2012 = mem[64]
    mem[mem[64]] = 160
    _2013 = mem[floor32(arg2.length) + 225]
    mem[mem[64] + 160] = mem[floor32(arg2.length) + 225]
    idx = 0
    s = floor32(arg2.length) + 257
    t = mem[64] + 192
    while idx < _2013:
        _2326 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_2326 + 32]
        mem[t + 64] = mem[_2326 + 64]
        mem[t + 96] = mem[_2326 + 96]
        mem[t + 128] = mem[_2326 + 128]
        mem[t + 160] = mem[_2326 + 160]
        mem[t + 192] = mem[_2326 + 192]
        mem[t + 224] = mem[_2326 + 224]
        mem[t + 256] = mem[_2326 + 256]
        mem[t + 288] = mem[_2326 + 288]
        mem[t + 320] = mem[_2326 + 320]
        mem[t + 352] = mem[_2326 + 352]
        mem[t + 384] = mem[_2326 + 384]
        mem[t + 416] = bool(mem[_2326 + 416])
        mem[t + 448] = bool(mem[_2326 + 448])
        idx = idx + 1
        s = s + 32
        t = t + 480
        continue 
    mem[_2012 + 32] = mem[_1825]
    mem[_2012 + 64] = mem[_1825 + 32]
    mem[_2012 + 96] = mem[_1825 + 76 len 20]
    mem[_2012 + 128] = mem[_1825 + 116 len 12]
    return memory
      from mem[64]
       len _2012 + (480 * _2013) + -mem[64] + 192
}



}
