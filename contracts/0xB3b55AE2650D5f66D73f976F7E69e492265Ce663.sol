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
    staticcall arg2.rewardAccrued(uint8 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.rewardAccrued(uint8 arg1, address arg2) with:
            gas gas_remaining wei
           args 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg3)
    staticcall arg3.delegates(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[288] = ext_call.return_data[12 len 20]
    require ext_code.size(arg3)
    staticcall arg3.getCurrentVotes(address arg1) with:
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
    staticcall address(ext_call.return_data[0]).decimals() with:
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
                staticcall address(_916).balanceOf(address arg1) with:
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
                staticcall mem[_929 + 12 len 20].decimals() with:
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
                    staticcall address(_916).balanceOf(address arg1) with:
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
                        staticcall address(_916).balanceOf(address arg1) with:
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
                        staticcall address(_916).balanceOf(address arg1) with:
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
            staticcall address(_1698).balanceOf(address arg1) with:
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
            staticcall mem[_1710 + 12 len 20].decimals() with:
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
                staticcall address(_1698).balanceOf(address arg1) with:
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
                    staticcall address(_1698).balanceOf(address arg1) with:
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
                    staticcall address(_1698).balanceOf(address arg1) with:
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
            _1039 = mem[(32 * idx) + 128]
            if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1062 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1066 = mem[_1062]
                require mem[_1062] == mem[_1062 + 12 len 20]
                mem[mem[64] + 4] = address(_1039)
                require ext_code.size(address(_1066))
                staticcall address(_1066).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_1039)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1106 = mem[_1101]
                require mem[_1101] == mem[_1101]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1134 = mem[_1129]
                require mem[_1129] == mem[_1129 + 12 len 20]
                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                require ext_code.size(address(_1134))
                staticcall address(_1134).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1169 = mem[_1166]
                require mem[_1166] == mem[_1166]
                if _1106 and 10^18 > -1 / _1106:
                    revert with 'NH{q', 17
                if 10^18 * _1106 / 10^18 != _1106:
                    revert with 0, 'math-not-safe'
                if 10^18 * _1106 > -(mem[_1166] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _1106) + (mem[_1166] / 2) < 10^18 * _1106:
                    revert with 0, 'math-not-safe'
                if not mem[_1166]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1039)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1340 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1340] == bool(mem[_1340])
                _1362 = mem[_1340 + 32]
                require mem[_1340 + 32] == mem[_1340 + 32]
                _1383 = mem[_1340 + 64]
                require mem[_1340 + 64] == bool(mem[_1340 + 64])
                require ext_code.size(address(_1039))
                staticcall address(_1039).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1406 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1411 = mem[_1406]
                require mem[_1406] == mem[_1406]
                _1431 = mem[64]
                mem[64] = mem[64] + 480
                mem[_1431] = (10^18 * _1106) + (_1169 / 2) / _1169
                mem[_1431 + 32] = _1106
                require ext_code.size(address(_1039))
                staticcall address(_1039).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1441 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1441] == mem[_1441]
                mem[_1431 + 64] = mem[_1441]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1039))
                staticcall address(_1039).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1501 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1501] == mem[_1501]
                mem[_1431 + 96] = mem[_1501]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1039))
                staticcall address(_1039).borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1564 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1564] == mem[_1564]
                mem[_1431 + 128] = mem[_1564]
                mem[_1431 + 160] = _1411
                require ext_code.size(address(_1039))
                staticcall address(_1039).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1592 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1597 = mem[_1592]
                require mem[_1592] == mem[_1592]
                if _1411 > -mem[_1592] - 1:
                    revert with 'NH{q', 17
                if _1411 + mem[_1592] < _1411:
                    revert with 0, 'math-not-safe'
                require ext_code.size(address(_1039))
                staticcall address(_1039).totalReserves() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1624 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1624] == mem[_1624]
                if _1411 + _1597 < mem[_1624]:
                    revert with 'NH{q', 17
                if -mem[_1624] > 0:
                    mem[_1431 + 192] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1655 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                            gas gas_remaining wei
                           args address(_1655)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1679 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1679] == mem[_1679]
                    mem[_1431 + 224] = mem[_1679]
                    require ext_code.size(address(_1039))
                    staticcall address(_1039).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1696 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1696] == mem[_1696]
                    mem[_1431 + 256] = mem[_1696]
                    require ext_code.size(address(_1039))
                    staticcall address(_1039).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1717 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1717] == mem[_1717]
                    mem[_1431 + 288] = mem[_1717]
                    mem[_1431 + 320] = _1362
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1735 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1735)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0, address(_1735)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1765 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1765] == mem[_1765]
                    mem[_1431 + 352] = mem[_1765]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1786 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_1786)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 1, address(_1786)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1812 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1812] == mem[_1812]
                    mem[_1431 + 384] = mem[_1812]
                    mem[_1431 + 416] = bool(_1383)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1829 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                            gas gas_remaining wei
                           args address(_1829)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1854 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1854] == bool(mem[_1854])
                    mem[_1431 + 448] = bool(mem[_1854])
                else:
                    if _1411 + _1597 < mem[_1624]:
                        revert with 'NH{q', 17
                    mem[_1431 + 192] = _1411 + _1597 - mem[_1624]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1668 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                            gas gas_remaining wei
                           args address(_1668)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1689] == mem[_1689]
                    mem[_1431 + 224] = mem[_1689]
                    require ext_code.size(address(_1039))
                    staticcall address(_1039).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1706] == mem[_1706]
                    mem[_1431 + 256] = mem[_1706]
                    require ext_code.size(address(_1039))
                    staticcall address(_1039).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1729 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1729] == mem[_1729]
                    mem[_1431 + 288] = mem[_1729]
                    mem[_1431 + 320] = _1362
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1749 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1749)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0, address(_1749)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1780 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1780] == mem[_1780]
                    mem[_1431 + 352] = mem[_1780]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1798 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_1798)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 1, address(_1798)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1823] == mem[_1823]
                    mem[_1431 + 384] = mem[_1823]
                    mem[_1431 + 416] = bool(_1383)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1841 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                            gas gas_remaining wei
                           args address(_1841)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1873] == bool(mem[_1873])
                    mem[_1431 + 448] = bool(mem[_1873])
                if idx >= mem[floor32(arg2.length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 257] = _1431
            else:
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1053 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1053] == mem[_1053 + 12 len 20]
                require ext_code.size(mem[_1053 + 12 len 20])
                staticcall mem[_1053 + 12 len 20].decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1077 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1083 = mem[_1077]
                require mem[_1077] == mem[_1077]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1107 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1115 = mem[_1107]
                require mem[_1107] == mem[_1107 + 12 len 20]
                mem[mem[64] + 4] = address(_1039)
                require ext_code.size(address(_1115))
                staticcall address(_1115).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_1039)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1147 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1150 = mem[_1147]
                require mem[_1147] == mem[_1147]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1172 = mem[_1168]
                require mem[_1168] == mem[_1168 + 12 len 20]
                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                require ext_code.size(address(_1172))
                staticcall address(_1172).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1204 = mem[_1202]
                require mem[_1202] == mem[_1202]
                if 18 < _1083:
                    revert with 'NH{q', 17
                if not -_1083 + 18:
                    if _1150 and 10^18 > -1 / _1150:
                        revert with 'NH{q', 17
                    if 10^18 * _1150 / 10^18 != _1150:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1150 > -(mem[_1202] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1150) + (mem[_1202] / 2) < 10^18 * _1150:
                        revert with 0, 'math-not-safe'
                    if not mem[_1202]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                            gas gas_remaining wei
                           args address(_1039)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1408] == bool(mem[_1408])
                    _1434 = mem[_1408 + 32]
                    require mem[_1408 + 32] == mem[_1408 + 32]
                    _1457 = mem[_1408 + 64]
                    require mem[_1408 + 64] == bool(mem[_1408 + 64])
                    require ext_code.size(address(_1039))
                    staticcall address(_1039).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1489 = mem[_1483]
                    require mem[_1483] == mem[_1483]
                    _1516 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_1516] = (10^18 * _1150) + (_1204 / 2) / _1204
                    mem[_1516 + 32] = _1150
                    require ext_code.size(address(_1039))
                    staticcall address(_1039).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1522 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1522] == mem[_1522]
                    mem[_1516 + 64] = mem[_1522]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1039))
                    staticcall address(_1039).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1580 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1580] == mem[_1580]
                    mem[_1516 + 96] = mem[_1580]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1039))
                    staticcall address(_1039).borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1611] == mem[_1611]
                    mem[_1516 + 128] = mem[_1611]
                    mem[_1516 + 160] = _1489
                    require ext_code.size(address(_1039))
                    staticcall address(_1039).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1635 = mem[_1633]
                    require mem[_1633] == mem[_1633]
                    if _1489 > -mem[_1633] - 1:
                        revert with 'NH{q', 17
                    if _1489 + mem[_1633] < _1489:
                        revert with 0, 'math-not-safe'
                    require ext_code.size(address(_1039))
                    staticcall address(_1039).totalReserves() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1660 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1660] == mem[_1660]
                    if _1489 + _1635 < mem[_1660]:
                        revert with 'NH{q', 17
                    if -mem[_1660] > 0:
                        mem[_1516 + 192] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1700 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_1700)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1719 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1719] == mem[_1719]
                        mem[_1516 + 224] = mem[_1719]
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1744 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1744] == mem[_1744]
                        mem[_1516 + 256] = mem[_1744]
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1769 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1769] == mem[_1769]
                        mem[_1516 + 288] = mem[_1769]
                        mem[_1516 + 320] = _1434
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1792 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_1792)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_1792)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1816 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1816] == mem[_1816]
                        mem[_1516 + 352] = mem[_1816]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1834 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_1834)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_1834)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1866 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1866] == mem[_1866]
                        mem[_1516 + 384] = mem[_1866]
                        mem[_1516 + 416] = bool(_1457)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1893 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_1893)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1920 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1920] == bool(mem[_1920])
                        mem[_1516 + 448] = bool(mem[_1920])
                    else:
                        if _1489 + _1635 < mem[_1660]:
                            revert with 'NH{q', 17
                        mem[_1516 + 192] = _1489 + _1635 - mem[_1660]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1715 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_1715)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1732] == mem[_1732]
                        mem[_1516 + 224] = mem[_1732]
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1757] == mem[_1757]
                        mem[_1516 + 256] = mem[_1757]
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1782 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1782] == mem[_1782]
                        mem[_1516 + 288] = mem[_1782]
                        mem[_1516 + 320] = _1434
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1803 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_1803)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_1803)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1825 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1825] == mem[_1825]
                        mem[_1516 + 352] = mem[_1825]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1849 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_1849)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_1849)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1886] == mem[_1886]
                        mem[_1516 + 384] = mem[_1886]
                        mem[_1516 + 416] = bool(_1457)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1914 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_1914)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1938] == bool(mem[_1938])
                        mem[_1516 + 448] = bool(mem[_1938])
                    if idx >= mem[floor32(arg2.length) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 257] = _1516
                else:
                    if bool(bool(-_1083 + 18 < 78)) or bool(bool(-_1083 + 18 < 32)):
                        if 10^(-_1083 + 18) > -1:
                            revert with 'NH{q', 17
                        if not 10^(-_1083 + 18):
                            revert with 'NH{q', 18
                        if _1150 / 10^(-_1083 + 18) and 10^18 > -1 / _1150 / 10^(-_1083 + 18):
                            revert with 'NH{q', 17
                        if 10^18 * _1150 / 10^(-_1083 + 18) / 10^18 != _1150 / 10^(-_1083 + 18):
                            revert with 0, 'math-not-safe'
                        if 10^18 * _1150 / 10^(-_1083 + 18) > -(mem[_1202] / 2) - 1:
                            revert with 'NH{q', 17
                        if (10^18 * _1150 / 10^(-_1083 + 18)) + (mem[_1202] / 2) < 10^18 * _1150 / 10^(-_1083 + 18):
                            revert with 0, 'math-not-safe'
                        if not mem[_1202]:
                            revert with 'NH{q', 18
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                                gas gas_remaining wei
                               args address(_1039)
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1419 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1419] == bool(mem[_1419])
                        _1451 = mem[_1419 + 32]
                        require mem[_1419 + 32] == mem[_1419 + 32]
                        _1473 = mem[_1419 + 64]
                        require mem[_1419 + 64] == bool(mem[_1419 + 64])
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1502 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1511 = mem[_1502]
                        require mem[_1502] == mem[_1502]
                        _1535 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_1535] = (10^18 * _1150 / 10^(-_1083 + 18)) + (_1204 / 2) / _1204
                        mem[_1535 + 32] = _1150 / 10^(-_1083 + 18)
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1542 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1542] == mem[_1542]
                        mem[_1535 + 64] = mem[_1542]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1593 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1593] == mem[_1593]
                        mem[_1535 + 96] = mem[_1593]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).borrowBalanceStored(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1623 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1623] == mem[_1623]
                        mem[_1535 + 128] = mem[_1623]
                        mem[_1535 + 160] = _1511
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).getCash() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1640 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1642 = mem[_1640]
                        require mem[_1640] == mem[_1640]
                        if _1511 > -mem[_1640] - 1:
                            revert with 'NH{q', 17
                        if _1511 + mem[_1640] < _1511:
                            revert with 0, 'math-not-safe'
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).totalReserves() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1680] == mem[_1680]
                        if _1511 + _1642 < mem[_1680]:
                            revert with 'NH{q', 17
                        if -mem[_1680] > 0:
                            mem[_1535 + 192] = 0
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1712 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1712)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1731 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1731] == mem[_1731]
                            mem[_1535 + 224] = mem[_1731]
                            require ext_code.size(address(_1039))
                            staticcall address(_1039).0xd3bd2c72 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1756 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1756] == mem[_1756]
                            mem[_1535 + 256] = mem[_1756]
                            require ext_code.size(address(_1039))
                            staticcall address(_1039).0xcd91801c with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1781 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1781] == mem[_1781]
                            mem[_1535 + 288] = mem[_1781]
                            mem[_1535 + 320] = _1451
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1800 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = address(_1800)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 0, address(_1800)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1824 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1824] == mem[_1824]
                            mem[_1535 + 352] = mem[_1824]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1843 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = address(_1843)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 1, address(_1843)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1883 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1883] == mem[_1883]
                            mem[_1535 + 384] = mem[_1883]
                            mem[_1535 + 416] = bool(_1473)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1910 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1910)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1934 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1934] == bool(mem[_1934])
                            mem[_1535 + 448] = bool(mem[_1934])
                        else:
                            if _1511 + _1642 < mem[_1680]:
                                revert with 'NH{q', 17
                            mem[_1535 + 192] = _1511 + _1642 - mem[_1680]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1725 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1725)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1745 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1745] == mem[_1745]
                            mem[_1535 + 224] = mem[_1745]
                            require ext_code.size(address(_1039))
                            staticcall address(_1039).0xd3bd2c72 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1770 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1770] == mem[_1770]
                            mem[_1535 + 256] = mem[_1770]
                            require ext_code.size(address(_1039))
                            staticcall address(_1039).0xcd91801c with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1794 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1794] == mem[_1794]
                            mem[_1535 + 288] = mem[_1794]
                            mem[_1535 + 320] = _1451
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1813 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = address(_1813)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 0, address(_1813)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1836 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1836] == mem[_1836]
                            mem[_1535 + 352] = mem[_1836]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1860 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = address(_1860)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 1, address(_1860)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1899 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1899] == mem[_1899]
                            mem[_1535 + 384] = mem[_1899]
                            mem[_1535 + 416] = bool(_1473)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1923 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1923)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1949 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1949] == bool(mem[_1949])
                            mem[_1535 + 448] = bool(mem[_1949])
                        if idx >= mem[floor32(arg2.length) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg2.length) + 257] = _1535
                    else:
                        t = 10
                        u = 1
                        s = -_1083 + 18
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
                        if _1150 / u * t and 10^18 > -1 / _1150 / u * t:
                            revert with 'NH{q', 17
                        if 10^18 * _1150 / u * t / 10^18 != _1150 / u * t:
                            revert with 0, 'math-not-safe'
                        if 10^18 * _1150 / u * t > -(mem[_1202] / 2) - 1:
                            revert with 'NH{q', 17
                        if (10^18 * _1150 / u * t) + (mem[_1202] / 2) < 10^18 * _1150 / u * t:
                            revert with 0, 'math-not-safe'
                        if not mem[_1202]:
                            revert with 'NH{q', 18
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                                gas gas_remaining wei
                               args address(_1039)
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1610 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1610] == bool(mem[_1610])
                        _1626 = mem[_1610 + 32]
                        require mem[_1610 + 32] == mem[_1610 + 32]
                        _1639 = mem[_1610 + 64]
                        require mem[_1610 + 64] == bool(mem[_1610 + 64])
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1648 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1652 = mem[_1648]
                        require mem[_1648] == mem[_1648]
                        _1663 = mem[64]
                        mem[64] = mem[64] + 480
                        mem[_1663] = (10^18 * _1150 / u * t) + (_1204 / 2) / _1204
                        mem[_1663 + 32] = _1150 / u * t
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1674] == mem[_1674]
                        mem[_1663 + 64] = mem[_1674]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1705 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1705] == mem[_1705]
                        mem[_1663 + 96] = mem[_1705]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).borrowBalanceStored(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1743 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1743] == mem[_1743]
                        mem[_1663 + 128] = mem[_1743]
                        mem[_1663 + 160] = _1652
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).getCash() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1768 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1772 = mem[_1768]
                        require mem[_1768] == mem[_1768]
                        if _1652 > -mem[_1768] - 1:
                            revert with 'NH{q', 17
                        if _1652 + mem[_1768] < _1652:
                            revert with 0, 'math-not-safe'
                        require ext_code.size(address(_1039))
                        staticcall address(_1039).totalReserves() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1809 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1809] == mem[_1809]
                        if _1652 + _1772 < mem[_1809]:
                            revert with 'NH{q', 17
                        if -mem[_1809] > 0:
                            mem[_1663 + 192] = 0
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1852 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1852)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1878 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1878] == mem[_1878]
                            mem[_1663 + 224] = mem[_1878]
                            require ext_code.size(address(_1039))
                            staticcall address(_1039).0xd3bd2c72 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1905 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1905] == mem[_1905]
                            mem[_1663 + 256] = mem[_1905]
                            require ext_code.size(address(_1039))
                            staticcall address(_1039).0xcd91801c with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1937 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1937] == mem[_1937]
                            mem[_1663 + 288] = mem[_1937]
                            mem[_1663 + 320] = _1626
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1958 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = address(_1958)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 0, address(_1958)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1974 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1974] == mem[_1974]
                            mem[_1663 + 352] = mem[_1974]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1985 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = address(_1985)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 1, address(_1985)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1999 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1999] == mem[_1999]
                            mem[_1663 + 384] = mem[_1999]
                            mem[_1663 + 416] = bool(_1639)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _2009 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_2009)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2020 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2020] == bool(mem[_2020])
                            mem[_1663 + 448] = bool(mem[_2020])
                        else:
                            if _1652 + _1772 < mem[_1809]:
                                revert with 'NH{q', 17
                            mem[_1663 + 192] = _1652 + _1772 - mem[_1809]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1869 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_1869)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1891 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1891] == mem[_1891]
                            mem[_1663 + 224] = mem[_1891]
                            require ext_code.size(address(_1039))
                            staticcall address(_1039).0xd3bd2c72 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1921 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1921] == mem[_1921]
                            mem[_1663 + 256] = mem[_1921]
                            require ext_code.size(address(_1039))
                            staticcall address(_1039).0xcd91801c with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1950 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1950] == mem[_1950]
                            mem[_1663 + 288] = mem[_1950]
                            mem[_1663 + 320] = _1626
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1968 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = address(_1968)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 0, address(_1968)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1981 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1981] == mem[_1981]
                            mem[_1663 + 352] = mem[_1981]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1996 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = address(_1996)
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args 1, address(_1996)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2006 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2006] == mem[_2006]
                            mem[_1663 + 384] = mem[_2006]
                            mem[_1663 + 416] = bool(_1639)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _2017 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                    gas gas_remaining wei
                                   args address(_2017)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2026 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2026] == bool(mem[_2026])
                            mem[_1663 + 448] = bool(mem[_2026])
                        if idx >= mem[floor32(arg2.length) + 225]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg2.length) + 257] = _1663
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1052 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1052] = 0
        mem[_1052 + 32] = 0
        mem[_1052 + 64] = 0
        mem[_1052 + 96] = 0
        _1054 = mem[64]
        mem[64] = mem[64] + 128
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = arg1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 arg1, address arg2) with:
                gas gas_remaining wei
               args 0, arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1078 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1078] == mem[_1078]
        mem[_1054] = mem[_1078]
        mem[mem[64] + 4] = 1
        mem[mem[64] + 36] = arg1
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 arg1, address arg2) with:
                gas gas_remaining wei
               args 1, arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1121 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1121] == mem[_1121]
        mem[_1054 + 32] = mem[_1121]
        mem[mem[64] + 4] = arg1
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.delegates(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1156 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1156] == mem[_1156 + 12 len 20]
        mem[_1054 + 64] = mem[_1156 + 12 len 20]
        mem[mem[64] + 4] = arg1
        require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
        staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.getCurrentVotes(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1188] == mem[_1188 + 20 len 12]
        mem[_1054 + 96] = mem[_1188 + 20 len 12]
        _1201 = mem[64]
        mem[mem[64]] = 160
        _1203 = mem[floor32(arg2.length) + 225]
        mem[mem[64] + 160] = mem[floor32(arg2.length) + 225]
        idx = 0
        s = floor32(arg2.length) + 257
        t = mem[64] + 192
        while idx < _1203:
            _1430 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1430 + 32]
            mem[t + 64] = mem[_1430 + 64]
            mem[t + 96] = mem[_1430 + 96]
            mem[t + 128] = mem[_1430 + 128]
            mem[t + 160] = mem[_1430 + 160]
            mem[t + 192] = mem[_1430 + 192]
            mem[t + 224] = mem[_1430 + 224]
            mem[t + 256] = mem[_1430 + 256]
            mem[t + 288] = mem[_1430 + 288]
            mem[t + 320] = mem[_1430 + 320]
            mem[t + 352] = mem[_1430 + 352]
            mem[t + 384] = mem[_1430 + 384]
            mem[t + 416] = bool(mem[_1430 + 416])
            mem[t + 448] = bool(mem[_1430 + 448])
            idx = idx + 1
            s = s + 32
            t = t + 480
            continue 
        mem[_1201 + 32] = mem[_1054]
        mem[_1201 + 64] = mem[_1054 + 32]
        mem[_1201 + 96] = mem[_1054 + 76 len 20]
        mem[_1201 + 128] = mem[_1054 + 116 len 12]
        return memory
          from mem[64]
           len _1201 + (480 * _1203) + -mem[64] + 192
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
    _1840 = mem[96]
    idx = 0
    while idx < _1840:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1851 = mem[(32 * idx) + 128]
        if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1877 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1884 = mem[_1877]
            require mem[_1877] == mem[_1877 + 12 len 20]
            mem[mem[64] + 4] = address(_1851)
            require ext_code.size(address(_1884))
            staticcall address(_1884).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1851)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1933 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1939 = mem[_1933]
            require mem[_1933] == mem[_1933]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1963 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1966 = mem[_1963]
            require mem[_1963] == mem[_1963 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1966))
            staticcall address(_1966).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1990 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1992 = mem[_1990]
            require mem[_1990] == mem[_1990]
            if _1939 and 10^18 > -1 / _1939:
                revert with 'NH{q', 17
            if 10^18 * _1939 / 10^18 != _1939:
                revert with 0, 'math-not-safe'
            if 10^18 * _1939 > -(mem[_1990] / 2) - 1:
                revert with 'NH{q', 17
            if (10^18 * _1939) + (mem[_1990] / 2) < 10^18 * _1939:
                revert with 0, 'math-not-safe'
            if not mem[_1990]:
                revert with 'NH{q', 18
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_1851)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2057 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_2057] == bool(mem[_2057])
            _2063 = mem[_2057 + 32]
            require mem[_2057 + 32] == mem[_2057 + 32]
            _2068 = mem[_2057 + 64]
            require mem[_2057 + 64] == bool(mem[_2057 + 64])
            require ext_code.size(address(_1851))
            staticcall address(_1851).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2075 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2078 = mem[_2075]
            require mem[_2075] == mem[_2075]
            _2085 = mem[64]
            mem[64] = mem[64] + 480
            mem[_2085] = (10^18 * _1939) + (_1992 / 2) / _1992
            mem[_2085 + 32] = _1939
            require ext_code.size(address(_1851))
            staticcall address(_1851).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2091 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2091] == mem[_2091]
            mem[_2085 + 64] = mem[_2091]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1851))
            staticcall address(_1851).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2113] == mem[_2113]
            mem[_2085 + 96] = mem[_2113]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1851))
            staticcall address(_1851).borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2137 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2137] == mem[_2137]
            mem[_2085 + 128] = mem[_2137]
            mem[_2085 + 160] = _2078
            require ext_code.size(address(_1851))
            staticcall address(_1851).getCash() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2153 = mem[_2150]
            require mem[_2150] == mem[_2150]
            if _2078 > -mem[_2150] - 1:
                revert with 'NH{q', 17
            if _2078 + mem[_2150] < _2078:
                revert with 0, 'math-not-safe'
            require ext_code.size(address(_1851))
            staticcall address(_1851).totalReserves() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2170] == mem[_2170]
            if _2078 + _2153 < mem[_2170]:
                revert with 'NH{q', 17
            if -mem[_2170] > 0:
                mem[_2085 + 192] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2189 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                        gas gas_remaining wei
                       args address(_2189)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2208] == mem[_2208]
                mem[_2085 + 224] = mem[_2208]
                require ext_code.size(address(_1851))
                staticcall address(_1851).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2220] == mem[_2220]
                mem[_2085 + 256] = mem[_2220]
                require ext_code.size(address(_1851))
                staticcall address(_1851).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2240 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2240] == mem[_2240]
                mem[_2085 + 288] = mem[_2240]
                mem[_2085 + 320] = _2063
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2258 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_2258)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0, address(_2258)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2288 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2288] == mem[_2288]
                mem[_2085 + 352] = mem[_2288]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2309 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = address(_2309)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 1, address(_2309)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2335 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2335] == mem[_2335]
                mem[_2085 + 384] = mem[_2335]
                mem[_2085 + 416] = bool(_2068)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2352 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                        gas gas_remaining wei
                       args address(_2352)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2374] == bool(mem[_2374])
                mem[_2085 + 448] = bool(mem[_2374])
            else:
                if _2078 + _2153 < mem[_2170]:
                    revert with 'NH{q', 17
                mem[_2085 + 192] = _2078 + _2153 - mem[_2170]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2199 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                        gas gas_remaining wei
                       args address(_2199)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2215 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2215] == mem[_2215]
                mem[_2085 + 224] = mem[_2215]
                require ext_code.size(address(_1851))
                staticcall address(_1851).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2229 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2229] == mem[_2229]
                mem[_2085 + 256] = mem[_2229]
                require ext_code.size(address(_1851))
                staticcall address(_1851).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2252] == mem[_2252]
                mem[_2085 + 288] = mem[_2252]
                mem[_2085 + 320] = _2063
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2272 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_2272)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0, address(_2272)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2303] == mem[_2303]
                mem[_2085 + 352] = mem[_2303]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2321 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 1
                mem[mem[64] + 36] = address(_2321)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                        gas gas_remaining wei
                       args 1, address(_2321)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2346 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2346] == mem[_2346]
                mem[_2085 + 384] = mem[_2346]
                mem[_2085 + 416] = bool(_2068)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _2363 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                        gas gas_remaining wei
                       args address(_2363)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2385] == bool(mem[_2385])
                mem[_2085 + 448] = bool(mem[_2385])
            if idx >= mem[floor32(arg2.length) + 225]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg2.length) + 257] = _2085
        else:
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1863 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1863] == mem[_1863 + 12 len 20]
            require ext_code.size(mem[_1863 + 12 len 20])
            staticcall mem[_1863 + 12 len 20].decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1900 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1909 = mem[_1900]
            require mem[_1900] == mem[_1900]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1940 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1946 = mem[_1940]
            require mem[_1940] == mem[_1940 + 12 len 20]
            mem[mem[64] + 4] = address(_1851)
            require ext_code.size(address(_1946))
            staticcall address(_1946).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1851)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1973 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1975 = mem[_1973]
            require mem[_1973] == mem[_1973]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1991 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1995 = mem[_1991]
            require mem[_1991] == mem[_1991 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1995))
            staticcall address(_1995).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2013 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2016 = mem[_2013]
            require mem[_2013] == mem[_2013]
            if 18 < _1909:
                revert with 'NH{q', 17
            if not -_1909 + 18:
                if _1975 and 10^18 > -1 / _1975:
                    revert with 'NH{q', 17
                if 10^18 * _1975 / 10^18 != _1975:
                    revert with 0, 'math-not-safe'
                if 10^18 * _1975 > -(mem[_2013] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _1975) + (mem[_2013] / 2) < 10^18 * _1975:
                    revert with 0, 'math-not-safe'
                if not mem[_2013]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1851)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2077 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_2077] == bool(mem[_2077])
                _2088 = mem[_2077 + 32]
                require mem[_2077 + 32] == mem[_2077 + 32]
                _2096 = mem[_2077 + 64]
                require mem[_2077 + 64] == bool(mem[_2077 + 64])
                require ext_code.size(address(_1851))
                staticcall address(_1851).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2105 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2107 = mem[_2105]
                require mem[_2105] == mem[_2105]
                _2118 = mem[64]
                mem[64] = mem[64] + 480
                mem[_2118] = (10^18 * _1975) + (_2016 / 2) / _2016
                mem[_2118 + 32] = _1975
                require ext_code.size(address(_1851))
                staticcall address(_1851).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2121 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2121] == mem[_2121]
                mem[_2118 + 64] = mem[_2121]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1851))
                staticcall address(_1851).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2143 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2143] == mem[_2143]
                mem[_2118 + 96] = mem[_2143]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1851))
                staticcall address(_1851).borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2162 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2162] == mem[_2162]
                mem[_2118 + 128] = mem[_2162]
                mem[_2118 + 160] = _2107
                require ext_code.size(address(_1851))
                staticcall address(_1851).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2176 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2178 = mem[_2176]
                require mem[_2176] == mem[_2176]
                if _2107 > -mem[_2176] - 1:
                    revert with 'NH{q', 17
                if _2107 + mem[_2176] < _2107:
                    revert with 0, 'math-not-safe'
                require ext_code.size(address(_1851))
                staticcall address(_1851).totalReserves() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2194 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2194] == mem[_2194]
                if _2107 + _2178 < mem[_2194]:
                    revert with 'NH{q', 17
                if -mem[_2194] > 0:
                    mem[_2118 + 192] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2224 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                            gas gas_remaining wei
                           args address(_2224)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2242 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2242] == mem[_2242]
                    mem[_2118 + 224] = mem[_2242]
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2267 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2267] == mem[_2267]
                    mem[_2118 + 256] = mem[_2267]
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2292] == mem[_2292]
                    mem[_2118 + 288] = mem[_2292]
                    mem[_2118 + 320] = _2088
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2315 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_2315)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0, address(_2315)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2339 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2339] == mem[_2339]
                    mem[_2118 + 352] = mem[_2339]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2357 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_2357)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 1, address(_2357)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2382] == mem[_2382]
                    mem[_2118 + 384] = mem[_2382]
                    mem[_2118 + 416] = bool(_2096)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2402 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                            gas gas_remaining wei
                           args address(_2402)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2421 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2421] == bool(mem[_2421])
                    mem[_2118 + 448] = bool(mem[_2421])
                else:
                    if _2107 + _2178 < mem[_2194]:
                        revert with 'NH{q', 17
                    mem[_2118 + 192] = _2107 + _2178 - mem[_2194]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2238 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                            gas gas_remaining wei
                           args address(_2238)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2255] == mem[_2255]
                    mem[_2118 + 224] = mem[_2255]
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2280 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2280] == mem[_2280]
                    mem[_2118 + 256] = mem[_2280]
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2305] == mem[_2305]
                    mem[_2118 + 288] = mem[_2305]
                    mem[_2118 + 320] = _2088
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2326 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_2326)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 0, address(_2326)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2348] == mem[_2348]
                    mem[_2118 + 352] = mem[_2348]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2370 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = address(_2370)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 1, address(_2370)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2395 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2395] == mem[_2395]
                    mem[_2118 + 384] = mem[_2395]
                    mem[_2118 + 416] = bool(_2096)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _2415 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                            gas gas_remaining wei
                           args address(_2415)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2434 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2434] == bool(mem[_2434])
                    mem[_2118 + 448] = bool(mem[_2434])
                if idx >= mem[floor32(arg2.length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 257] = _2118
            else:
                if bool(bool(-_1909 + 18 < 78)) or bool(bool(-_1909 + 18 < 32)):
                    if 10^(-_1909 + 18) > -1:
                        revert with 'NH{q', 17
                    if not 10^(-_1909 + 18):
                        revert with 'NH{q', 18
                    if _1975 / 10^(-_1909 + 18) and 10^18 > -1 / _1975 / 10^(-_1909 + 18):
                        revert with 'NH{q', 17
                    if 10^18 * _1975 / 10^(-_1909 + 18) / 10^18 != _1975 / 10^(-_1909 + 18):
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1975 / 10^(-_1909 + 18) > -(mem[_2013] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1975 / 10^(-_1909 + 18)) + (mem[_2013] / 2) < 10^18 * _1975 / 10^(-_1909 + 18):
                        revert with 0, 'math-not-safe'
                    if not mem[_2013]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                            gas gas_remaining wei
                           args address(_1851)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2081 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2081] == bool(mem[_2081])
                    _2095 = mem[_2081 + 32]
                    require mem[_2081 + 32] == mem[_2081 + 32]
                    _2100 = mem[_2081 + 64]
                    require mem[_2081 + 64] == bool(mem[_2081 + 64])
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2116 = mem[_2114]
                    require mem[_2114] == mem[_2114]
                    _2126 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_2126] = (10^18 * _1975 / 10^(-_1909 + 18)) + (_2016 / 2) / _2016
                    mem[_2126 + 32] = _1975 / 10^(-_1909 + 18)
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2130 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2130] == mem[_2130]
                    mem[_2126 + 64] = mem[_2130]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2151 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2151] == mem[_2151]
                    mem[_2126 + 96] = mem[_2151]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2169 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2169] == mem[_2169]
                    mem[_2126 + 128] = mem[_2169]
                    mem[_2126 + 160] = _2116
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2182 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2183 = mem[_2182]
                    require mem[_2182] == mem[_2182]
                    if _2116 > -mem[_2182] - 1:
                        revert with 'NH{q', 17
                    if _2116 + mem[_2182] < _2116:
                        revert with 0, 'math-not-safe'
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).totalReserves() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2209 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2209] == mem[_2209]
                    if _2116 + _2183 < mem[_2209]:
                        revert with 'NH{q', 17
                    if -mem[_2209] > 0:
                        mem[_2126 + 192] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2235 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2235)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2254] == mem[_2254]
                        mem[_2126 + 224] = mem[_2254]
                        require ext_code.size(address(_1851))
                        staticcall address(_1851).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2279 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2279] == mem[_2279]
                        mem[_2126 + 256] = mem[_2279]
                        require ext_code.size(address(_1851))
                        staticcall address(_1851).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2304] == mem[_2304]
                        mem[_2126 + 288] = mem[_2304]
                        mem[_2126 + 320] = _2095
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2323 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2323)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2323)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2347 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2347] == mem[_2347]
                        mem[_2126 + 352] = mem[_2347]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2365 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2365)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2365)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2393] == mem[_2393]
                        mem[_2126 + 384] = mem[_2393]
                        mem[_2126 + 416] = bool(_2100)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2412 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2412)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2432 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2432] == bool(mem[_2432])
                        mem[_2126 + 448] = bool(mem[_2432])
                    else:
                        if _2116 + _2183 < mem[_2209]:
                            revert with 'NH{q', 17
                        mem[_2126 + 192] = _2116 + _2183 - mem[_2209]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2248 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2248)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2268 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2268] == mem[_2268]
                        mem[_2126 + 224] = mem[_2268]
                        require ext_code.size(address(_1851))
                        staticcall address(_1851).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2293 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2293] == mem[_2293]
                        mem[_2126 + 256] = mem[_2293]
                        require ext_code.size(address(_1851))
                        staticcall address(_1851).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2317 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2317] == mem[_2317]
                        mem[_2126 + 288] = mem[_2317]
                        mem[_2126 + 320] = _2095
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2336 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2336)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2336)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2359 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2359] == mem[_2359]
                        mem[_2126 + 352] = mem[_2359]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2378 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2378)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2378)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2405 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2405] == mem[_2405]
                        mem[_2126 + 384] = mem[_2405]
                        mem[_2126 + 416] = bool(_2100)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2424 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2424)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2442 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2442] == bool(mem[_2442])
                        mem[_2126 + 448] = bool(mem[_2442])
                    if idx >= mem[floor32(arg2.length) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 257] = _2126
                else:
                    t = 10
                    u = 1
                    s = -_1909 + 18
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        _1840 = mem[96]
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
                    if _1975 / u * t and 10^18 > -1 / _1975 / u * t:
                        revert with 'NH{q', 17
                    if 10^18 * _1975 / u * t / 10^18 != _1975 / u * t:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1975 / u * t > -(mem[_2013] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1975 / u * t) + (mem[_2013] / 2) < 10^18 * _1975 / u * t:
                        revert with 0, 'math-not-safe'
                    if not mem[_2013]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address arg1) with:
                            gas gas_remaining wei
                           args address(_1851)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2161 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_2161] == bool(mem[_2161])
                    _2172 = mem[_2161 + 32]
                    require mem[_2161 + 32] == mem[_2161 + 32]
                    _2181 = mem[_2161 + 64]
                    require mem[_2161 + 64] == bool(mem[_2161 + 64])
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2186 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2188 = mem[_2186]
                    require mem[_2186] == mem[_2186]
                    _2196 = mem[64]
                    mem[64] = mem[64] + 480
                    mem[_2196] = (10^18 * _1975 / u * t) + (_2016 / 2) / _2016
                    mem[_2196 + 32] = _1975 / u * t
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2204 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2204] == mem[_2204]
                    mem[_2196 + 64] = mem[_2204]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2228] == mem[_2228]
                    mem[_2196 + 96] = mem[_2228]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2266 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2266] == mem[_2266]
                    mem[_2196 + 128] = mem[_2266]
                    mem[_2196 + 160] = _2188
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2295 = mem[_2291]
                    require mem[_2291] == mem[_2291]
                    if _2188 > -mem[_2291] - 1:
                        revert with 'NH{q', 17
                    if _2188 + mem[_2291] < _2188:
                        revert with 0, 'math-not-safe'
                    require ext_code.size(address(_1851))
                    staticcall address(_1851).totalReserves() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2332] == mem[_2332]
                    if _2188 + _2295 < mem[_2332]:
                        revert with 'NH{q', 17
                    if -mem[_2332] > 0:
                        mem[_2196 + 192] = 0
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2372 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2372)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2388 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2388] == mem[_2388]
                        mem[_2196 + 224] = mem[_2388]
                        require ext_code.size(address(_1851))
                        staticcall address(_1851).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2409 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2409] == mem[_2409]
                        mem[_2196 + 256] = mem[_2409]
                        require ext_code.size(address(_1851))
                        staticcall address(_1851).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2433 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2433] == mem[_2433]
                        mem[_2196 + 288] = mem[_2433]
                        mem[_2196 + 320] = _2172
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2449 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2449)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2449)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2456 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2456] == mem[_2456]
                        mem[_2196 + 352] = mem[_2456]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2462 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2462)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2462)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2468] == mem[_2468]
                        mem[_2196 + 384] = mem[_2468]
                        mem[_2196 + 416] = bool(_2181)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2474 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2474)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2480 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2480] == bool(mem[_2480])
                        mem[_2196 + 448] = bool(mem[_2480])
                    else:
                        if _2188 + _2295 < mem[_2332]:
                            revert with 'NH{q', 17
                        mem[_2196 + 192] = _2188 + _2295 - mem[_2332]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2383 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address arg1) with:
                                gas gas_remaining wei
                               args address(_2383)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2400] == mem[_2400]
                        mem[_2196 + 224] = mem[_2400]
                        require ext_code.size(address(_1851))
                        staticcall address(_1851).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2422] == mem[_2422]
                        mem[_2196 + 256] = mem[_2422]
                        require ext_code.size(address(_1851))
                        staticcall address(_1851).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2443 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2443] == mem[_2443]
                        mem[_2196 + 288] = mem[_2443]
                        mem[_2196 + 320] = _2172
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2453 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_2453)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 0, address(_2453)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2459 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2459] == mem[_2459]
                        mem[_2196 + 352] = mem[_2459]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2465 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 1
                        mem[mem[64] + 36] = address(_2465)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 arg1, address arg2) with:
                                gas gas_remaining wei
                               args 1, address(_2465)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2471] == mem[_2471]
                        mem[_2196 + 384] = mem[_2471]
                        mem[_2196 + 416] = bool(_2181)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _2477 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address arg1) with:
                                gas gas_remaining wei
                               args address(_2477)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2483 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2483] == bool(mem[_2483])
                        mem[_2196 + 448] = bool(mem[_2483])
                    if idx >= mem[floor32(arg2.length) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 257] = _2196
        if idx == -1:
            revert with 'NH{q', 17
        _1840 = mem[96]
        idx = idx + 1
        continue 
    _1862 = mem[64]
    mem[64] = mem[64] + 128
    mem[_1862] = 0
    mem[_1862 + 32] = 0
    mem[_1862 + 64] = 0
    mem[_1862 + 96] = 0
    _1867 = mem[64]
    mem[64] = mem[64] + 128
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = arg1
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1904 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1904] == mem[_1904]
    mem[_1867] = mem[_1904]
    mem[mem[64] + 4] = 1
    mem[mem[64] + 36] = arg1
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardAccrued(uint8 arg1, address arg2) with:
            gas gas_remaining wei
           args 1, arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1957 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1957] == mem[_1957]
    mem[_1867 + 32] = mem[_1957]
    mem[mem[64] + 4] = arg1
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.delegates(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1980 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1980] == mem[_1980 + 12 len 20]
    mem[_1867 + 64] = mem[_1980 + 12 len 20]
    mem[mem[64] + 4] = arg1
    require ext_code.size(0x8729438eb15e2c8b576fcc6aecda6a148776c0f5)
    staticcall 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5.getCurrentVotes(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2001 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2001] == mem[_2001 + 20 len 12]
    mem[_1867 + 96] = mem[_2001 + 20 len 12]
    _2012 = mem[64]
    mem[mem[64]] = 160
    _2015 = mem[floor32(arg2.length) + 225]
    mem[mem[64] + 160] = mem[floor32(arg2.length) + 225]
    idx = 0
    s = floor32(arg2.length) + 257
    t = mem[64] + 192
    while idx < _2015:
        _2084 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_2084 + 32]
        mem[t + 64] = mem[_2084 + 64]
        mem[t + 96] = mem[_2084 + 96]
        mem[t + 128] = mem[_2084 + 128]
        mem[t + 160] = mem[_2084 + 160]
        mem[t + 192] = mem[_2084 + 192]
        mem[t + 224] = mem[_2084 + 224]
        mem[t + 256] = mem[_2084 + 256]
        mem[t + 288] = mem[_2084 + 288]
        mem[t + 320] = mem[_2084 + 320]
        mem[t + 352] = mem[_2084 + 352]
        mem[t + 384] = mem[_2084 + 384]
        mem[t + 416] = bool(mem[_2084 + 416])
        mem[t + 448] = bool(mem[_2084 + 448])
        idx = idx + 1
        s = s + 32
        t = t + 480
        continue 
    mem[_2012 + 32] = mem[_1867]
    mem[_2012 + 64] = mem[_1867 + 32]
    mem[_2012 + 96] = mem[_1867 + 76 len 20]
    mem[_2012 + 128] = mem[_1867 + 116 len 12]
    return memory
      from mem[64]
       len _2012 + (480 * _2015) + -mem[64] + 192
}



}
