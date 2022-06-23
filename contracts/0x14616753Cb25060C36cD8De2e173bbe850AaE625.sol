contract main {




// =====================  Runtime code  =====================


#
#  - onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#
const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const WETH = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab


address sub_897857b8Address;
address sub_e62fbf6aAddress;
address sub_c62d2751Address;
address sub_218377a0Address;

function sub_218377a0(?) {
    return sub_218377a0Address
}

function sub_897857b8(?) {
    return sub_897857b8Address
}

function sub_c62d2751(?) {
    return sub_c62d2751Address
}

function sub_e62fbf6a(?) {
    return sub_e62fbf6aAddress
}

function _fallback() payable {
    revert
}

function liquidate(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(sub_897857b8Address)
    staticcall sub_897857b8Address.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[32]:
        revert with 0, 'JoeLiquidator: Cannot liquidate account with non-zero liquidity'
    if not ext_call.return_data[64]:
        revert with 0, 'JoeLiquidator: Cannot liquidate account with zero shortfall'
    require ext_code.size(sub_897857b8Address)
    staticcall sub_897857b8Address.0x7dc0d1d0 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_897857b8Address)
    staticcall sub_897857b8Address.closeFactorMantissa() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_897857b8Address)
    staticcall sub_897857b8Address.liquidationIncentiveMantissa() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 100] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args arg2
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 100] = arg3
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args arg3
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(arg2)
    staticcall arg2.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(arg3)
    staticcall arg3.exchangeRateStored() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    mem[(11 * ceil32(return_data.size)) + 132] = arg1
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[(11 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(12 * ceil32(return_data.size)) + 128] = 0
    mem[(12 * ceil32(return_data.size)) + 192] = 23
    mem[(12 * ceil32(return_data.size)) + 224] = 'multiplication overflow'
    if not ext_call.return_data[0]:
        mem[(12 * ceil32(return_data.size)) + 160] = 0
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if 10^18 * 0 / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * 0 / 10^18 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(arg2)
        call arg2.underlying() with:
             gas gas_remaining wei
        mem[(12 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(13 * ceil32(return_data.size)) + 256] = 2
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] < 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]:
            if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                mem[(13 * ceil32(return_data.size)) + 288] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(13 * ceil32(return_data.size)) + 388] = 64
                mem[(13 * ceil32(return_data.size)) + 420] = 2
                idx = 0
                s = (13 * ceil32(return_data.size)) + 288
                t = (13 * ceil32(return_data.size)) + 452
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_e62fbf6aAddress)
                staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _399 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                _413 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                require _399 + (32 * _413) + 32 <= return_data.size
                idx = (13 * ceil32(return_data.size)) + _399 + 384
                s = (14 * ceil32(return_data.size)) + 384
                while idx < (13 * ceil32(return_data.size)) + _399 + (32 * _413) + 384:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if 0 >= _413:
                    revert with 'NH{q', 50
                _857 = mem[(14 * ceil32(return_data.size)) + 384]
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _917 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _941 = mem[_917]
                    require mem[_917] == mem[_917 + 12 len 20]
                    _965 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_941)
                    mem[mem[64] + 192] = _857
                    mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    _989 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_965 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_965 + 260] = this.address
                    mem[_965 + 292] = msg.sender
                    mem[_965 + 324] = _857
                    mem[_965 + 356] = 128
                    _1037 = mem[_989]
                    mem[_965 + 388] = mem[_989]
                    mem[_965 + 420 len ceil32(_1037)] = mem[_989 + 32 len ceil32(_1037)]
                    if ceil32(_1037) > _1037:
                        mem[_965 + _1037 + 420] = 0
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _857, 128, mem[_965 + 388 len ceil32(_1037) + 32]
                else:
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _918 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _942 = mem[_918]
                    require mem[_918] == mem[_918 + 12 len 20]
                    _966 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_942)
                    mem[mem[64] + 192] = _857
                    mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    _991 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_966 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_966 + 260] = this.address
                    mem[_966 + 292] = msg.sender
                    mem[_966 + 324] = _857
                    mem[_966 + 356] = 128
                    _1038 = mem[_991]
                    mem[_966 + 388] = mem[_991]
                    mem[_966 + 420 len ceil32(_1038)] = mem[_991 + 32 len ceil32(_1038)]
                    if ceil32(_1038) > _1038:
                        mem[_966 + _1038 + 420] = 0
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _857, 128, mem[_966 + 388 len ceil32(_1038) + 32]
            else:
                mem[(13 * ceil32(return_data.size)) + 288] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
                mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(13 * ceil32(return_data.size)) + 388] = 64
                mem[(13 * ceil32(return_data.size)) + 420] = 2
                idx = 0
                s = (13 * ceil32(return_data.size)) + 288
                t = (13 * ceil32(return_data.size)) + 452
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_e62fbf6aAddress)
                staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _400 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                _414 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                require _400 + (32 * _414) + 32 <= return_data.size
                idx = (13 * ceil32(return_data.size)) + _400 + 384
                s = (14 * ceil32(return_data.size)) + 384
                while idx < (13 * ceil32(return_data.size)) + _400 + (32 * _414) + 384:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if 0 >= _414:
                    revert with 'NH{q', 50
                _858 = mem[(14 * ceil32(return_data.size)) + 384]
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _943 = mem[_919]
                    require mem[_919] == mem[_919 + 12 len 20]
                    _967 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_943)
                    mem[mem[64] + 192] = _858
                    mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    _993 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_967 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_967 + 260] = this.address
                    mem[_967 + 292] = msg.sender
                    mem[_967 + 324] = _858
                    mem[_967 + 356] = 128
                    _1039 = mem[_993]
                    mem[_967 + 388] = mem[_993]
                    mem[_967 + 420 len ceil32(_1039)] = mem[_993 + 32 len ceil32(_1039)]
                    if ceil32(_1039) > _1039:
                        mem[_967 + _1039 + 420] = 0
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _858, 128, mem[_967 + 388 len ceil32(_1039) + 32]
                else:
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _920 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _944 = mem[_920]
                    require mem[_920] == mem[_920 + 12 len 20]
                    _968 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_944)
                    mem[mem[64] + 192] = _858
                    mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    _995 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_968 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_968 + 260] = this.address
                    mem[_968 + 292] = msg.sender
                    mem[_968 + 324] = _858
                    mem[_968 + 356] = 128
                    _1040 = mem[_995]
                    mem[_968 + 388] = mem[_995]
                    mem[_968 + 420 len ceil32(_1040)] = mem[_995 + 32 len ceil32(_1040)]
                    if ceil32(_1040) > _1040:
                        mem[_968 + _1040 + 420] = 0
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _858, 128, mem[_968 + 388 len ceil32(_1040) + 32]
        else:
            if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                mem[(13 * ceil32(return_data.size)) + 288] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 356] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(13 * ceil32(return_data.size)) + 388] = 64
                mem[(13 * ceil32(return_data.size)) + 420] = 2
                idx = 0
                s = (13 * ceil32(return_data.size)) + 288
                t = (13 * ceil32(return_data.size)) + 452
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_e62fbf6aAddress)
                staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _401 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                _415 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                require _401 + (32 * _415) + 32 <= return_data.size
                idx = (13 * ceil32(return_data.size)) + _401 + 384
                s = (14 * ceil32(return_data.size)) + 384
                while idx < (13 * ceil32(return_data.size)) + _401 + (32 * _415) + 384:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if 0 >= _415:
                    revert with 'NH{q', 50
                _859 = mem[(14 * ceil32(return_data.size)) + 384]
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _921 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _945 = mem[_921]
                    require mem[_921] == mem[_921 + 12 len 20]
                    _969 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_945)
                    mem[mem[64] + 192] = _859
                    mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    _997 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_969 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_969 + 260] = this.address
                    mem[_969 + 292] = msg.sender
                    mem[_969 + 324] = _859
                    mem[_969 + 356] = 128
                    _1041 = mem[_997]
                    mem[_969 + 388] = mem[_997]
                    mem[_969 + 420 len ceil32(_1041)] = mem[_997 + 32 len ceil32(_1041)]
                    if ceil32(_1041) > _1041:
                        mem[_969 + _1041 + 420] = 0
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _859, 128, mem[_969 + 388 len ceil32(_1041) + 32]
                else:
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _922 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _946 = mem[_922]
                    require mem[_922] == mem[_922 + 12 len 20]
                    _970 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_946)
                    mem[mem[64] + 192] = _859
                    mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    _999 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_970 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_970 + 260] = this.address
                    mem[_970 + 292] = msg.sender
                    mem[_970 + 324] = _859
                    mem[_970 + 356] = 128
                    _1042 = mem[_999]
                    mem[_970 + 388] = mem[_999]
                    mem[_970 + 420 len ceil32(_1042)] = mem[_999 + 32 len ceil32(_1042)]
                    if ceil32(_1042) > _1042:
                        mem[_970 + _1042 + 420] = 0
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _859, 128, mem[_970 + 388 len ceil32(_1042) + 32]
            else:
                mem[(13 * ceil32(return_data.size)) + 288] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
                mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 356] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[(13 * ceil32(return_data.size)) + 388] = 64
                mem[(13 * ceil32(return_data.size)) + 420] = 2
                idx = 0
                s = (13 * ceil32(return_data.size)) + 288
                t = (13 * ceil32(return_data.size)) + 452
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_e62fbf6aAddress)
                staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (14 * ceil32(return_data.size)) + 352
                require return_data.size >= 32
                _402 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                _416 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                    revert with 'NH{q', 65
                if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                require _402 + (32 * _416) + 32 <= return_data.size
                idx = (13 * ceil32(return_data.size)) + _402 + 384
                s = (14 * ceil32(return_data.size)) + 384
                while idx < (13 * ceil32(return_data.size)) + _402 + (32 * _416) + 384:
                    require mem[idx] == mem[idx]
                    mem[s] = mem[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if 0 >= _416:
                    revert with 'NH{q', 50
                _860 = mem[(14 * ceil32(return_data.size)) + 384]
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _923 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _947 = mem[_923]
                    require mem[_923] == mem[_923 + 12 len 20]
                    _971 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_947)
                    mem[mem[64] + 192] = _860
                    mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    _1001 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_971 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_971 + 260] = this.address
                    mem[_971 + 292] = msg.sender
                    mem[_971 + 324] = _860
                    mem[_971 + 356] = 128
                    _1043 = mem[_1001]
                    mem[_971 + 388] = mem[_1001]
                    mem[_971 + 420 len ceil32(_1043)] = mem[_1001 + 32 len ceil32(_1043)]
                    if ceil32(_1043) > _1043:
                        mem[_971 + _1043 + 420] = 0
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _860, 128, mem[_971 + 388 len ceil32(_1043) + 32]
                else:
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _924 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _948 = mem[_924]
                    require mem[_924] == mem[_924 + 12 len 20]
                    _972 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_948)
                    mem[mem[64] + 192] = _860
                    mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    _1003 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_972 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_972 + 260] = this.address
                    mem[_972 + 292] = msg.sender
                    mem[_972 + 324] = _860
                    mem[_972 + 356] = 128
                    _1044 = mem[_1003]
                    mem[_972 + 388] = mem[_1003]
                    mem[_972 + 420 len ceil32(_1044)] = mem[_1003 + 32 len ceil32(_1044)]
                    if ceil32(_1044) > _1044:
                        mem[_972 + _1044 + 420] = 0
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _860, 128, mem[_972 + 388 len ceil32(_1044) + 32]
    else:
        if not ext_call.return_data[0]:
            mem[(12 * ceil32(return_data.size)) + 160] = 0
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * 0 / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * 0 / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg2)
            call arg2.underlying() with:
                 gas gas_remaining wei
            mem[(12 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(13 * ceil32(return_data.size)) + 256] = 2
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] < 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]:
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    mem[(13 * ceil32(return_data.size)) + 288] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                    mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(13 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[(13 * ceil32(return_data.size)) + 388] = 64
                    mem[(13 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (13 * ceil32(return_data.size)) + 288
                    t = (13 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_e62fbf6aAddress)
                    staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (14 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _408 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _421 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    require _408 + (32 * _421) + 32 <= return_data.size
                    idx = (13 * ceil32(return_data.size)) + _408 + 384
                    s = (14 * ceil32(return_data.size)) + 384
                    while idx < (13 * ceil32(return_data.size)) + _408 + (32 * _421) + 384:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _421:
                        revert with 'NH{q', 50
                    _865 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _957 = mem[_933]
                        require mem[_933] == mem[_933 + 12 len 20]
                        _981 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_957)
                        mem[mem[64] + 192] = _865
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1021 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_981 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_981 + 260] = this.address
                        mem[_981 + 292] = msg.sender
                        mem[_981 + 324] = _865
                        mem[_981 + 356] = 128
                        _1053 = mem[_1021]
                        mem[_981 + 388] = mem[_1021]
                        mem[_981 + 420 len ceil32(_1053)] = mem[_1021 + 32 len ceil32(_1053)]
                        if ceil32(_1053) > _1053:
                            mem[_981 + _1053 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _865, 128, mem[_981 + 388 len ceil32(_1053) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _934 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _958 = mem[_934]
                        require mem[_934] == mem[_934 + 12 len 20]
                        _982 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_958)
                        mem[mem[64] + 192] = _865
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1023 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_982 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_982 + 260] = this.address
                        mem[_982 + 292] = msg.sender
                        mem[_982 + 324] = _865
                        mem[_982 + 356] = 128
                        _1054 = mem[_1023]
                        mem[_982 + 388] = mem[_1023]
                        mem[_982 + 420 len ceil32(_1054)] = mem[_1023 + 32 len ceil32(_1054)]
                        if ceil32(_1054) > _1054:
                            mem[_982 + _1054 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _865, 128, mem[_982 + 388 len ceil32(_1054) + 32]
                else:
                    mem[(13 * ceil32(return_data.size)) + 288] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
                    mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                    mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(13 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[(13 * ceil32(return_data.size)) + 388] = 64
                    mem[(13 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (13 * ceil32(return_data.size)) + 288
                    t = (13 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_e62fbf6aAddress)
                    staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (14 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _409 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _422 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    require _409 + (32 * _422) + 32 <= return_data.size
                    idx = (13 * ceil32(return_data.size)) + _409 + 384
                    s = (14 * ceil32(return_data.size)) + 384
                    while idx < (13 * ceil32(return_data.size)) + _409 + (32 * _422) + 384:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _422:
                        revert with 'NH{q', 50
                    _866 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _935 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _959 = mem[_935]
                        require mem[_935] == mem[_935 + 12 len 20]
                        _983 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_959)
                        mem[mem[64] + 192] = _866
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1025 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_983 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_983 + 260] = this.address
                        mem[_983 + 292] = msg.sender
                        mem[_983 + 324] = _866
                        mem[_983 + 356] = 128
                        _1055 = mem[_1025]
                        mem[_983 + 388] = mem[_1025]
                        mem[_983 + 420 len ceil32(_1055)] = mem[_1025 + 32 len ceil32(_1055)]
                        if ceil32(_1055) > _1055:
                            mem[_983 + _1055 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _866, 128, mem[_983 + 388 len ceil32(_1055) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _936 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _960 = mem[_936]
                        require mem[_936] == mem[_936 + 12 len 20]
                        _984 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_960)
                        mem[mem[64] + 192] = _866
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1027 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_984 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_984 + 260] = this.address
                        mem[_984 + 292] = msg.sender
                        mem[_984 + 324] = _866
                        mem[_984 + 356] = 128
                        _1056 = mem[_1027]
                        mem[_984 + 388] = mem[_1027]
                        mem[_984 + 420 len ceil32(_1056)] = mem[_1027 + 32 len ceil32(_1056)]
                        if ceil32(_1056) > _1056:
                            mem[_984 + _1056 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _866, 128, mem[_984 + 388 len ceil32(_1056) + 32]
            else:
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    mem[(13 * ceil32(return_data.size)) + 288] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                    mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(13 * ceil32(return_data.size)) + 356] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[(13 * ceil32(return_data.size)) + 388] = 64
                    mem[(13 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (13 * ceil32(return_data.size)) + 288
                    t = (13 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_e62fbf6aAddress)
                    staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (14 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _410 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _423 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    require _410 + (32 * _423) + 32 <= return_data.size
                    idx = (13 * ceil32(return_data.size)) + _410 + 384
                    s = (14 * ceil32(return_data.size)) + 384
                    while idx < (13 * ceil32(return_data.size)) + _410 + (32 * _423) + 384:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _423:
                        revert with 'NH{q', 50
                    _867 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _937 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _961 = mem[_937]
                        require mem[_937] == mem[_937 + 12 len 20]
                        _985 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_961)
                        mem[mem[64] + 192] = _867
                        mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1029 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_985 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_985 + 260] = this.address
                        mem[_985 + 292] = msg.sender
                        mem[_985 + 324] = _867
                        mem[_985 + 356] = 128
                        _1057 = mem[_1029]
                        mem[_985 + 388] = mem[_1029]
                        mem[_985 + 420 len ceil32(_1057)] = mem[_1029 + 32 len ceil32(_1057)]
                        if ceil32(_1057) > _1057:
                            mem[_985 + _1057 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _867, 128, mem[_985 + 388 len ceil32(_1057) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _962 = mem[_938]
                        require mem[_938] == mem[_938 + 12 len 20]
                        _986 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_962)
                        mem[mem[64] + 192] = _867
                        mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1031 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_986 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_986 + 260] = this.address
                        mem[_986 + 292] = msg.sender
                        mem[_986 + 324] = _867
                        mem[_986 + 356] = 128
                        _1058 = mem[_1031]
                        mem[_986 + 388] = mem[_1031]
                        mem[_986 + 420 len ceil32(_1058)] = mem[_1031 + 32 len ceil32(_1058)]
                        if ceil32(_1058) > _1058:
                            mem[_986 + _1058 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _867, 128, mem[_986 + 388 len ceil32(_1058) + 32]
                else:
                    mem[(13 * ceil32(return_data.size)) + 288] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
                    mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                    mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(13 * ceil32(return_data.size)) + 356] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[(13 * ceil32(return_data.size)) + 388] = 64
                    mem[(13 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (13 * ceil32(return_data.size)) + 288
                    t = (13 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_e62fbf6aAddress)
                    staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (14 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _411 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _424 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    require _411 + (32 * _424) + 32 <= return_data.size
                    idx = (13 * ceil32(return_data.size)) + _411 + 384
                    s = (14 * ceil32(return_data.size)) + 384
                    while idx < (13 * ceil32(return_data.size)) + _411 + (32 * _424) + 384:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _424:
                        revert with 'NH{q', 50
                    _868 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _939 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _963 = mem[_939]
                        require mem[_939] == mem[_939 + 12 len 20]
                        _987 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_963)
                        mem[mem[64] + 192] = _868
                        mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1033 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_987 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_987 + 260] = this.address
                        mem[_987 + 292] = msg.sender
                        mem[_987 + 324] = _868
                        mem[_987 + 356] = 128
                        _1059 = mem[_1033]
                        mem[_987 + 388] = mem[_1033]
                        mem[_987 + 420 len ceil32(_1059)] = mem[_1033 + 32 len ceil32(_1059)]
                        if ceil32(_1059) > _1059:
                            mem[_987 + _1059 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _868, 128, mem[_987 + 388 len ceil32(_1059) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _940 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _964 = mem[_940]
                        require mem[_940] == mem[_940 + 12 len 20]
                        _988 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_964)
                        mem[mem[64] + 192] = _868
                        mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1035 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_988 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_988 + 260] = this.address
                        mem[_988 + 292] = msg.sender
                        mem[_988 + 324] = _868
                        mem[_988 + 356] = 128
                        _1060 = mem[_1035]
                        mem[_988 + 388] = mem[_1035]
                        mem[_988 + 420 len ceil32(_1060)] = mem[_1035 + 32 len ceil32(_1060)]
                        if ceil32(_1060) > _1060:
                            mem[_988 + _1060 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _868, 128, mem[_988 + 388 len ceil32(_1060) + 32]
        else:
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'multiplication overflow', 0
            mem[(12 * ceil32(return_data.size)) + 160] = ext_call.return_data[0] * ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(arg2)
            call arg2.underlying() with:
                 gas gas_remaining wei
            mem[(12 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(13 * ceil32(return_data.size)) + 256] = 2
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]:
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    mem[(13 * ceil32(return_data.size)) + 288] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                    mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(13 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[(13 * ceil32(return_data.size)) + 388] = 64
                    mem[(13 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (13 * ceil32(return_data.size)) + 288
                    t = (13 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_e62fbf6aAddress)
                    staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (14 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _403 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _417 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    require _403 + (32 * _417) + 32 <= return_data.size
                    idx = (13 * ceil32(return_data.size)) + _403 + 384
                    s = (14 * ceil32(return_data.size)) + 384
                    while idx < (13 * ceil32(return_data.size)) + _403 + (32 * _417) + 384:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _417:
                        revert with 'NH{q', 50
                    _861 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _925 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _949 = mem[_925]
                        require mem[_925] == mem[_925 + 12 len 20]
                        _973 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_949)
                        mem[mem[64] + 192] = _861
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1005 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_973 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_973 + 260] = this.address
                        mem[_973 + 292] = msg.sender
                        mem[_973 + 324] = _861
                        mem[_973 + 356] = 128
                        _1045 = mem[_1005]
                        mem[_973 + 388] = mem[_1005]
                        mem[_973 + 420 len ceil32(_1045)] = mem[_1005 + 32 len ceil32(_1045)]
                        if ceil32(_1045) > _1045:
                            mem[_973 + _1045 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _861, 128, mem[_973 + 388 len ceil32(_1045) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _926 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _950 = mem[_926]
                        require mem[_926] == mem[_926 + 12 len 20]
                        _974 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_950)
                        mem[mem[64] + 192] = _861
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1007 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_974 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_974 + 260] = this.address
                        mem[_974 + 292] = msg.sender
                        mem[_974 + 324] = _861
                        mem[_974 + 356] = 128
                        _1046 = mem[_1007]
                        mem[_974 + 388] = mem[_1007]
                        mem[_974 + 420 len ceil32(_1046)] = mem[_1007 + 32 len ceil32(_1046)]
                        if ceil32(_1046) > _1046:
                            mem[_974 + _1046 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _861, 128, mem[_974 + 388 len ceil32(_1046) + 32]
                else:
                    mem[(13 * ceil32(return_data.size)) + 288] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
                    mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                    mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(13 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[(13 * ceil32(return_data.size)) + 388] = 64
                    mem[(13 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (13 * ceil32(return_data.size)) + 288
                    t = (13 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_e62fbf6aAddress)
                    staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (14 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _404 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _418 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    require _404 + (32 * _418) + 32 <= return_data.size
                    idx = (13 * ceil32(return_data.size)) + _404 + 384
                    s = (14 * ceil32(return_data.size)) + 384
                    while idx < (13 * ceil32(return_data.size)) + _404 + (32 * _418) + 384:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _418:
                        revert with 'NH{q', 50
                    _862 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _927 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _951 = mem[_927]
                        require mem[_927] == mem[_927 + 12 len 20]
                        _975 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_951)
                        mem[mem[64] + 192] = _862
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1009 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_975 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_975 + 260] = this.address
                        mem[_975 + 292] = msg.sender
                        mem[_975 + 324] = _862
                        mem[_975 + 356] = 128
                        _1047 = mem[_1009]
                        mem[_975 + 388] = mem[_1009]
                        mem[_975 + 420 len ceil32(_1047)] = mem[_1009 + 32 len ceil32(_1047)]
                        if ceil32(_1047) > _1047:
                            mem[_975 + _1047 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _862, 128, mem[_975 + 388 len ceil32(_1047) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _952 = mem[_928]
                        require mem[_928] == mem[_928 + 12 len 20]
                        _976 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_952)
                        mem[mem[64] + 192] = _862
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1011 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_976 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_976 + 260] = this.address
                        mem[_976 + 292] = msg.sender
                        mem[_976 + 324] = _862
                        mem[_976 + 356] = 128
                        _1048 = mem[_1011]
                        mem[_976 + 388] = mem[_1011]
                        mem[_976 + 420 len ceil32(_1048)] = mem[_1011 + 32 len ceil32(_1048)]
                        if ceil32(_1048) > _1048:
                            mem[_976 + _1048 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _862, 128, mem[_976 + 388 len ceil32(_1048) + 32]
            else:
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    mem[(13 * ceil32(return_data.size)) + 288] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                    mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                    mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(13 * ceil32(return_data.size)) + 356] = 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[(13 * ceil32(return_data.size)) + 388] = 64
                    mem[(13 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (13 * ceil32(return_data.size)) + 288
                    t = (13 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_e62fbf6aAddress)
                    staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (14 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _405 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _419 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    require _405 + (32 * _419) + 32 <= return_data.size
                    idx = (13 * ceil32(return_data.size)) + _405 + 384
                    s = (14 * ceil32(return_data.size)) + 384
                    while idx < (13 * ceil32(return_data.size)) + _405 + (32 * _419) + 384:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _419:
                        revert with 'NH{q', 50
                    _863 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _929 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _953 = mem[_929]
                        require mem[_929] == mem[_929 + 12 len 20]
                        _977 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_953)
                        mem[mem[64] + 192] = _863
                        mem[mem[64] + 224] = 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1013 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_977 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_977 + 260] = this.address
                        mem[_977 + 292] = msg.sender
                        mem[_977 + 324] = _863
                        mem[_977 + 356] = 128
                        _1049 = mem[_1013]
                        mem[_977 + 388] = mem[_1013]
                        mem[_977 + 420 len ceil32(_1049)] = mem[_1013 + 32 len ceil32(_1049)]
                        if ceil32(_1049) > _1049:
                            mem[_977 + _1049 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _863, 128, mem[_977 + 388 len ceil32(_1049) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _954 = mem[_930]
                        require mem[_930] == mem[_930 + 12 len 20]
                        _978 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_954)
                        mem[mem[64] + 192] = _863
                        mem[mem[64] + 224] = 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1015 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_978 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_978 + 260] = this.address
                        mem[_978 + 292] = msg.sender
                        mem[_978 + 324] = _863
                        mem[_978 + 356] = 128
                        _1050 = mem[_1015]
                        mem[_978 + 388] = mem[_1015]
                        mem[_978 + 420 len ceil32(_1050)] = mem[_1015 + 32 len ceil32(_1050)]
                        if ceil32(_1050) > _1050:
                            mem[_978 + _1050 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _863, 128, mem[_978 + 388 len ceil32(_1050) + 32]
                else:
                    mem[(13 * ceil32(return_data.size)) + 288] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
                    mem[(13 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
                    mem[(13 * ceil32(return_data.size)) + 352] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[(13 * ceil32(return_data.size)) + 356] = 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    mem[(13 * ceil32(return_data.size)) + 388] = 64
                    mem[(13 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (13 * ceil32(return_data.size)) + 288
                    t = (13 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_e62fbf6aAddress)
                    staticcall sub_e62fbf6aAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], Array(len=2, data=mem[(13 * ceil32(return_data.size)) + 452 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(13 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (14 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _406 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _420 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 'NH{q', 65
                    if (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (14 * ceil32(return_data.size)) + floor32(mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    require _406 + (32 * _420) + 32 <= return_data.size
                    idx = (13 * ceil32(return_data.size)) + _406 + 384
                    s = (14 * ceil32(return_data.size)) + 384
                    while idx < (13 * ceil32(return_data.size)) + _406 + (32 * _420) + 384:
                        require mem[idx] == mem[idx]
                        mem[s] = mem[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if 0 >= _420:
                        revert with 'NH{q', 50
                    _864 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _955 = mem[_931]
                        require mem[_931] == mem[_931 + 12 len 20]
                        _979 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_955)
                        mem[mem[64] + 192] = _864
                        mem[mem[64] + 224] = 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1017 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_979 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_979 + 260] = this.address
                        mem[_979 + 292] = msg.sender
                        mem[_979 + 324] = _864
                        mem[_979 + 356] = 128
                        _1051 = mem[_1017]
                        mem[_979 + 388] = mem[_1017]
                        mem[_979 + 420 len ceil32(_1051)] = mem[_1017 + 32 len ceil32(_1051)]
                        if ceil32(_1051) > _1051:
                            mem[_979 + _1051 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _864, 128, mem[_979 + 388 len ceil32(_1051) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _956 = mem[_932]
                        require mem[_932] == mem[_932 + 12 len 20]
                        _980 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_956)
                        mem[mem[64] + 192] = _864
                        mem[mem[64] + 224] = 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1019 = mem[64]
                        mem[64] = mem[64] + 256
                        mem[_980 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_980 + 260] = this.address
                        mem[_980 + 292] = msg.sender
                        mem[_980 + 324] = _864
                        mem[_980 + 356] = 128
                        _1052 = mem[_1019]
                        mem[_980 + 388] = mem[_1019]
                        mem[_980 + 420 len ceil32(_1052)] = mem[_1019 + 32 len ceil32(_1052)]
                        if ceil32(_1052) > _1052:
                            mem[_980 + _1052 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _864, 128, mem[_980 + 388 len ceil32(_1052) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
