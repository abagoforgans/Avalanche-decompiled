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
address sub_4b321d05Address;
address sub_304508cdAddress;

function sub_218377a0(?) {
    return sub_218377a0Address
}

function sub_304508cd(?) {
    return sub_304508cdAddress
}

function sub_4b321d05(?) {
    return sub_4b321d05Address
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
    if ext_call.return_data[32] != 0:
        revert with 0, 'JoeLiquidator: Cannot liquidate account with non-zero liquidity'
    if not ext_call.return_data[64]:
        revert with 0, 'JoeLiquidator: Cannot liquidate account with zero shortfall'
    require ext_code.size(sub_897857b8Address)
    staticcall sub_897857b8Address.oracle() with:
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
    require ext_code.size(sub_897857b8Address)
    staticcall sub_897857b8Address.liquidationIncentiveMantissa() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 100] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args arg2
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 100] = arg3
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args arg3
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(arg2)
    staticcall arg2.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(arg3)
    staticcall arg3.exchangeRateStored() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    mem[(12 * ceil32(return_data.size)) + 128] = 0
    mem[(12 * ceil32(return_data.size)) + 192] = 23
    mem[(12 * ceil32(return_data.size)) + 224] = 'multiplication overflow'
    if not ext_call.return_data[0]:
        mem[(12 * ceil32(return_data.size)) + 160] = 0
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        if 10^18 * 0 / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * 0 / 10^18 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
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
                _617 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                _629 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                    revert with 0, 65
                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                mem[(14 * ceil32(return_data.size)) + 352] = _629
                require return_data.size >= _617 + (32 * _629) + 32
                mem[(14 * ceil32(return_data.size)) + 384 len 32 * _629] = mem[(13 * ceil32(return_data.size)) + _617 + 384 len 32 * _629]
                if 0 >= _629:
                    revert with 0, 50
                _1049 = mem[(14 * ceil32(return_data.size)) + 384]
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1109 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1133 = mem[_1109]
                    require mem[_1109] == mem[_1109 + 12 len 20]
                    _1157 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_1133)
                    mem[mem[64] + 192] = _1049
                    mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    _1158 = mem[64]
                    mem[mem[64]] = 224
                    mem[64] = mem[64] + 256
                    mem[_1157 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_1157 + 260] = this.address
                    mem[_1157 + 292] = msg.sender
                    mem[_1157 + 324] = _1049
                    mem[_1157 + 356] = 128
                    _1205 = mem[_1158]
                    mem[_1157 + 388] = mem[_1158]
                    mem[_1157 + 420 len ceil32(_1205)] = mem[_1158 + 32 len ceil32(_1205)]
                    if ceil32(_1205) > _1205:
                        mem[_1157 + _1205 + 420] = 0
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(msg.sender), _1049, 128, mem[_1157 + 388 len ceil32(_1205) + 32]
                else:
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1134 = mem[_1110]
                    require mem[_1110] == mem[_1110 + 12 len 20]
                    _1159 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_1134)
                    mem[mem[64] + 192] = _1049
                    mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    _1160 = mem[64]
                    mem[mem[64]] = 224
                    mem[64] = mem[64] + 256
                    mem[_1159 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_1159 + 260] = this.address
                    mem[_1159 + 292] = msg.sender
                    mem[_1159 + 324] = _1049
                    mem[_1159 + 356] = 128
                    _1206 = mem[_1160]
                    mem[_1159 + 388] = mem[_1160]
                    mem[_1159 + 420 len ceil32(_1206)] = mem[_1160 + 32 len ceil32(_1206)]
                    if ceil32(_1206) > _1206:
                        mem[_1159 + _1206 + 420] = 0
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(msg.sender), _1049, 128, mem[_1159 + 388 len ceil32(_1206) + 32]
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
                _618 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                _630 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                    revert with 0, 65
                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                mem[(14 * ceil32(return_data.size)) + 352] = _630
                require return_data.size >= _618 + (32 * _630) + 32
                mem[(14 * ceil32(return_data.size)) + 384 len 32 * _630] = mem[(13 * ceil32(return_data.size)) + _618 + 384 len 32 * _630]
                if 0 >= _630:
                    revert with 0, 50
                _1050 = mem[(14 * ceil32(return_data.size)) + 384]
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1135 = mem[_1111]
                    require mem[_1111] == mem[_1111 + 12 len 20]
                    _1161 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_1135)
                    mem[mem[64] + 192] = _1050
                    mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    _1162 = mem[64]
                    mem[mem[64]] = 224
                    mem[64] = mem[64] + 256
                    mem[_1161 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_1161 + 260] = this.address
                    mem[_1161 + 292] = msg.sender
                    mem[_1161 + 324] = _1050
                    mem[_1161 + 356] = 128
                    _1207 = mem[_1162]
                    mem[_1161 + 388] = mem[_1162]
                    mem[_1161 + 420 len ceil32(_1207)] = mem[_1162 + 32 len ceil32(_1207)]
                    if ceil32(_1207) > _1207:
                        mem[_1161 + _1207 + 420] = 0
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(msg.sender), _1050, 128, mem[_1161 + 388 len ceil32(_1207) + 32]
                else:
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1136 = mem[_1112]
                    require mem[_1112] == mem[_1112 + 12 len 20]
                    _1163 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_1136)
                    mem[mem[64] + 192] = _1050
                    mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                    _1164 = mem[64]
                    mem[mem[64]] = 224
                    mem[64] = mem[64] + 256
                    mem[_1163 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_1163 + 260] = this.address
                    mem[_1163 + 292] = msg.sender
                    mem[_1163 + 324] = _1050
                    mem[_1163 + 356] = 128
                    _1208 = mem[_1164]
                    mem[_1163 + 388] = mem[_1164]
                    mem[_1163 + 420 len ceil32(_1208)] = mem[_1164 + 32 len ceil32(_1208)]
                    if ceil32(_1208) > _1208:
                        mem[_1163 + _1208 + 420] = 0
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(msg.sender), _1050, 128, mem[_1163 + 388 len ceil32(_1208) + 32]
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
                _619 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                _631 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                    revert with 0, 65
                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                mem[(14 * ceil32(return_data.size)) + 352] = _631
                require return_data.size >= _619 + (32 * _631) + 32
                mem[(14 * ceil32(return_data.size)) + 384 len 32 * _631] = mem[(13 * ceil32(return_data.size)) + _619 + 384 len 32 * _631]
                if 0 >= _631:
                    revert with 0, 50
                _1051 = mem[(14 * ceil32(return_data.size)) + 384]
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1137 = mem[_1113]
                    require mem[_1113] == mem[_1113 + 12 len 20]
                    _1165 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_1137)
                    mem[mem[64] + 192] = _1051
                    mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    _1166 = mem[64]
                    mem[mem[64]] = 224
                    mem[64] = mem[64] + 256
                    mem[_1165 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_1165 + 260] = this.address
                    mem[_1165 + 292] = msg.sender
                    mem[_1165 + 324] = _1051
                    mem[_1165 + 356] = 128
                    _1209 = mem[_1166]
                    mem[_1165 + 388] = mem[_1166]
                    mem[_1165 + 420 len ceil32(_1209)] = mem[_1166 + 32 len ceil32(_1209)]
                    if ceil32(_1209) > _1209:
                        mem[_1165 + _1209 + 420] = 0
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(msg.sender), _1051, 128, mem[_1165 + 388 len ceil32(_1209) + 32]
                else:
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1138 = mem[_1114]
                    require mem[_1114] == mem[_1114 + 12 len 20]
                    _1167 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_1138)
                    mem[mem[64] + 192] = _1051
                    mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    _1168 = mem[64]
                    mem[mem[64]] = 224
                    mem[64] = mem[64] + 256
                    mem[_1167 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_1167 + 260] = this.address
                    mem[_1167 + 292] = msg.sender
                    mem[_1167 + 324] = _1051
                    mem[_1167 + 356] = 128
                    _1210 = mem[_1168]
                    mem[_1167 + 388] = mem[_1168]
                    mem[_1167 + 420 len ceil32(_1210)] = mem[_1168 + 32 len ceil32(_1210)]
                    if ceil32(_1210) > _1210:
                        mem[_1167 + _1210 + 420] = 0
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(msg.sender), _1051, 128, mem[_1167 + 388 len ceil32(_1210) + 32]
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
                _620 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                _632 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                    revert with 0, 65
                if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                mem[(14 * ceil32(return_data.size)) + 352] = _632
                require return_data.size >= _620 + (32 * _632) + 32
                mem[(14 * ceil32(return_data.size)) + 384 len 32 * _632] = mem[(13 * ceil32(return_data.size)) + _620 + 384 len 32 * _632]
                if 0 >= _632:
                    revert with 0, 50
                _1052 = mem[(14 * ceil32(return_data.size)) + 384]
                if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1139 = mem[_1115]
                    require mem[_1115] == mem[_1115 + 12 len 20]
                    _1169 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_1139)
                    mem[mem[64] + 192] = _1052
                    mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    _1170 = mem[64]
                    mem[mem[64]] = 224
                    mem[64] = mem[64] + 256
                    mem[_1169 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_1169 + 260] = this.address
                    mem[_1169 + 292] = msg.sender
                    mem[_1169 + 324] = _1052
                    mem[_1169 + 356] = 128
                    _1211 = mem[_1170]
                    mem[_1169 + 388] = mem[_1170]
                    mem[_1169 + 420 len ceil32(_1211)] = mem[_1170 + 32 len ceil32(_1211)]
                    if ceil32(_1211) > _1211:
                        mem[_1169 + _1211 + 420] = 0
                    require ext_code.size(sub_c62d2751Address)
                    call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(msg.sender), _1052, 128, mem[_1169 + 388 len ceil32(_1211) + 32]
                else:
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.underlying() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1116 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1140 = mem[_1116]
                    require mem[_1116] == mem[_1116 + 12 len 20]
                    _1171 = mem[64]
                    mem[mem[64] + 32] = msg.sender
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = arg2
                    mem[mem[64] + 128] = arg3
                    mem[mem[64] + 160] = address(_1140)
                    mem[mem[64] + 192] = _1052
                    mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    _1172 = mem[64]
                    mem[mem[64]] = 224
                    mem[64] = mem[64] + 256
                    mem[_1171 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                    mem[_1171 + 260] = this.address
                    mem[_1171 + 292] = msg.sender
                    mem[_1171 + 324] = _1052
                    mem[_1171 + 356] = 128
                    _1212 = mem[_1172]
                    mem[_1171 + 388] = mem[_1172]
                    mem[_1171 + 420 len ceil32(_1212)] = mem[_1172 + 32 len ceil32(_1212)]
                    if ceil32(_1212) > _1212:
                        mem[_1171 + _1212 + 420] = 0
                    require ext_code.size(sub_218377a0Address)
                    call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), address(msg.sender), _1052, 128, mem[_1171 + 388 len ceil32(_1212) + 32]
    else:
        if not ext_call.return_data[0]:
            mem[(12 * ceil32(return_data.size)) + 160] = 0
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if 10^18 * 0 / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * 0 / 10^18 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
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
                    _625 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _637 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 0, 65
                    if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = _637
                    require return_data.size >= _625 + (32 * _637) + 32
                    mem[(14 * ceil32(return_data.size)) + 384 len 32 * _637] = mem[(13 * ceil32(return_data.size)) + _625 + 384 len 32 * _637]
                    if 0 >= _637:
                        revert with 0, 50
                    _1057 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1125 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1149 = mem[_1125]
                        require mem[_1125] == mem[_1125 + 12 len 20]
                        _1189 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1149)
                        mem[mem[64] + 192] = _1057
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1190 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1189 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1189 + 260] = this.address
                        mem[_1189 + 292] = msg.sender
                        mem[_1189 + 324] = _1057
                        mem[_1189 + 356] = 128
                        _1221 = mem[_1190]
                        mem[_1189 + 388] = mem[_1190]
                        mem[_1189 + 420 len ceil32(_1221)] = mem[_1190 + 32 len ceil32(_1221)]
                        if ceil32(_1221) > _1221:
                            mem[_1189 + _1221 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1057, 128, mem[_1189 + 388 len ceil32(_1221) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1126 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1150 = mem[_1126]
                        require mem[_1126] == mem[_1126 + 12 len 20]
                        _1191 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1150)
                        mem[mem[64] + 192] = _1057
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1192 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1191 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1191 + 260] = this.address
                        mem[_1191 + 292] = msg.sender
                        mem[_1191 + 324] = _1057
                        mem[_1191 + 356] = 128
                        _1222 = mem[_1192]
                        mem[_1191 + 388] = mem[_1192]
                        mem[_1191 + 420 len ceil32(_1222)] = mem[_1192 + 32 len ceil32(_1222)]
                        if ceil32(_1222) > _1222:
                            mem[_1191 + _1222 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1057, 128, mem[_1191 + 388 len ceil32(_1222) + 32]
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
                    _626 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _638 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 0, 65
                    if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = _638
                    require return_data.size >= _626 + (32 * _638) + 32
                    mem[(14 * ceil32(return_data.size)) + 384 len 32 * _638] = mem[(13 * ceil32(return_data.size)) + _626 + 384 len 32 * _638]
                    if 0 >= _638:
                        revert with 0, 50
                    _1058 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1127 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1151 = mem[_1127]
                        require mem[_1127] == mem[_1127 + 12 len 20]
                        _1193 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1151)
                        mem[mem[64] + 192] = _1058
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1194 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1193 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1193 + 260] = this.address
                        mem[_1193 + 292] = msg.sender
                        mem[_1193 + 324] = _1058
                        mem[_1193 + 356] = 128
                        _1223 = mem[_1194]
                        mem[_1193 + 388] = mem[_1194]
                        mem[_1193 + 420 len ceil32(_1223)] = mem[_1194 + 32 len ceil32(_1223)]
                        if ceil32(_1223) > _1223:
                            mem[_1193 + _1223 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1058, 128, mem[_1193 + 388 len ceil32(_1223) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1128 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1152 = mem[_1128]
                        require mem[_1128] == mem[_1128 + 12 len 20]
                        _1195 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1152)
                        mem[mem[64] + 192] = _1058
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1196 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1195 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1195 + 260] = this.address
                        mem[_1195 + 292] = msg.sender
                        mem[_1195 + 324] = _1058
                        mem[_1195 + 356] = 128
                        _1224 = mem[_1196]
                        mem[_1195 + 388] = mem[_1196]
                        mem[_1195 + 420 len ceil32(_1224)] = mem[_1196 + 32 len ceil32(_1224)]
                        if ceil32(_1224) > _1224:
                            mem[_1195 + _1224 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1058, 128, mem[_1195 + 388 len ceil32(_1224) + 32]
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
                    _627 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _639 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 0, 65
                    if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = _639
                    require return_data.size >= _627 + (32 * _639) + 32
                    mem[(14 * ceil32(return_data.size)) + 384 len 32 * _639] = mem[(13 * ceil32(return_data.size)) + _627 + 384 len 32 * _639]
                    if 0 >= _639:
                        revert with 0, 50
                    _1059 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1129 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1153 = mem[_1129]
                        require mem[_1129] == mem[_1129 + 12 len 20]
                        _1197 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1153)
                        mem[mem[64] + 192] = _1059
                        mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1198 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1197 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1197 + 260] = this.address
                        mem[_1197 + 292] = msg.sender
                        mem[_1197 + 324] = _1059
                        mem[_1197 + 356] = 128
                        _1225 = mem[_1198]
                        mem[_1197 + 388] = mem[_1198]
                        mem[_1197 + 420 len ceil32(_1225)] = mem[_1198 + 32 len ceil32(_1225)]
                        if ceil32(_1225) > _1225:
                            mem[_1197 + _1225 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1059, 128, mem[_1197 + 388 len ceil32(_1225) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1130 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1154 = mem[_1130]
                        require mem[_1130] == mem[_1130 + 12 len 20]
                        _1199 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1154)
                        mem[mem[64] + 192] = _1059
                        mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1200 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1199 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1199 + 260] = this.address
                        mem[_1199 + 292] = msg.sender
                        mem[_1199 + 324] = _1059
                        mem[_1199 + 356] = 128
                        _1226 = mem[_1200]
                        mem[_1199 + 388] = mem[_1200]
                        mem[_1199 + 420 len ceil32(_1226)] = mem[_1200 + 32 len ceil32(_1226)]
                        if ceil32(_1226) > _1226:
                            mem[_1199 + _1226 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1059, 128, mem[_1199 + 388 len ceil32(_1226) + 32]
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
                    _628 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _640 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 0, 65
                    if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = _640
                    require return_data.size >= _628 + (32 * _640) + 32
                    mem[(14 * ceil32(return_data.size)) + 384 len 32 * _640] = mem[(13 * ceil32(return_data.size)) + _628 + 384 len 32 * _640]
                    if 0 >= _640:
                        revert with 0, 50
                    _1060 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1131 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1155 = mem[_1131]
                        require mem[_1131] == mem[_1131 + 12 len 20]
                        _1201 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1155)
                        mem[mem[64] + 192] = _1060
                        mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1202 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1201 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1201 + 260] = this.address
                        mem[_1201 + 292] = msg.sender
                        mem[_1201 + 324] = _1060
                        mem[_1201 + 356] = 128
                        _1227 = mem[_1202]
                        mem[_1201 + 388] = mem[_1202]
                        mem[_1201 + 420 len ceil32(_1227)] = mem[_1202 + 32 len ceil32(_1227)]
                        if ceil32(_1227) > _1227:
                            mem[_1201 + _1227 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1060, 128, mem[_1201 + 388 len ceil32(_1227) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1132 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1156 = mem[_1132]
                        require mem[_1132] == mem[_1132 + 12 len 20]
                        _1203 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1156)
                        mem[mem[64] + 192] = _1060
                        mem[mem[64] + 224] = 10^18 * 0 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1204 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1203 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1203 + 260] = this.address
                        mem[_1203 + 292] = msg.sender
                        mem[_1203 + 324] = _1060
                        mem[_1203 + 356] = 128
                        _1228 = mem[_1204]
                        mem[_1203 + 388] = mem[_1204]
                        mem[_1203 + 420 len ceil32(_1228)] = mem[_1204 + 32 len ceil32(_1228)]
                        if ceil32(_1228) > _1228:
                            mem[_1203 + _1228 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1060, 128, mem[_1203 + 388 len ceil32(_1228) + 32]
        else:
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'multiplication overflow', 0
            mem[(12 * ceil32(return_data.size)) + 160] = ext_call.return_data[0] * ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
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
                    _621 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _633 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 0, 65
                    if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = _633
                    require return_data.size >= _621 + (32 * _633) + 32
                    mem[(14 * ceil32(return_data.size)) + 384 len 32 * _633] = mem[(13 * ceil32(return_data.size)) + _621 + 384 len 32 * _633]
                    if 0 >= _633:
                        revert with 0, 50
                    _1053 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1141 = mem[_1117]
                        require mem[_1117] == mem[_1117 + 12 len 20]
                        _1173 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1141)
                        mem[mem[64] + 192] = _1053
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1174 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1173 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1173 + 260] = this.address
                        mem[_1173 + 292] = msg.sender
                        mem[_1173 + 324] = _1053
                        mem[_1173 + 356] = 128
                        _1213 = mem[_1174]
                        mem[_1173 + 388] = mem[_1174]
                        mem[_1173 + 420 len ceil32(_1213)] = mem[_1174 + 32 len ceil32(_1213)]
                        if ceil32(_1213) > _1213:
                            mem[_1173 + _1213 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1053, 128, mem[_1173 + 388 len ceil32(_1213) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1118 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1142 = mem[_1118]
                        require mem[_1118] == mem[_1118 + 12 len 20]
                        _1175 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1142)
                        mem[mem[64] + 192] = _1053
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1176 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1175 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1175 + 260] = this.address
                        mem[_1175 + 292] = msg.sender
                        mem[_1175 + 324] = _1053
                        mem[_1175 + 356] = 128
                        _1214 = mem[_1176]
                        mem[_1175 + 388] = mem[_1176]
                        mem[_1175 + 420 len ceil32(_1214)] = mem[_1176 + 32 len ceil32(_1214)]
                        if ceil32(_1214) > _1214:
                            mem[_1175 + _1214 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1053, 128, mem[_1175 + 388 len ceil32(_1214) + 32]
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
                    _622 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _634 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 0, 65
                    if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = _634
                    require return_data.size >= _622 + (32 * _634) + 32
                    mem[(14 * ceil32(return_data.size)) + 384 len 32 * _634] = mem[(13 * ceil32(return_data.size)) + _622 + 384 len 32 * _634]
                    if 0 >= _634:
                        revert with 0, 50
                    _1054 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1119 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1143 = mem[_1119]
                        require mem[_1119] == mem[_1119 + 12 len 20]
                        _1177 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1143)
                        mem[mem[64] + 192] = _1054
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1178 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1177 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1177 + 260] = this.address
                        mem[_1177 + 292] = msg.sender
                        mem[_1177 + 324] = _1054
                        mem[_1177 + 356] = 128
                        _1215 = mem[_1178]
                        mem[_1177 + 388] = mem[_1178]
                        mem[_1177 + 420 len ceil32(_1215)] = mem[_1178 + 32 len ceil32(_1215)]
                        if ceil32(_1215) > _1215:
                            mem[_1177 + _1215 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1054, 128, mem[_1177 + 388 len ceil32(_1215) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1144 = mem[_1120]
                        require mem[_1120] == mem[_1120 + 12 len 20]
                        _1179 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1144)
                        mem[mem[64] + 192] = _1054
                        mem[mem[64] + 224] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        _1180 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1179 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1179 + 260] = this.address
                        mem[_1179 + 292] = msg.sender
                        mem[_1179 + 324] = _1054
                        mem[_1179 + 356] = 128
                        _1216 = mem[_1180]
                        mem[_1179 + 388] = mem[_1180]
                        mem[_1179 + 420 len ceil32(_1216)] = mem[_1180 + 32 len ceil32(_1216)]
                        if ceil32(_1216) > _1216:
                            mem[_1179 + _1216 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1054, 128, mem[_1179 + 388 len ceil32(_1216) + 32]
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
                    _623 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _635 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 0, 65
                    if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = _635
                    require return_data.size >= _623 + (32 * _635) + 32
                    mem[(14 * ceil32(return_data.size)) + 384 len 32 * _635] = mem[(13 * ceil32(return_data.size)) + _623 + 384 len 32 * _635]
                    if 0 >= _635:
                        revert with 0, 50
                    _1055 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1121 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1145 = mem[_1121]
                        require mem[_1121] == mem[_1121 + 12 len 20]
                        _1181 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1145)
                        mem[mem[64] + 192] = _1055
                        mem[mem[64] + 224] = 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1182 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1181 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1181 + 260] = this.address
                        mem[_1181 + 292] = msg.sender
                        mem[_1181 + 324] = _1055
                        mem[_1181 + 356] = 128
                        _1217 = mem[_1182]
                        mem[_1181 + 388] = mem[_1182]
                        mem[_1181 + 420 len ceil32(_1217)] = mem[_1182 + 32 len ceil32(_1217)]
                        if ceil32(_1217) > _1217:
                            mem[_1181 + _1217 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1055, 128, mem[_1181 + 388 len ceil32(_1217) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1122 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1146 = mem[_1122]
                        require mem[_1122] == mem[_1122 + 12 len 20]
                        _1183 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1146)
                        mem[mem[64] + 192] = _1055
                        mem[mem[64] + 224] = 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1184 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1183 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1183 + 260] = this.address
                        mem[_1183 + 292] = msg.sender
                        mem[_1183 + 324] = _1055
                        mem[_1183 + 356] = 128
                        _1218 = mem[_1184]
                        mem[_1183 + 388] = mem[_1184]
                        mem[_1183 + 420 len ceil32(_1218)] = mem[_1184 + 32 len ceil32(_1218)]
                        if ceil32(_1218) > _1218:
                            mem[_1183 + _1218 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1055, 128, mem[_1183 + 388 len ceil32(_1218) + 32]
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
                    _624 = mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    require mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 <= test266151307()
                    require (13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 383 < (13 * ceil32(return_data.size)) + return_data.size + 352
                    _636 = mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]
                    if mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352] > test266151307():
                        revert with 0, 65
                    if (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353 > test266151307() or ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (14 * ceil32(return_data.size)) + ceil32(32 * mem[(13 * ceil32(return_data.size)) + mem[(13 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >> 32 + 352]) + 353
                    mem[(14 * ceil32(return_data.size)) + 352] = _636
                    require return_data.size >= _624 + (32 * _636) + 32
                    mem[(14 * ceil32(return_data.size)) + 384 len 32 * _636] = mem[(13 * ceil32(return_data.size)) + _624 + 384 len 32 * _636]
                    if 0 >= _636:
                        revert with 0, 50
                    _1056 = mem[(14 * ceil32(return_data.size)) + 384]
                    if address(ext_call.return_data[0]) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1123 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1147 = mem[_1123]
                        require mem[_1123] == mem[_1123 + 12 len 20]
                        _1185 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1147)
                        mem[mem[64] + 192] = _1056
                        mem[mem[64] + 224] = 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1186 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1185 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1185 + 260] = this.address
                        mem[_1185 + 292] = msg.sender
                        mem[_1185 + 324] = _1056
                        mem[_1185 + 356] = 128
                        _1219 = mem[_1186]
                        mem[_1185 + 388] = mem[_1186]
                        mem[_1185 + 420 len ceil32(_1219)] = mem[_1186 + 32 len ceil32(_1219)]
                        if ceil32(_1219) > _1219:
                            mem[_1185 + _1219 + 420] = 0
                        require ext_code.size(sub_c62d2751Address)
                        call sub_c62d2751Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1056, 128, mem[_1185 + 388 len ceil32(_1219) + 32]
                    else:
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.underlying() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1124 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1148 = mem[_1124]
                        require mem[_1124] == mem[_1124 + 12 len 20]
                        _1187 = mem[64]
                        mem[mem[64] + 32] = msg.sender
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = arg2
                        mem[mem[64] + 128] = arg3
                        mem[mem[64] + 160] = address(_1148)
                        mem[mem[64] + 192] = _1056
                        mem[mem[64] + 224] = 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                        _1188 = mem[64]
                        mem[mem[64]] = 224
                        mem[64] = mem[64] + 256
                        mem[_1187 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                        mem[_1187 + 260] = this.address
                        mem[_1187 + 292] = msg.sender
                        mem[_1187 + 324] = _1056
                        mem[_1187 + 356] = 128
                        _1220 = mem[_1188]
                        mem[_1187 + 388] = mem[_1188]
                        mem[_1187 + 420 len ceil32(_1220)] = mem[_1188 + 32 len ceil32(_1220)]
                        if ceil32(_1220) > _1220:
                            mem[_1187 + _1220 + 420] = 0
                        require ext_code.size(sub_218377a0Address)
                        call sub_218377a0Address.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args address(this.address), address(msg.sender), _1056, 128, mem[_1187 + 388 len ceil32(_1220) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
