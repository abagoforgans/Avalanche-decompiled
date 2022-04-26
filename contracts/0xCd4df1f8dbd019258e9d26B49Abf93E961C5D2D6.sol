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
            _618 = mem[(32 * idx) + 128]
            if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _632 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _638 = mem[_632]
                require mem[_632] == mem[_632 + 12 len 20]
                mem[mem[64] + 4] = address(_618)
                require ext_code.size(address(_638))
                staticcall address(_638).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args address(_618)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _671 = mem[_666]
                require mem[_666] == mem[_666]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _692 = mem[_689]
                require mem[_689] == mem[_689 + 12 len 20]
                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                require ext_code.size(address(_692))
                staticcall address(_692).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _718 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _720 = mem[_718]
                require mem[_718] == mem[_718]
                if _671 and 10^18 > -1 / _671:
                    revert with 'NH{q', 17
                if 10^18 * _671 / 10^18 != _671:
                    revert with 0, 'math-not-safe'
                if 10^18 * _671 > -(mem[_718] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _671) + (mem[_718] / 2) < 10^18 * _671:
                    revert with 0, 'math-not-safe'
                if not mem[_718]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                        gas gas_remaining wei
                       args address(_618)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _753 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_753] == bool(mem[_753])
                _765 = mem[_753 + 32]
                require mem[_753 + 32] == mem[_753 + 32]
                _773 = mem[_753 + 64]
                require mem[_753 + 64] == bool(mem[_753 + 64])
                require ext_code.size(address(_618))
                staticcall address(_618).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _785 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _790 = mem[_785]
                require mem[_785] == mem[_785]
                _806 = mem[64]
                mem[64] = mem[64] + 448
                mem[_806] = (10^18 * _671) + (_720 / 2) / _720
                mem[_806 + 32] = _671
                require ext_code.size(address(_618))
                staticcall address(_618).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _814 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_814] == mem[_814]
                mem[_806 + 64] = mem[_814]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_618))
                staticcall address(_618).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _852 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_852] == mem[_852]
                mem[_806 + 96] = mem[_852]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_618))
                staticcall address(_618).borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _902 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_902] == mem[_902]
                mem[_806 + 128] = mem[_902]
                mem[_806 + 160] = _790
                require ext_code.size(address(_618))
                staticcall address(_618).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _926 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_926] == mem[_926]
                if _790 > -mem[_926] - 1:
                    revert with 'NH{q', 17
                if _790 + mem[_926] < _790:
                    revert with 0, 'math-not-safe'
                mem[_806 + 192] = _790 + mem[_926]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _963 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                        gas gas_remaining wei
                       args address(_963)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _986 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_986] == mem[_986]
                mem[_806 + 224] = mem[_986]
                require ext_code.size(address(_618))
                staticcall address(_618).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1010] == mem[_1010]
                mem[_806 + 256] = mem[_1010]
                require ext_code.size(address(_618))
                staticcall address(_618).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1041 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1041] == mem[_1041]
                mem[_806 + 288] = mem[_1041]
                mem[_806 + 320] = _765
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1066 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_1066)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, address(_1066)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1099 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1099] == mem[_1099]
                mem[_806 + 352] = mem[_1099]
                mem[_806 + 384] = bool(_773)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1121 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                        gas gas_remaining wei
                       args address(_1121)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1144] == bool(mem[_1144])
                mem[_806 + 416] = bool(mem[_1144])
                if idx >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = _806
            else:
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _624 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_624] == mem[_624 + 12 len 20]
                require ext_code.size(mem[_624 + 12 len 20])
                staticcall mem[_624 + 12 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _651 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _654 = mem[_651]
                require mem[_651] == mem[_651]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _672 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _675 = mem[_672]
                require mem[_672] == mem[_672 + 12 len 20]
                mem[mem[64] + 4] = address(_618)
                require ext_code.size(address(_675))
                staticcall address(_675).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args address(_618)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _703 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _705 = mem[_703]
                require mem[_703] == mem[_703]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _721 = mem[_719]
                require mem[_719] == mem[_719 + 12 len 20]
                mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                require ext_code.size(address(_721))
                staticcall address(_721).getUnderlyingPrice(address rg1) with:
                        gas gas_remaining wei
                       args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _732 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _733 = mem[_732]
                require mem[_732] == mem[_732]
                if 18 < _654:
                    revert with 'NH{q', 17
                if not -_654 + 18:
                    if _705 and 10^18 > -1 / _705:
                        revert with 'NH{q', 17
                    if 10^18 * _705 / 10^18 != _705:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _705 > -(mem[_732] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _705) + (mem[_732] / 2) < 10^18 * _705:
                        revert with 0, 'math-not-safe'
                    if not mem[_732]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                            gas gas_remaining wei
                           args address(_618)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _787 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_787] == bool(mem[_787])
                    _809 = mem[_787 + 32]
                    require mem[_787 + 32] == mem[_787 + 32]
                    _827 = mem[_787 + 64]
                    require mem[_787 + 64] == bool(mem[_787 + 64])
                    require ext_code.size(address(_618))
                    staticcall address(_618).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _840 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _844 = mem[_840]
                    require mem[_840] == mem[_840]
                    _860 = mem[64]
                    mem[64] = mem[64] + 448
                    mem[_860] = (10^18 * _705) + (_733 / 2) / _733
                    mem[_860 + 32] = _705
                    require ext_code.size(address(_618))
                    staticcall address(_618).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _867 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_867] == mem[_867]
                    mem[_860 + 64] = mem[_867]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_618))
                    staticcall address(_618).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _913 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_913] == mem[_913]
                    mem[_860 + 96] = mem[_913]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_618))
                    staticcall address(_618).borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _951 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_951] == mem[_951]
                    mem[_860 + 128] = mem[_951]
                    mem[_860 + 160] = _844
                    require ext_code.size(address(_618))
                    staticcall address(_618).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _973 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_973] == mem[_973]
                    if _844 > -mem[_973] - 1:
                        revert with 'NH{q', 17
                    if _844 + mem[_973] < _844:
                        revert with 0, 'math-not-safe'
                    mem[_860 + 192] = _844 + mem[_973]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1016 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                            gas gas_remaining wei
                           args address(_1016)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1045 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1045] == mem[_1045]
                    mem[_860 + 224] = mem[_1045]
                    require ext_code.size(address(_618))
                    staticcall address(_618).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1073 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1073] == mem[_1073]
                    mem[_860 + 256] = mem[_1073]
                    require ext_code.size(address(_618))
                    staticcall address(_618).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1100 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1100] == mem[_1100]
                    mem[_860 + 288] = mem[_1100]
                    mem[_860 + 320] = _809
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1127 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1127)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, address(_1127)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1157] == mem[_1157]
                    mem[_860 + 352] = mem[_1157]
                    mem[_860 + 384] = bool(_827)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1172 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                            gas gas_remaining wei
                           args address(_1172)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1192 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1192] == bool(mem[_1192])
                    mem[_860 + 416] = bool(mem[_1192])
                    if idx >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 129] = _860
                else:
                    if bool(bool(-_654 + 18 < 78)) or bool(bool(-_654 + 18 < 32)):
                        if 10^(-_654 + 18) > -1:
                            revert with 'NH{q', 17
                        if not 10^(-_654 + 18):
                            revert with 'NH{q', 18
                        if _705 / 10^(-_654 + 18) and 10^18 > -1 / _705 / 10^(-_654 + 18):
                            revert with 'NH{q', 17
                        if 10^18 * _705 / 10^(-_654 + 18) / 10^18 != _705 / 10^(-_654 + 18):
                            revert with 0, 'math-not-safe'
                        if 10^18 * _705 / 10^(-_654 + 18) > -(mem[_732] / 2) - 1:
                            revert with 'NH{q', 17
                        if (10^18 * _705 / 10^(-_654 + 18)) + (mem[_732] / 2) < 10^18 * _705 / 10^(-_654 + 18):
                            revert with 0, 'math-not-safe'
                        if not mem[_732]:
                            revert with 'NH{q', 18
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                                gas gas_remaining wei
                               args address(_618)
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _797 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_797] == bool(mem[_797])
                        _821 = mem[_797 + 32]
                        require mem[_797 + 32] == mem[_797 + 32]
                        _834 = mem[_797 + 64]
                        require mem[_797 + 64] == bool(mem[_797 + 64])
                        require ext_code.size(address(_618))
                        staticcall address(_618).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _853 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _857 = mem[_853]
                        require mem[_853] == mem[_853]
                        _878 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_878] = (10^18 * _705 / 10^(-_654 + 18)) + (_733 / 2) / _733
                        mem[_878 + 32] = _705 / 10^(-_654 + 18)
                        require ext_code.size(address(_618))
                        staticcall address(_618).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _885 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_885] == mem[_885]
                        mem[_878 + 64] = mem[_885]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_618))
                        staticcall address(_618).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _927 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_927] == mem[_927]
                        mem[_878 + 96] = mem[_927]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_618))
                        staticcall address(_618).borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _961 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_961] == mem[_961]
                        mem[_878 + 128] = mem[_961]
                        mem[_878 + 160] = _857
                        require ext_code.size(address(_618))
                        staticcall address(_618).getCash() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_989] == mem[_989]
                        if _857 > -mem[_989] - 1:
                            revert with 'NH{q', 17
                        if _857 + mem[_989] < _857:
                            revert with 0, 'math-not-safe'
                        mem[_878 + 192] = _857 + mem[_989]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1036 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                                gas gas_remaining wei
                               args address(_1036)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1061 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1061] == mem[_1061]
                        mem[_878 + 224] = mem[_1061]
                        require ext_code.size(address(_618))
                        staticcall address(_618).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1089 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1089] == mem[_1089]
                        mem[_878 + 256] = mem[_1089]
                        require ext_code.size(address(_618))
                        staticcall address(_618).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1113 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1113] == mem[_1113]
                        mem[_878 + 288] = mem[_1113]
                        mem[_878 + 320] = _821
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1139 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = address(_1139)
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                                gas gas_remaining wei
                               args 0, address(_1139)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1166 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1166] == mem[_1166]
                        mem[_878 + 352] = mem[_1166]
                        mem[_878 + 384] = bool(_834)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1180 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                                gas gas_remaining wei
                               args address(_1180)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1202 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1202] == bool(mem[_1202])
                        mem[_878 + 416] = bool(mem[_1202])
                        if idx >= mem[floor32(arg2.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg2.length) + 129] = _878
                    else:
                        t = 10
                        u = 1
                        s = -_654 + 18
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
                        if _705 / u * t and 10^18 > -1 / _705 / u * t:
                            revert with 'NH{q', 17
                        if 10^18 * _705 / u * t / 10^18 != _705 / u * t:
                            revert with 0, 'math-not-safe'
                        if 10^18 * _705 / u * t > -(mem[_732] / 2) - 1:
                            revert with 'NH{q', 17
                        if (10^18 * _705 / u * t) + (mem[_732] / 2) < 10^18 * _705 / u * t:
                            revert with 0, 'math-not-safe'
                        if not mem[_732]:
                            revert with 'NH{q', 18
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                                gas gas_remaining wei
                               args address(_618)
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _950 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_950] == bool(mem[_950])
                        _967 = mem[_950 + 32]
                        require mem[_950 + 32] == mem[_950 + 32]
                        _987 = mem[_950 + 64]
                        require mem[_950 + 64] == bool(mem[_950 + 64])
                        require ext_code.size(address(_618))
                        staticcall address(_618).totalBorrows() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1004 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1011 = mem[_1004]
                        require mem[_1004] == mem[_1004]
                        _1021 = mem[64]
                        mem[64] = mem[64] + 448
                        mem[_1021] = (10^18 * _705 / u * t) + (_733 / 2) / _733
                        mem[_1021 + 32] = _705 / u * t
                        require ext_code.size(address(_618))
                        staticcall address(_618).exchangeRateStored() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1029 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1029] == mem[_1029]
                        mem[_1021 + 64] = mem[_1029]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_618))
                        staticcall address(_618).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1078 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1078] == mem[_1078]
                        mem[_1021 + 96] = mem[_1078]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_618))
                        staticcall address(_618).borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1126 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1126] == mem[_1126]
                        mem[_1021 + 128] = mem[_1126]
                        mem[_1021 + 160] = _1011
                        require ext_code.size(address(_618))
                        staticcall address(_618).getCash() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1151] == mem[_1151]
                        if _1011 > -mem[_1151] - 1:
                            revert with 'NH{q', 17
                        if _1011 + mem[_1151] < _1011:
                            revert with 0, 'math-not-safe'
                        mem[_1021 + 192] = _1011 + mem[_1151]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1187 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                                gas gas_remaining wei
                               args address(_1187)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1205 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1205] == mem[_1205]
                        mem[_1021 + 224] = mem[_1205]
                        require ext_code.size(address(_618))
                        staticcall address(_618).0xd3bd2c72 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1221] == mem[_1221]
                        mem[_1021 + 256] = mem[_1221]
                        require ext_code.size(address(_618))
                        staticcall address(_618).0xcd91801c with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1236 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1236] == mem[_1236]
                        mem[_1021 + 288] = mem[_1236]
                        mem[_1021 + 320] = _967
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
                        _1262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1262] == mem[_1262]
                        mem[_1021 + 352] = mem[_1262]
                        mem[_1021 + 384] = bool(_987)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1270 = mem[(32 * idx) + 128]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                                gas gas_remaining wei
                               args address(_1270)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1280 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1280] == bool(mem[_1280])
                        mem[_1021 + 416] = bool(mem[_1280])
                        if idx >= mem[floor32(arg2.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg2.length) + 129] = _1021
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _617 = mem[64]
        mem[mem[64]] = 32
        _619 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 64
        while idx < _619:
            _805 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_805 + 32]
            mem[t + 64] = mem[_805 + 64]
            mem[t + 96] = mem[_805 + 96]
            mem[t + 128] = mem[_805 + 128]
            mem[t + 160] = mem[_805 + 160]
            mem[t + 192] = mem[_805 + 192]
            mem[t + 224] = mem[_805 + 224]
            mem[t + 256] = mem[_805 + 256]
            mem[t + 288] = mem[_805 + 288]
            mem[t + 320] = mem[_805 + 320]
            mem[t + 352] = mem[_805 + 352]
            mem[t + 384] = bool(mem[_805 + 384])
            mem[t + 416] = bool(mem[_805 + 416])
            idx = idx + 1
            s = s + 32
            t = t + 448
            continue 
        return memory
          from mem[64]
           len _617 + (448 * _619) + -mem[64] + 64
    mem[64] = floor32(arg2.length) + (32 * arg2.length) + 577
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
    mem[var42001] = floor32(arg2.length) + (32 * arg2.length) + 129
    s = var42001
    idx = var42002
    while idx - 1:
        mem[64] = mem[64] + 448
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
        mem[s + 32] = floor32(arg2.length) + (32 * arg2.length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _1219 = mem[96]
    idx = 0
    while idx < _1219:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1223 = mem[(32 * idx) + 128]
        if 0x5c0401e81bc07ca70fad469b451682c0d747ef1c == mem[(32 * idx) + 140 len 20]:
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1239 = mem[_1235]
            require mem[_1235] == mem[_1235 + 12 len 20]
            mem[mem[64] + 4] = address(_1223)
            require ext_code.size(address(_1239))
            staticcall address(_1239).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(_1223)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1260 = mem[_1255]
            require mem[_1255] == mem[_1255]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1275 = mem[_1273]
            require mem[_1273] == mem[_1273 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1275))
            staticcall address(_1275).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1293 = mem[_1291]
            require mem[_1291] == mem[_1291]
            if _1260 and 10^18 > -1 / _1260:
                revert with 'NH{q', 17
            if 10^18 * _1260 / 10^18 != _1260:
                revert with 0, 'math-not-safe'
            if 10^18 * _1260 > -(mem[_1291] / 2) - 1:
                revert with 'NH{q', 17
            if (10^18 * _1260) + (mem[_1291] / 2) < 10^18 * _1260:
                revert with 0, 'math-not-safe'
            if not mem[_1291]:
                revert with 'NH{q', 18
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                    gas gas_remaining wei
                   args address(_1223)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1309] == bool(mem[_1309])
            _1314 = mem[_1309 + 32]
            require mem[_1309 + 32] == mem[_1309 + 32]
            _1319 = mem[_1309 + 64]
            require mem[_1309 + 64] == bool(mem[_1309 + 64])
            require ext_code.size(address(_1223))
            staticcall address(_1223).totalBorrows() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1326 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1329 = mem[_1326]
            require mem[_1326] == mem[_1326]
            _1336 = mem[64]
            mem[64] = mem[64] + 448
            mem[_1336] = (10^18 * _1260) + (_1293 / 2) / _1293
            mem[_1336 + 32] = _1260
            require ext_code.size(address(_1223))
            staticcall address(_1223).exchangeRateStored() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1342 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1342] == mem[_1342]
            mem[_1336 + 64] = mem[_1342]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1223))
            staticcall address(_1223).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1360 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1360] == mem[_1360]
            mem[_1336 + 96] = mem[_1360]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_1223))
            staticcall address(_1223).borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1384] == mem[_1384]
            mem[_1336 + 128] = mem[_1384]
            mem[_1336 + 160] = _1329
            require ext_code.size(address(_1223))
            staticcall address(_1223).getCash() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1397] == mem[_1397]
            if _1329 > -mem[_1397] - 1:
                revert with 'NH{q', 17
            if _1329 + mem[_1397] < _1329:
                revert with 0, 'math-not-safe'
            mem[_1336 + 192] = _1329 + mem[_1397]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1415 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                    gas gas_remaining wei
                   args address(_1415)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1427 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1427] == mem[_1427]
            mem[_1336 + 224] = mem[_1427]
            require ext_code.size(address(_1223))
            staticcall address(_1223).0xd3bd2c72 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1437 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1437] == mem[_1437]
            mem[_1336 + 256] = mem[_1437]
            require ext_code.size(address(_1223))
            staticcall address(_1223).0xcd91801c with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1455 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1455] == mem[_1455]
            mem[_1336 + 288] = mem[_1455]
            mem[_1336 + 320] = _1314
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1466 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = address(_1466)
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                    gas gas_remaining wei
                   args 0, address(_1466)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1483 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1483] == mem[_1483]
            mem[_1336 + 352] = mem[_1483]
            mem[_1336 + 384] = bool(_1319)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1494 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                    gas gas_remaining wei
                   args address(_1494)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1505 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1505] == bool(mem[_1505])
            mem[_1336 + 416] = bool(mem[_1505])
            if idx >= mem[floor32(arg2.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg2.length) + 129] = _1336
        else:
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1228 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1228] == mem[_1228 + 12 len 20]
            require ext_code.size(mem[_1228 + 12 len 20])
            staticcall mem[_1228 + 12 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1250 = mem[_1245]
            require mem[_1245] == mem[_1245]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1263 = mem[_1261]
            require mem[_1261] == mem[_1261 + 12 len 20]
            mem[mem[64] + 4] = address(_1223)
            require ext_code.size(address(_1263))
            staticcall address(_1263).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(_1223)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1281 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1284 = mem[_1281]
            require mem[_1281] == mem[_1281]
            require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
            staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1294 = mem[_1292]
            require mem[_1292] == mem[_1292 + 12 len 20]
            mem[mem[64] + 4] = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require ext_code.size(address(_1294))
            staticcall address(_1294).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1297 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1298 = mem[_1297]
            require mem[_1297] == mem[_1297]
            if 18 < _1250:
                revert with 'NH{q', 17
            if not -_1250 + 18:
                if _1284 and 10^18 > -1 / _1284:
                    revert with 'NH{q', 17
                if 10^18 * _1284 / 10^18 != _1284:
                    revert with 0, 'math-not-safe'
                if 10^18 * _1284 > -(mem[_1297] / 2) - 1:
                    revert with 'NH{q', 17
                if (10^18 * _1284) + (mem[_1297] / 2) < 10^18 * _1284:
                    revert with 0, 'math-not-safe'
                if not mem[_1297]:
                    revert with 'NH{q', 18
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                        gas gas_remaining wei
                       args address(_1223)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1328] == bool(mem[_1328])
                _1339 = mem[_1328 + 32]
                require mem[_1328 + 32] == mem[_1328 + 32]
                _1346 = mem[_1328 + 64]
                require mem[_1328 + 64] == bool(mem[_1328 + 64])
                require ext_code.size(address(_1223))
                staticcall address(_1223).totalBorrows() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1353 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1355 = mem[_1353]
                require mem[_1353] == mem[_1353]
                _1365 = mem[64]
                mem[64] = mem[64] + 448
                mem[_1365] = (10^18 * _1284) + (_1298 / 2) / _1298
                mem[_1365 + 32] = _1284
                require ext_code.size(address(_1223))
                staticcall address(_1223).exchangeRateStored() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1368 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1368] == mem[_1368]
                mem[_1365 + 64] = mem[_1368]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1223))
                staticcall address(_1223).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1390 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1390] == mem[_1390]
                mem[_1365 + 96] = mem[_1390]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_1223))
                staticcall address(_1223).borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1408 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1408] == mem[_1408]
                mem[_1365 + 128] = mem[_1408]
                mem[_1365 + 160] = _1355
                require ext_code.size(address(_1223))
                staticcall address(_1223).getCash() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1421] == mem[_1421]
                if _1355 > -mem[_1421] - 1:
                    revert with 'NH{q', 17
                if _1355 + mem[_1421] < _1355:
                    revert with 0, 'math-not-safe'
                mem[_1365 + 192] = _1355 + mem[_1421]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1442 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                        gas gas_remaining wei
                       args address(_1442)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1458 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1458] == mem[_1458]
                mem[_1365 + 224] = mem[_1458]
                require ext_code.size(address(_1223))
                staticcall address(_1223).0xd3bd2c72 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1471] == mem[_1471]
                mem[_1365 + 256] = mem[_1471]
                require ext_code.size(address(_1223))
                staticcall address(_1223).0xcd91801c with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1484 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1484] == mem[_1484]
                mem[_1365 + 288] = mem[_1484]
                mem[_1365 + 320] = _1339
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1498 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = address(_1498)
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                        gas gas_remaining wei
                       args 0, address(_1498)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1511 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1511] == mem[_1511]
                mem[_1365 + 352] = mem[_1511]
                mem[_1365 + 384] = bool(_1346)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1519 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                        gas gas_remaining wei
                       args address(_1519)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1529 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1529] == bool(mem[_1529])
                mem[_1365 + 416] = bool(mem[_1529])
                if idx >= mem[floor32(arg2.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = _1365
            else:
                if bool(bool(-_1250 + 18 < 78)) or bool(bool(-_1250 + 18 < 32)):
                    if 10^(-_1250 + 18) > -1:
                        revert with 'NH{q', 17
                    if not 10^(-_1250 + 18):
                        revert with 'NH{q', 18
                    if _1284 / 10^(-_1250 + 18) and 10^18 > -1 / _1284 / 10^(-_1250 + 18):
                        revert with 'NH{q', 17
                    if 10^18 * _1284 / 10^(-_1250 + 18) / 10^18 != _1284 / 10^(-_1250 + 18):
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1284 / 10^(-_1250 + 18) > -(mem[_1297] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1284 / 10^(-_1250 + 18)) + (mem[_1297] / 2) < 10^18 * _1284 / 10^(-_1250 + 18):
                        revert with 0, 'math-not-safe'
                    if not mem[_1297]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                            gas gas_remaining wei
                           args address(_1223)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1332] == bool(mem[_1332])
                    _1345 = mem[_1332 + 32]
                    require mem[_1332 + 32] == mem[_1332 + 32]
                    _1349 = mem[_1332 + 64]
                    require mem[_1332 + 64] == bool(mem[_1332 + 64])
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1361 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1363 = mem[_1361]
                    require mem[_1361] == mem[_1361]
                    _1373 = mem[64]
                    mem[64] = mem[64] + 448
                    mem[_1373] = (10^18 * _1284 / 10^(-_1250 + 18)) + (_1298 / 2) / _1298
                    mem[_1373 + 32] = _1284 / 10^(-_1250 + 18)
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1377] == mem[_1377]
                    mem[_1373 + 64] = mem[_1377]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1398 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1398] == mem[_1398]
                    mem[_1373 + 96] = mem[_1398]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1414 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1414] == mem[_1414]
                    mem[_1373 + 128] = mem[_1414]
                    mem[_1373 + 160] = _1363
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1429] == mem[_1429]
                    if _1363 > -mem[_1429] - 1:
                        revert with 'NH{q', 17
                    if _1363 + mem[_1429] < _1363:
                        revert with 0, 'math-not-safe'
                    mem[_1373 + 192] = _1363 + mem[_1429]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1452 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                            gas gas_remaining wei
                           args address(_1452)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1464 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1464] == mem[_1464]
                    mem[_1373 + 224] = mem[_1464]
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1478 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1478] == mem[_1478]
                    mem[_1373 + 256] = mem[_1478]
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1490] == mem[_1490]
                    mem[_1373 + 288] = mem[_1490]
                    mem[_1373 + 320] = _1345
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1502 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1502)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, address(_1502)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1516] == mem[_1516]
                    mem[_1373 + 352] = mem[_1516]
                    mem[_1373 + 384] = bool(_1349)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1523 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                            gas gas_remaining wei
                           args address(_1523)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1534 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1534] == bool(mem[_1534])
                    mem[_1373 + 416] = bool(mem[_1534])
                    if idx >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 129] = _1373
                else:
                    t = 10
                    u = 1
                    s = -_1250 + 18
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        _1219 = mem[96]
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
                    if _1284 / u * t and 10^18 > -1 / _1284 / u * t:
                        revert with 'NH{q', 17
                    if 10^18 * _1284 / u * t / 10^18 != _1284 / u * t:
                        revert with 0, 'math-not-safe'
                    if 10^18 * _1284 / u * t > -(mem[_1297] / 2) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * _1284 / u * t) + (mem[_1297] / 2) < 10^18 * _1284 / u * t:
                        revert with 0, 'math-not-safe'
                    if not mem[_1297]:
                        revert with 'NH{q', 18
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.markets(address rg1) with:
                            gas gas_remaining wei
                           args address(_1223)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1407] == bool(mem[_1407])
                    _1418 = mem[_1407 + 32]
                    require mem[_1407 + 32] == mem[_1407 + 32]
                    _1428 = mem[_1407 + 64]
                    require mem[_1407 + 64] == bool(mem[_1407 + 64])
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).totalBorrows() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1434 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1438 = mem[_1434]
                    require mem[_1434] == mem[_1434]
                    _1444 = mem[64]
                    mem[64] = mem[64] + 448
                    mem[_1444] = (10^18 * _1284 / u * t) + (_1298 / 2) / _1298
                    mem[_1444 + 32] = _1284 / u * t
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).exchangeRateStored() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1448 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1448] == mem[_1448]
                    mem[_1444 + 64] = mem[_1448]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1473] == mem[_1473]
                    mem[_1444 + 96] = mem[_1473]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1497 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1497] == mem[_1497]
                    mem[_1444 + 128] = mem[_1497]
                    mem[_1444 + 160] = _1438
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).getCash() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1509] == mem[_1509]
                    if _1438 > -mem[_1509] - 1:
                        revert with 'NH{q', 17
                    if _1438 + mem[_1509] < _1438:
                        revert with 0, 'math-not-safe'
                    mem[_1444 + 192] = _1438 + mem[_1509]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1526 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowCaps(address rg1) with:
                            gas gas_remaining wei
                           args address(_1526)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1535] == mem[_1535]
                    mem[_1444 + 224] = mem[_1535]
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).0xd3bd2c72 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1542] == mem[_1542]
                    mem[_1444 + 256] = mem[_1542]
                    require ext_code.size(address(_1223))
                    staticcall address(_1223).0xcd91801c with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1546 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1546] == mem[_1546]
                    mem[_1444 + 288] = mem[_1546]
                    mem[_1444 + 320] = _1418
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1549 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = address(_1549)
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.rewardSpeeds(uint8 rg1, address rg2) with:
                            gas gas_remaining wei
                           args 0, address(_1549)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1552 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1552] == mem[_1552]
                    mem[_1444 + 352] = mem[_1552]
                    mem[_1444 + 384] = bool(_1428)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1555 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
                    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.borrowGuardianPaused(address rg1) with:
                            gas gas_remaining wei
                           args address(_1555)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1558 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1558] == bool(mem[_1558])
                    mem[_1444 + 416] = bool(mem[_1558])
                    if idx >= mem[floor32(arg2.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg2.length) + 129] = _1444
        if idx == -1:
            revert with 'NH{q', 17
        _1219 = mem[96]
        idx = idx + 1
        continue 
    _1222 = mem[64]
    mem[mem[64]] = 32
    _1225 = mem[floor32(arg2.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg2.length) + 97]
    idx = 0
    s = floor32(arg2.length) + 129
    t = mem[64] + 64
    while idx < _1225:
        _1335 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1335 + 32]
        mem[t + 64] = mem[_1335 + 64]
        mem[t + 96] = mem[_1335 + 96]
        mem[t + 128] = mem[_1335 + 128]
        mem[t + 160] = mem[_1335 + 160]
        mem[t + 192] = mem[_1335 + 192]
        mem[t + 224] = mem[_1335 + 224]
        mem[t + 256] = mem[_1335 + 256]
        mem[t + 288] = mem[_1335 + 288]
        mem[t + 320] = mem[_1335 + 320]
        mem[t + 352] = mem[_1335 + 352]
        mem[t + 384] = bool(mem[_1335 + 384])
        mem[t + 416] = bool(mem[_1335 + 416])
        idx = idx + 1
        s = s + 32
        t = t + 448
        continue 
    return memory
      from mem[64]
       len _1222 + (448 * _1225) + -mem[64] + 64
}



}
