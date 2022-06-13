contract main {




// =====================  Runtime code  =====================


#
#  - sub_d7176ca9(?)
#
const sub_870d917c(?) = 18

const sub_ad7e5497(?) = 9

const BASIS_POINTS_DIVISOR = 10000

const PRICE_PRECISION = 1000000000000 * 10^18


uint8 stor0; offset 160
uint128 stor0; offset 160
address govAddress;

function gov() payable {
    return govAddress
}

function sub_c6f1d676(?) payable {
    return bool(uint8(stor0.field_160))
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Governable: forbidden'
    govAddress = arg1
}

function sub_9b0183c3(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Governable: forbidden'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function sub_fbdb05ca(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        _15 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(_15)
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return (_21 * arg2.length)
}

function sub_2413c8c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].totalStaked() with:
                gas gas_remaining wei
        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(64 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(64 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}

function sub_2ac0184c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = mem[mem[64]]
    while idx < arg2.length:
        require idx < mem[96]
        _25 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(_25)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 30
        mem[_32 + 32] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] <= s:
            idx = idx + 1
            s = s - ext_call.return_data[0]
            continue 
        _33 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _33 + 68] = mem[idx + _32 + 32]
            idx = idx + 32
            continue 
        mem[_33 + 68] = mem[_33 + 70 len 30]
        revert with memory
          from mem[64]
           len _33 + -mem[64] + 100
    return s
}

function sub_86d4d0f5(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _34 = mem[(32 * idx) + 128]
            mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            staticcall arg1.feeReserves(address arg1) with:
                    gas gas_remaining wei
                   args address(_34)
            mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _37 = mem[(32 * idx) + 128]
            mem[(64 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            staticcall arg1.feeReserves(address arg1) with:
                    gas gas_remaining wei
                   args address(_37)
            mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = mem[(32 * arg2.length) + 128]
    s = 0
    while arg2.length < 32 * mem[(32 * arg2.length) + 128]:
        mem[(66 * arg2.length) + 224] = mem[(34 * arg2.length) + 160]
        s = arg2.length + 32
        continue 
    return 32, mem[(64 * arg2.length) + 192 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}

function getTokenBalances(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _36 = mem[(32 * idx) + 128]
            if not mem[(32 * idx) + 140 len 20]:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(arg1)
            else:
                mem[(64 * arg2.length) + 164] = arg1
                require ext_code.size(address(_36))
                staticcall address(_36).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _37 = mem[(32 * idx) + 128]
            if not mem[(32 * idx) + 140 len 20]:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(arg1)
            else:
                mem[(64 * arg2.length) + 164] = arg1
                require ext_code.size(address(_37))
                staticcall address(_37).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = mem[(32 * arg2.length) + 128]
    mem[(64 * arg2.length) + 224 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[(64 * arg2.length) + 192 len (32 * mem[(32 * arg2.length) + 128]) + 32]
}

function sub_937a0be8(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 2 * arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = 2 * arg2.length
    mem[64] = (98 * arg2.length) + 160
    if not uint255(arg2.length):
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            _47 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_47))
            staticcall address(_47).claimable(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 2 * idx < mem[(32 * arg2.length) + 128]
            mem[(64 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_47))
            staticcall address(_47).getTokensPerInterval() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (2 * idx) + 1 < mem[(32 * arg2.length) + 128]
            mem[(32 * (2 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        _46 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _46) + 32]
    mem[(32 * arg2.length) + 160 len 64 * arg2.length] = call.data[calldata.size len 64 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _53 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(_53))
        staticcall address(_53).claimable(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 * idx < mem[(32 * arg2.length) + 128]
        mem[(64 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_code.size(address(_53))
        staticcall address(_53).getTokensPerInterval() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (2 * idx) + 1 < mem[(32 * arg2.length) + 128]
        mem[(32 * (2 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    _52 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _52) + 32]
}

function sub_2e3e3342(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 2 * arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = 2 * arg2.length
    if not uint255(arg2.length):
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _51 = mem[(32 * idx) + 128]
            if not mem[(32 * idx) + 140 len 20]:
                require 2 * idx < 2 * arg2.length
                mem[(64 * idx) + (32 * arg2.length) + 160] = eth.balance(arg1)
                require (2 * idx) + 1 < 2 * arg2.length
                mem[(32 * (2 * idx) + 1) + (32 * arg2.length) + 160] = 0
            else:
                mem[(98 * arg2.length) + 164] = arg1
                require ext_code.size(address(_51))
                staticcall address(_51).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * idx < 2 * arg2.length
                mem[(64 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(_51))
                staticcall address(_51).0x18160ddd with:
                        gas gas_remaining wei
                mem[(98 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (2 * idx) + 1 < 2 * arg2.length
                mem[(32 * (2 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 64 * arg2.length] = call.data[calldata.size len 64 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _55 = mem[(32 * idx) + 128]
            if not mem[(32 * idx) + 140 len 20]:
                require 2 * idx < 2 * arg2.length
                mem[(64 * idx) + (32 * arg2.length) + 160] = eth.balance(arg1)
                require (2 * idx) + 1 < 2 * arg2.length
                mem[(32 * (2 * idx) + 1) + (32 * arg2.length) + 160] = 0
            else:
                mem[(98 * arg2.length) + 164] = arg1
                require ext_code.size(address(_55))
                staticcall address(_55).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 2 * idx < 2 * arg2.length
                mem[(64 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(_55))
                staticcall address(_55).0x18160ddd with:
                        gas gas_remaining wei
                mem[(98 * arg2.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (2 * idx) + 1 < 2 * arg2.length
                mem[(32 * (2 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(98 * arg2.length) + 160] = 32
    mem[(98 * arg2.length) + 192] = 2 * arg2.length
    mem[(98 * arg2.length) + 224 len 2 * Mask(251, 4, arg2.length)] = mem[(32 * arg2.length) + 160 len 2 * Mask(251, 4, arg2.length)]
    return memory
      from (98 * arg2.length) + 160
       len (64 * arg2.length) + 64
}

function sub_f3535e6c(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.getMinPrice(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getMaxPrice(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.tokenDecimals(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.tokenDecimals(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.poolAmounts(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.reservedAmounts(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.bufferAmounts(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not 0 / ext_call.return_data[0]:
        if not 10^ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(arg1)
        staticcall arg1.maxUsdgAmounts(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return (0 / 10^ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / 10^ext_call.return_data[0] <= 0 / ext_call.return_data[0]:
                return (0 / 10^ext_call.return_data[0])
            return (0 / ext_call.return_data[0])
        if 10^ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / 10^ext_call.return_data[0] <= 0 / ext_call.return_data[0]:
                return (0 / 10^ext_call.return_data[0])
            return (0 / ext_call.return_data[0])
        if 1000000000000 * 10^18 * 10^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 1000000000000 * 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / 10^ext_call.return_data[0] <= 1000000000000 * 10^18 * 10^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]:
            return (0 / 10^ext_call.return_data[0])
    else:
        if 10^ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not 10^ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(arg1)
        staticcall arg1.maxUsdgAmounts(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return (10^ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 10^ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^ext_call.return_data[0] <= 0 / ext_call.return_data[0]:
                return (10^ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^ext_call.return_data[0])
            return (0 / ext_call.return_data[0])
        if 10^ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 10^ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^ext_call.return_data[0] <= 0 / ext_call.return_data[0]:
                return (10^ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^ext_call.return_data[0])
            return (0 / ext_call.return_data[0])
        if 1000000000000 * 10^18 * 10^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 1000000000000 * 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 10^ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^ext_call.return_data[0] <= 1000000000000 * 10^18 * 10^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]:
            return (10^ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10^ext_call.return_data[0])
    return (1000000000000 * 10^18 * 10^ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0])
}

function sub_a4543ead(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require Mask(255, 1, arg2.length) <= test266151307()
    mem[(32 * arg2.length) + 128] = Mask(255, 1, arg2.length)
    mem[64] = (32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160
    if not Mask(255, 1, arg2.length):
        if var27003 >= var27001 / 2:
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160] = 32
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 192] = Mask(255, 1, arg2.length)
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 224 len floor32(arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(arg2.length)]
            return memory
              from (32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160
               len (96 * Mask(255, 1, arg2.length)) + 64
        require 2 * var29001 < arg2.length
        require (2 * var31004) + 1 < arg2.length
        _266 = mem[(32 * var33001) + 128]
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160] = 0xe6a4390500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 164] = address(var33004)
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 196] = address(_266)
        require ext_code.size(arg1)
        staticcall arg1.mem[var35003 len 4] with:
                gas gas_remaining wei
               args mem[var35003 + 4 len var35004 - 4]
        mem[var35005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _418 = mem[var39002]
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 164] = address(_418)
        require ext_code.size(address(var39005))
        staticcall var41002.mem[var41003 len 4] with:
                gas gas_remaining wei
               args mem[var41003 + 4 len var41004 - 4]
        mem[var41005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 * var45006 < Mask(255, 1, arg2.length)
        mem[(32 * var47001) + (32 * arg2.length) + 160] = var47003
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 164] = address(var47004)
        require ext_code.size(address(var47005))
        staticcall var49002.mem[var49003 len 4] with:
                gas gas_remaining wei
               args mem[var49003 + 4 len var49004 - 4]
        mem[var49005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (2 * var53006) + 1 < Mask(255, 1, arg2.length)
        mem[(32 * var55001) + (32 * arg2.length) + 160] = var55003
        if var59003 < var59001 / 2:
            require 2 * var61001 < arg2.length
            # nil
        else:
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160] = 32
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 192] = Mask(255, 1, arg2.length)
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 224 len floor32(arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(arg2.length)]
            return memory
              from (32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160
               len (96 * Mask(255, 1, arg2.length)) + 64
    else:
        mem[(32 * arg2.length) + 160 len 32 * Mask(250, 1, arg2.length)] = call.data[calldata.size len 32 * Mask(250, 1, arg2.length)]
        if var28003 >= var28001 / 2:
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160] = 32
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 192] = Mask(255, 1, arg2.length)
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 224 len floor32(arg2.length)] = call.data[calldata.size len floor32(arg2.length)]
            return memory
              from (32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160
               len (96 * Mask(255, 1, arg2.length)) + 64
        require 2 * var30001 < arg2.length
        require (2 * var32004) + 1 < arg2.length
        _269 = mem[(32 * var34001) + 128]
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160] = 0xe6a4390500000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 164] = address(var34004)
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 196] = address(_269)
        require ext_code.size(arg1)
        staticcall arg1.mem[var36003 len 4] with:
                gas gas_remaining wei
               args mem[var36003 + 4 len var36004 - 4]
        mem[var36005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _421 = mem[var40002]
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 164] = address(_421)
        require ext_code.size(address(var40005))
        staticcall var42002.mem[var42003 len 4] with:
                gas gas_remaining wei
               args mem[var42003 + 4 len var42004 - 4]
        mem[var42005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 * var46006 < Mask(255, 1, arg2.length)
        mem[(32 * var48001) + (32 * arg2.length) + 160] = var48003
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 164] = address(var48004)
        require ext_code.size(address(var48005))
        staticcall var50002.mem[var50003 len 4] with:
                gas gas_remaining wei
               args mem[var50003 + 4 len var50004 - 4]
        mem[var50005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (2 * var54006) + 1 < Mask(255, 1, arg2.length)
        mem[(32 * var56001) + (32 * arg2.length) + 160] = var56003
        if var60003 < var60001 / 2:
            require 2 * var62001 < arg2.length
            # nil
        else:
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160] = 32
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 192] = Mask(255, 1, arg2.length)
            mem[(32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 224 len floor32(arg2.length)] = call.data[calldata.size len floor32(arg2.length)]
            return memory
              from (32 * arg2.length) + (32 * Mask(250, 1, arg2.length)) + 160
               len (96 * Mask(255, 1, arg2.length)) + 64
}

function getPrices(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 6 * arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = 6 * arg2.length
    if not 6 * arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _99 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            staticcall arg1.getPrice(address arg1, bool arg2, bool arg3, bool arg4) with:
                    gas gas_remaining wei
                   args mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 164], 1, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 6 * idx < 6 * arg2.length
            mem[(32 * 6 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 228] = 1
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 260] = 0
            require ext_code.size(arg1)
            staticcall arg1.getPrice(address arg1, bool arg2, bool arg3, bool arg4) with:
                    gas gas_remaining wei
                   args address(_99), 0, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (6 * idx) + 1 < 6 * arg2.length
            mem[(32 * (6 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(arg1)
            staticcall arg1.getPrimaryPrice(address arg1, bool arg2) with:
                    gas gas_remaining wei
                   args address(_99), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (6 * idx) + 2 < 6 * arg2.length
            mem[(32 * (6 * idx) + 2) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 196] = 0
            require ext_code.size(arg1)
            staticcall arg1.getPrimaryPrice(address arg1, bool arg2) with:
                    gas gas_remaining wei
                   args address(_99), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (6 * idx) + 3 < 6 * arg2.length
            mem[(32 * (6 * idx) + 3) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(arg1)
            staticcall arg1.isAdjustmentAdditive(address arg1) with:
                    gas gas_remaining wei
                   args address(_99)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (6 * idx) + 4 < 6 * arg2.length
            if ext_call.return_data[0]:
                mem[(32 * (6 * idx) + 4) + (32 * arg2.length) + 160] = 1
            else:
                mem[(32 * (6 * idx) + 4) + (32 * arg2.length) + 160] = 0
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 164] = address(_99)
            require ext_code.size(arg1)
            staticcall arg1.adjustmentBasisPoints(address arg1) with:
                    gas gas_remaining wei
                   args address(_99)
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (6 * idx) + 5 < 6 * arg2.length
            mem[(32 * (6 * idx) + 5) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * 6 * arg2.length] = call.data[calldata.size len 32 * 6 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _105 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            staticcall arg1.getPrice(address arg1, bool arg2, bool arg3, bool arg4) with:
                    gas gas_remaining wei
                   args mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 164], 1, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 6 * idx < 6 * arg2.length
            mem[(32 * 6 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 228] = 1
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 260] = 0
            require ext_code.size(arg1)
            staticcall arg1.getPrice(address arg1, bool arg2, bool arg3, bool arg4) with:
                    gas gas_remaining wei
                   args address(_105), 0, 1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (6 * idx) + 1 < 6 * arg2.length
            mem[(32 * (6 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(arg1)
            staticcall arg1.getPrimaryPrice(address arg1, bool arg2) with:
                    gas gas_remaining wei
                   args address(_105), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (6 * idx) + 2 < 6 * arg2.length
            mem[(32 * (6 * idx) + 2) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 196] = 0
            require ext_code.size(arg1)
            staticcall arg1.getPrimaryPrice(address arg1, bool arg2) with:
                    gas gas_remaining wei
                   args address(_105), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (6 * idx) + 3 < 6 * arg2.length
            mem[(32 * (6 * idx) + 3) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(arg1)
            staticcall arg1.isAdjustmentAdditive(address arg1) with:
                    gas gas_remaining wei
                   args address(_105)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (6 * idx) + 4 < 6 * arg2.length
            if ext_call.return_data[0]:
                mem[(32 * (6 * idx) + 4) + (32 * arg2.length) + 160] = 1
            else:
                mem[(32 * (6 * idx) + 4) + (32 * arg2.length) + 160] = 0
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 164] = address(_105)
            require ext_code.size(arg1)
            staticcall arg1.adjustmentBasisPoints(address arg1) with:
                    gas gas_remaining wei
                   args address(_105)
            mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (6 * idx) + 5 < 6 * arg2.length
            mem[(32 * (6 * idx) + 5) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(32 * arg2.length) + (32 * 6 * arg2.length) + 224 len floor32(6 * arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(6 * arg2.length)]
    return Array(len=6 * arg2.length, data=mem[(32 * arg2.length) + 160 len floor32(6 * arg2.length)], mem[(32 * arg2.length) + (32 * 6 * arg2.length) + floor32(6 * arg2.length) + 224 len (32 * 6 * arg2.length) - floor32(6 * arg2.length)]), 
}

function sub_48211934(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 7 * arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = 7 * arg2.length
    if not 7 * arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _101 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].pairAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 7 * idx < 7 * arg2.length
            mem[(32 * 7 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 7 * arg2.length) + 164] = arg1
            require ext_code.size(address(_101))
            staticcall address(_101).getVestedAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg2.length) + (32 * 7 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 1 < 7 * arg2.length
            mem[(32 * (7 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require idx < arg2.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 2 < 7 * arg2.length
            mem[(32 * (7 * idx) + 2) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_101))
            staticcall address(_101).claimedAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 3 < 7 * arg2.length
            mem[(32 * (7 * idx) + 3) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_101))
            staticcall address(_101).claimable(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 4 < 7 * arg2.length
            mem[(32 * (7 * idx) + 4) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_101))
            staticcall address(_101).getMaxVestableAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 5 < 7 * arg2.length
            mem[(32 * (7 * idx) + 5) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 7 * arg2.length) + 164] = arg1
            require ext_code.size(address(_101))
            staticcall address(_101).getCombinedAverageStakedAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg2.length) + (32 * 7 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 6 < 7 * arg2.length
            mem[(32 * (7 * idx) + 6) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg2.length) + 160 len 32 * 7 * arg2.length] = call.data[calldata.size len 32 * 7 * arg2.length]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _107 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].pairAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 7 * idx < 7 * arg2.length
            mem[(32 * 7 * idx) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 7 * arg2.length) + 164] = arg1
            require ext_code.size(address(_107))
            staticcall address(_107).getVestedAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg2.length) + (32 * 7 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 1 < 7 * arg2.length
            mem[(32 * (7 * idx) + 1) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require idx < arg2.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 2 < 7 * arg2.length
            mem[(32 * (7 * idx) + 2) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_107))
            staticcall address(_107).claimedAmounts(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 3 < 7 * arg2.length
            mem[(32 * (7 * idx) + 3) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_107))
            staticcall address(_107).claimable(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 4 < 7 * arg2.length
            mem[(32 * (7 * idx) + 4) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_code.size(address(_107))
            staticcall address(_107).getMaxVestableAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 5 < 7 * arg2.length
            mem[(32 * (7 * idx) + 5) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            mem[(32 * arg2.length) + (32 * 7 * arg2.length) + 164] = arg1
            require ext_code.size(address(_107))
            staticcall address(_107).getCombinedAverageStakedAmount(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(32 * arg2.length) + (32 * 7 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (7 * idx) + 6 < 7 * arg2.length
            mem[(32 * (7 * idx) + 6) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(32 * arg2.length) + (32 * 7 * arg2.length) + 224 len floor32(7 * arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(7 * arg2.length)]
    return Array(len=7 * arg2.length, data=mem[(32 * arg2.length) + 160 len floor32(7 * arg2.length)], mem[(32 * arg2.length) + (32 * 7 * arg2.length) + floor32(7 * arg2.length) + 224 len (32 * 7 * arg2.length) - floor32(7 * arg2.length)]), 
}

function sub_440f018c(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.getMinPrice(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.tokenDecimals(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg4:
        if not 10^ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(arg1)
        staticcall arg1.stableTokens(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if not ext_call.return_data[0]:
            staticcall arg1.swapFeeBasisPoints() with:
                    gas gas_remaining wei
        else:
            staticcall arg1.stableTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            if ext_call.return_data[0]:
                staticcall arg1.stableSwapFeeBasisPoints() with:
                        gas gas_remaining wei
            else:
                staticcall arg1.swapFeeBasisPoints() with:
                        gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if ext_call.return_data[0]:
            staticcall arg1.stableTaxBasisPoints() with:
                    gas gas_remaining wei
        else:
            staticcall arg1.taxBasisPoints() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.getFeeBasisPoints(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
                gas gas_remaining wei
               args address(arg2), 0 / 10^ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.getFeeBasisPoints(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
                gas gas_remaining wei
               args address(arg3), 0 / 10^ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0
    else:
        if ext_call.return_data[0] * arg4 / arg4 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * arg4 / 1000000000000 * 10^18:
            if not 10^ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(arg1)
            staticcall arg1.stableTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            if not ext_call.return_data[0]:
                staticcall arg1.swapFeeBasisPoints() with:
                        gas gas_remaining wei
            else:
                staticcall arg1.stableTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                if ext_call.return_data[0]:
                    staticcall arg1.stableSwapFeeBasisPoints() with:
                            gas gas_remaining wei
                else:
                    staticcall arg1.swapFeeBasisPoints() with:
                            gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            if ext_call.return_data[0]:
                staticcall arg1.stableTaxBasisPoints() with:
                        gas gas_remaining wei
            else:
                staticcall arg1.taxBasisPoints() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getFeeBasisPoints(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
                    gas gas_remaining wei
                   args address(arg2), 0 / 10^ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getFeeBasisPoints(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
                    gas gas_remaining wei
                   args address(arg3), 0 / 10^ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0
        else:
            if 10^18 * ext_call.return_data[0] * arg4 / 1000000000000 * 10^18 / ext_call.return_data[0] * arg4 / 1000000000000 * 10^18 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 10^ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(arg1)
            staticcall arg1.stableTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            if not ext_call.return_data[0]:
                staticcall arg1.swapFeeBasisPoints() with:
                        gas gas_remaining wei
            else:
                staticcall arg1.stableTokens(address arg1) with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                if ext_call.return_data[0]:
                    staticcall arg1.stableSwapFeeBasisPoints() with:
                            gas gas_remaining wei
                else:
                    staticcall arg1.swapFeeBasisPoints() with:
                            gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            if ext_call.return_data[0]:
                staticcall arg1.stableTaxBasisPoints() with:
                        gas gas_remaining wei
            else:
                staticcall arg1.taxBasisPoints() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getFeeBasisPoints(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
                    gas gas_remaining wei
                   args address(arg2), 10^18 * ext_call.return_data[0] * arg4 / 1000000000000 * 10^18 / 10^ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getFeeBasisPoints(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
                    gas gas_remaining wei
                   args address(arg3), 10^18 * ext_call.return_data[0] * arg4 / 1000000000000 * 10^18 / 10^ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_dc383cab(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require 9 * arg3.length <= test266151307()
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 9 * arg3.length
    if not 9 * arg3.length:
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            require idx < arg4.length
            require idx < arg5.length
            require ext_code.size(arg1)
            staticcall arg1.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
                    gas gas_remaining wei
                   args address(arg2), address(mem[(32 * idx) + 128]), address(mem[(32 * idx) + (32 * arg3.length) + 160]), bool(mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192])
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 224 len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 256
            require 9 * idx < 9 * arg3.length
            mem[(32 * 9 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            require (9 * idx) + 1 < 9 * arg3.length
            mem[(32 * (9 * idx) + 1) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[32]
            require (9 * idx) + 2 < 9 * arg3.length
            mem[(32 * (9 * idx) + 2) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[64]
            require (9 * idx) + 3 < 9 * arg3.length
            mem[(32 * (9 * idx) + 3) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[96]
            require (9 * idx) + 4 < 9 * arg3.length
            if ext_call.return_data[192]:
                mem[(32 * (9 * idx) + 4) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 1
                require (9 * idx) + 5 < 9 * arg3.length
                mem[(32 * (9 * idx) + 5) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[160]
                require (9 * idx) + 6 < 9 * arg3.length
                mem[(32 * (9 * idx) + 6) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[224]
                require 9 * idx < 9 * arg3.length
                require (9 * idx) + 2 < 9 * arg3.length
                require (9 * idx) + 6 < 9 * arg3.length
                if ext_call.return_data[64] > 0:
                    require idx < arg4.length
                    require idx < arg5.length
                    _246 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 228] = mem[(32 * idx) + (32 * arg3.length) + 172 len 20]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 260] = ext_call.return_data[0]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 292] = ext_call.return_data[64]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 324] = bool(_246)
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 356] = ext_call.return_data[224]
                    require ext_code.size(arg1)
                    staticcall arg1.getDelta(address arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 228], ext_call.return_data[0], ext_call.return_data[64], bool(_246), ext_call.return_data[224]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 224 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require (9 * idx) + 7 < 9 * arg3.length
                    if ext_call.return_data[0]:
                        mem[(32 * (9 * idx) + 7) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 1
                    else:
                        mem[(32 * (9 * idx) + 7) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0
                    require (9 * idx) + 8 < 9 * arg3.length
                    mem[(32 * (9 * idx) + 8) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[32]
            else:
                mem[(32 * (9 * idx) + 4) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0
                require (9 * idx) + 5 < 9 * arg3.length
                mem[(32 * (9 * idx) + 5) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[160]
                require (9 * idx) + 6 < 9 * arg3.length
                mem[(32 * (9 * idx) + 6) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[224]
                require 9 * idx < 9 * arg3.length
                require (9 * idx) + 2 < 9 * arg3.length
                require (9 * idx) + 6 < 9 * arg3.length
                if ext_call.return_data[64] > 0:
                    require idx < arg4.length
                    require idx < arg5.length
                    _249 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 228] = mem[(32 * idx) + (32 * arg3.length) + 172 len 20]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 260] = ext_call.return_data[0]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 292] = ext_call.return_data[64]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 324] = bool(_249)
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 356] = ext_call.return_data[224]
                    require ext_code.size(arg1)
                    staticcall arg1.getDelta(address arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 228], ext_call.return_data[0], ext_call.return_data[64], bool(_249), ext_call.return_data[224]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 224 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require (9 * idx) + 7 < 9 * arg3.length
                    if ext_call.return_data[0]:
                        mem[(32 * (9 * idx) + 7) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 1
                    else:
                        mem[(32 * (9 * idx) + 7) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0
                    require (9 * idx) + 8 < 9 * arg3.length
                    mem[(32 * (9 * idx) + 8) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[32]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224 len 32 * 9 * arg3.length] = call.data[calldata.size len 32 * 9 * arg3.length]
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            require idx < arg4.length
            require idx < arg5.length
            require ext_code.size(arg1)
            staticcall arg1.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
                    gas gas_remaining wei
                   args address(arg2), address(mem[(32 * idx) + 128]), address(mem[(32 * idx) + (32 * arg3.length) + 160]), bool(mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192])
            mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 224 len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 256
            require 9 * idx < 9 * arg3.length
            mem[(32 * 9 * idx) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
            require (9 * idx) + 1 < 9 * arg3.length
            mem[(32 * (9 * idx) + 1) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[32]
            require (9 * idx) + 2 < 9 * arg3.length
            mem[(32 * (9 * idx) + 2) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[64]
            require (9 * idx) + 3 < 9 * arg3.length
            mem[(32 * (9 * idx) + 3) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[96]
            require (9 * idx) + 4 < 9 * arg3.length
            if ext_call.return_data[192]:
                mem[(32 * (9 * idx) + 4) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 1
                require (9 * idx) + 5 < 9 * arg3.length
                mem[(32 * (9 * idx) + 5) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[160]
                require (9 * idx) + 6 < 9 * arg3.length
                mem[(32 * (9 * idx) + 6) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[224]
                require 9 * idx < 9 * arg3.length
                require (9 * idx) + 2 < 9 * arg3.length
                require (9 * idx) + 6 < 9 * arg3.length
                if ext_call.return_data[64] > 0:
                    require idx < arg4.length
                    require idx < arg5.length
                    _252 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 228] = mem[(32 * idx) + (32 * arg3.length) + 172 len 20]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 260] = ext_call.return_data[0]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 292] = ext_call.return_data[64]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 324] = bool(_252)
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 356] = ext_call.return_data[224]
                    require ext_code.size(arg1)
                    staticcall arg1.getDelta(address arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 228], ext_call.return_data[0], ext_call.return_data[64], bool(_252), ext_call.return_data[224]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 224 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require (9 * idx) + 7 < 9 * arg3.length
                    if ext_call.return_data[0]:
                        mem[(32 * (9 * idx) + 7) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 1
                    else:
                        mem[(32 * (9 * idx) + 7) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0
                    require (9 * idx) + 8 < 9 * arg3.length
                    mem[(32 * (9 * idx) + 8) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[32]
            else:
                mem[(32 * (9 * idx) + 4) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0
                require (9 * idx) + 5 < 9 * arg3.length
                mem[(32 * (9 * idx) + 5) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[160]
                require (9 * idx) + 6 < 9 * arg3.length
                mem[(32 * (9 * idx) + 6) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[224]
                require 9 * idx < 9 * arg3.length
                require (9 * idx) + 2 < 9 * arg3.length
                require (9 * idx) + 6 < 9 * arg3.length
                if ext_call.return_data[64] > 0:
                    require idx < arg4.length
                    require idx < arg5.length
                    _255 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 228] = mem[(32 * idx) + (32 * arg3.length) + 172 len 20]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 260] = ext_call.return_data[0]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 292] = ext_call.return_data[64]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 324] = bool(_255)
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 356] = ext_call.return_data[224]
                    require ext_code.size(arg1)
                    staticcall arg1.getDelta(address arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5) with:
                            gas gas_remaining wei
                           args mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 228], ext_call.return_data[0], ext_call.return_data[64], bool(_255), ext_call.return_data[224]
                    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 224 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require (9 * idx) + 7 < 9 * arg3.length
                    if ext_call.return_data[0]:
                        mem[(32 * (9 * idx) + 7) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 1
                    else:
                        mem[(32 * (9 * idx) + 7) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 0
                    require (9 * idx) + 8 < 9 * arg3.length
                    mem[(32 * (9 * idx) + 8) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[32]
            idx = idx + 1
            continue 
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + 288 len floor32(9 * arg3.length)] = mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224 len floor32(9 * arg3.length)]
    return Array(len=9 * arg3.length, data=mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224 len floor32(9 * arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * 9 * arg3.length) + floor32(9 * arg3.length) + 288 len (32 * 9 * arg3.length) - floor32(9 * arg3.length)]), 
}

function sub_20542568(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require ext_code.size(arg1)
    staticcall arg1.priceFeed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10 * arg4.length <= test266151307()
    mem[(32 * arg4.length) + 128] = 10 * arg4.length
    if not 10 * arg4.length:
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            _231 = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            if not mem[(32 * idx) + 140 len 20]:
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10 * idx < 10 * arg4.length
                mem[(32 * 10 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 1 < 10 * arg4.length
                mem[(32 * (10 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.usdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 2 < 10 * arg4.length
                mem[(32 * (10 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 3 < 10 * arg4.length
                mem[(32 * (10 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.tokenWeights(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 4 < 10 * arg4.length
                mem[(32 * (10 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 5 < 10 * arg4.length
                mem[(32 * (10 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 6 < 10 * arg4.length
                mem[(32 * (10 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 7 < 10 * arg4.length
                mem[(32 * (10 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 8 < 10 * arg4.length
                mem[(32 * (10 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 164] = arg2
                mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 1
            else:
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10 * idx < 10 * arg4.length
                mem[(32 * 10 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 1 < 10 * arg4.length
                mem[(32 * (10 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.usdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 2 < 10 * arg4.length
                mem[(32 * (10 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 164], arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 3 < 10 * arg4.length
                mem[(32 * (10 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.tokenWeights(address arg1) with:
                        gas gas_remaining wei
                       args address(_231)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 4 < 10 * arg4.length
                mem[(32 * (10 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_231)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 5 < 10 * arg4.length
                mem[(32 * (10 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_231)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 6 < 10 * arg4.length
                mem[(32 * (10 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args address(_231)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 7 < 10 * arg4.length
                mem[(32 * (10 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_231), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 8 < 10 * arg4.length
                mem[(32 * (10 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 164] = address(_231)
                mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_231), 1
            mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (10 * idx) + 9 < 10 * arg4.length
            mem[(32 * (10 * idx) + 9) + (32 * arg4.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg4.length) + 160 len 32 * 10 * arg4.length] = call.data[calldata.size len 32 * 10 * arg4.length]
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            _235 = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            if not mem[(32 * idx) + 140 len 20]:
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10 * idx < 10 * arg4.length
                mem[(32 * 10 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 1 < 10 * arg4.length
                mem[(32 * (10 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.usdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 2 < 10 * arg4.length
                mem[(32 * (10 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 3 < 10 * arg4.length
                mem[(32 * (10 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.tokenWeights(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 4 < 10 * arg4.length
                mem[(32 * (10 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 5 < 10 * arg4.length
                mem[(32 * (10 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 6 < 10 * arg4.length
                mem[(32 * (10 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 7 < 10 * arg4.length
                mem[(32 * (10 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 8 < 10 * arg4.length
                mem[(32 * (10 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 164] = arg2
                mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 1
            else:
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 10 * idx < 10 * arg4.length
                mem[(32 * 10 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 1 < 10 * arg4.length
                mem[(32 * (10 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.usdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 2 < 10 * arg4.length
                mem[(32 * (10 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 164], arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 3 < 10 * arg4.length
                mem[(32 * (10 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.tokenWeights(address arg1) with:
                        gas gas_remaining wei
                       args address(_235)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 4 < 10 * arg4.length
                mem[(32 * (10 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_235)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 5 < 10 * arg4.length
                mem[(32 * (10 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_235)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 6 < 10 * arg4.length
                mem[(32 * (10 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args address(_235)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 7 < 10 * arg4.length
                mem[(32 * (10 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_235), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10 * idx) + 8 < 10 * arg4.length
                mem[(32 * (10 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 164] = address(_235)
                mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_235), 1
            mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (10 * idx) + 9 < 10 * arg4.length
            mem[(32 * (10 * idx) + 9) + (32 * arg4.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(32 * arg4.length) + (32 * 10 * arg4.length) + 224 len floor32(10 * arg4.length)] = mem[(32 * arg4.length) + 160 len floor32(10 * arg4.length)]
    return Array(len=10 * arg4.length, data=mem[(32 * arg4.length) + 160 len floor32(10 * arg4.length)], mem[(32 * arg4.length) + (32 * 10 * arg4.length) + floor32(10 * arg4.length) + 224 len (32 * 10 * arg4.length) - floor32(10 * arg4.length)]), 
}

function sub_7b906e93(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require ext_code.size(arg1)
    staticcall arg1.priceFeed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 12 * arg4.length <= test266151307()
    mem[(32 * arg4.length) + 128] = 12 * arg4.length
    if not 12 * arg4.length:
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            _271 = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            if not mem[(32 * idx) + 140 len 20]:
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 12 * idx < 12 * arg4.length
                mem[(32 * 12 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 1 < 12 * arg4.length
                mem[(32 * (12 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.usdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 2 < 12 * arg4.length
                mem[(32 * (12 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 3 < 12 * arg4.length
                mem[(32 * (12 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.tokenWeights(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 4 < 12 * arg4.length
                mem[(32 * (12 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.bufferAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 5 < 12 * arg4.length
                mem[(32 * (12 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.maxUsdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 6 < 12 * arg4.length
                mem[(32 * (12 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 7 < 12 * arg4.length
                mem[(32 * (12 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 8 < 12 * arg4.length
                mem[(32 * (12 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 9 < 12 * arg4.length
                mem[(32 * (12 * idx) + 9) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 10 < 12 * arg4.length
                mem[(32 * (12 * idx) + 10) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 164] = arg2
                mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 1
            else:
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 12 * idx < 12 * arg4.length
                mem[(32 * 12 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 1 < 12 * arg4.length
                mem[(32 * (12 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.usdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 2 < 12 * arg4.length
                mem[(32 * (12 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 164], arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 3 < 12 * arg4.length
                mem[(32 * (12 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.tokenWeights(address arg1) with:
                        gas gas_remaining wei
                       args address(_271)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 4 < 12 * arg4.length
                mem[(32 * (12 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.bufferAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(_271)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 5 < 12 * arg4.length
                mem[(32 * (12 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.maxUsdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(_271)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 6 < 12 * arg4.length
                mem[(32 * (12 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_271)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 7 < 12 * arg4.length
                mem[(32 * (12 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_271)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 8 < 12 * arg4.length
                mem[(32 * (12 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args address(_271)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 9 < 12 * arg4.length
                mem[(32 * (12 * idx) + 9) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_271), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 10 < 12 * arg4.length
                mem[(32 * (12 * idx) + 10) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 164] = address(_271)
                mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_271), 1
            mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 11 < 12 * arg4.length
            mem[(32 * (12 * idx) + 11) + (32 * arg4.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg4.length) + 160 len 32 * 12 * arg4.length] = call.data[calldata.size len 32 * 12 * arg4.length]
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            _275 = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            if not mem[(32 * idx) + 140 len 20]:
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 12 * idx < 12 * arg4.length
                mem[(32 * 12 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 1 < 12 * arg4.length
                mem[(32 * (12 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.usdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 2 < 12 * arg4.length
                mem[(32 * (12 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 3 < 12 * arg4.length
                mem[(32 * (12 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.tokenWeights(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 4 < 12 * arg4.length
                mem[(32 * (12 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.bufferAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 5 < 12 * arg4.length
                mem[(32 * (12 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.maxUsdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 6 < 12 * arg4.length
                mem[(32 * (12 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 7 < 12 * arg4.length
                mem[(32 * (12 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 8 < 12 * arg4.length
                mem[(32 * (12 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 9 < 12 * arg4.length
                mem[(32 * (12 * idx) + 9) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 10 < 12 * arg4.length
                mem[(32 * (12 * idx) + 10) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 164] = arg2
                mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 1
            else:
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 12 * idx < 12 * arg4.length
                mem[(32 * 12 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 1 < 12 * arg4.length
                mem[(32 * (12 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.usdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 2 < 12 * arg4.length
                mem[(32 * (12 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 164], arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 3 < 12 * arg4.length
                mem[(32 * (12 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.tokenWeights(address arg1) with:
                        gas gas_remaining wei
                       args address(_275)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 4 < 12 * arg4.length
                mem[(32 * (12 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.bufferAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(_275)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 5 < 12 * arg4.length
                mem[(32 * (12 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.maxUsdgAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(_275)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 6 < 12 * arg4.length
                mem[(32 * (12 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_275)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 7 < 12 * arg4.length
                mem[(32 * (12 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_275)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 8 < 12 * arg4.length
                mem[(32 * (12 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args address(_275)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 9 < 12 * arg4.length
                mem[(32 * (12 * idx) + 9) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_275), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (12 * idx) + 10 < 12 * arg4.length
                mem[(32 * (12 * idx) + 10) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 164] = address(_275)
                mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_275), 1
            mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (12 * idx) + 11 < 12 * arg4.length
            mem[(32 * (12 * idx) + 11) + (32 * arg4.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(32 * arg4.length) + (32 * 12 * arg4.length) + 224 len floor32(12 * arg4.length)] = mem[(32 * arg4.length) + 160 len floor32(12 * arg4.length)]
    return Array(len=12 * arg4.length, data=mem[(32 * arg4.length) + 160 len floor32(12 * arg4.length)], mem[(32 * arg4.length) + (32 * 12 * arg4.length) + floor32(12 * arg4.length) + 224 len (32 * 12 * arg4.length) - floor32(12 * arg4.length)]), 
}

function sub_95a7535a(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require 2 * arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = 2 * arg3.length
    mem[64] = (98 * arg3.length) + 160
    if not uint255(arg3.length):
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _720 = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            if mem[(32 * idx) + 140 len 20]:
                staticcall arg1.stableTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                if ext_call.return_data[0]:
                    staticcall arg1.stableFundingRateFactor() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * idx) + 128])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(_720)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            _892 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_892] = 26
                            mem[_892 + 32] = 'SafeMath: division by zero' << 48
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _892 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * idx < mem[(32 * arg3.length) + 128]
                            mem[(64 * idx) + (32 * arg3.length) + 160] = 0 / ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _913 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_913] = 26
                            mem[_913 + 32] = 'SafeMath: division by zero' << 48
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _913 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * idx < mem[(32 * arg3.length) + 128]
                            mem[(64 * idx) + (32 * arg3.length) + 160] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    staticcall arg1.fundingRateFactor() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * idx) + 128])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(_720)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            _893 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_893] = 26
                            mem[_893 + 32] = 'SafeMath: division by zero' << 48
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _893 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * idx < mem[(32 * arg3.length) + 128]
                            mem[(64 * idx) + (32 * arg3.length) + 160] = 0 / ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _915 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_915] = 26
                            mem[_915 + 32] = 'SafeMath: division by zero' << 48
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _915 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * idx < mem[(32 * arg3.length) + 128]
                            mem[(64 * idx) + (32 * arg3.length) + 160] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[mem[64] + 4] = address(_720)
                require ext_code.size(arg1)
                staticcall arg1.cumulativeFundingRates(address arg1) with:
                        gas gas_remaining wei
                       args address(_720)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    require ext_code.size(arg1)
                    staticcall arg1.getNextFundingRate(address arg1) with:
                            gas gas_remaining wei
                           args address(_720)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = address(_720)
                    require ext_code.size(arg1)
                    staticcall arg1.cumulativeFundingRates(address arg1) with:
                            gas gas_remaining wei
                           args address(_720)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = 2 * ext_call.return_data[0]
            else:
                staticcall arg1.stableTokens(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                if ext_call.return_data[0]:
                    staticcall arg1.stableFundingRateFactor() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(arg1)
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            _916 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_916] = 26
                            mem[_916 + 32] = 'SafeMath: division by zero' << 48
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _916 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * idx < mem[(32 * arg3.length) + 128]
                            mem[(64 * idx) + (32 * arg3.length) + 160] = 0 / ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _937 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_937] = 26
                            mem[_937 + 32] = 'SafeMath: division by zero' << 48
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _937 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * idx < mem[(32 * arg3.length) + 128]
                            mem[(64 * idx) + (32 * arg3.length) + 160] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    staticcall arg1.fundingRateFactor() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(arg1)
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            _917 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_917] = 26
                            mem[_917 + 32] = 'SafeMath: division by zero' << 48
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _917 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * idx < mem[(32 * arg3.length) + 128]
                            mem[(64 * idx) + (32 * arg3.length) + 160] = 0 / ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _939 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_939] = 26
                            mem[_939 + 32] = 'SafeMath: division by zero' << 48
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _939 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * idx < mem[(32 * arg3.length) + 128]
                            mem[(64 * idx) + (32 * arg3.length) + 160] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                mem[mem[64] + 4] = arg2
                require ext_code.size(arg1)
                staticcall arg1.cumulativeFundingRates(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    require ext_code.size(arg1)
                    staticcall arg1.getNextFundingRate(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(arg1)
                    staticcall arg1.cumulativeFundingRates(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = 2 * ext_call.return_data[0]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
        _724 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _724) + 32]
    mem[(32 * arg3.length) + 160 len 64 * arg3.length] = call.data[calldata.size len 64 * arg3.length]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _721 = mem[(32 * idx) + 128]
        require ext_code.size(arg1)
        if mem[(32 * idx) + 140 len 20]:
            staticcall arg1.stableTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            if ext_call.return_data[0]:
                staticcall arg1.stableFundingRateFactor() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(_721)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        _902 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_902] = 26
                        mem[_902 + 32] = 'SafeMath: division by zero' << 48
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _902 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * idx < mem[(32 * arg3.length) + 128]
                        mem[(64 * idx) + (32 * arg3.length) + 160] = 0 / ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _919 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_919] = 26
                        mem[_919 + 32] = 'SafeMath: division by zero' << 48
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _919 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * idx < mem[(32 * arg3.length) + 128]
                        mem[(64 * idx) + (32 * arg3.length) + 160] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            else:
                staticcall arg1.fundingRateFactor() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg1)
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(_721)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        _903 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_903] = 26
                        mem[_903 + 32] = 'SafeMath: division by zero' << 48
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _903 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * idx < mem[(32 * arg3.length) + 128]
                        mem[(64 * idx) + (32 * arg3.length) + 160] = 0 / ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_921] = 26
                        mem[_921 + 32] = 'SafeMath: division by zero' << 48
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _921 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * idx < mem[(32 * arg3.length) + 128]
                        mem[(64 * idx) + (32 * arg3.length) + 160] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            mem[mem[64] + 4] = address(_721)
            require ext_code.size(arg1)
            staticcall arg1.cumulativeFundingRates(address arg1) with:
                    gas gas_remaining wei
                   args address(_721)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(arg1)
                staticcall arg1.getNextFundingRate(address arg1) with:
                        gas gas_remaining wei
                       args address(_721)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = address(_721)
                require ext_code.size(arg1)
                staticcall arg1.cumulativeFundingRates(address arg1) with:
                        gas gas_remaining wei
                       args address(_721)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = 2 * ext_call.return_data[0]
        else:
            staticcall arg1.stableTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            if ext_call.return_data[0]:
                staticcall arg1.stableFundingRateFactor() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = arg2
                require ext_code.size(arg1)
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        _922 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_922] = 26
                        mem[_922 + 32] = 'SafeMath: division by zero' << 48
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _922 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * idx < mem[(32 * arg3.length) + 128]
                        mem[(64 * idx) + (32 * arg3.length) + 160] = 0 / ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_953] = 26
                        mem[_953 + 32] = 'SafeMath: division by zero' << 48
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _953 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * idx < mem[(32 * arg3.length) + 128]
                        mem[(64 * idx) + (32 * arg3.length) + 160] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            else:
                staticcall arg1.fundingRateFactor() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.reservedAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = arg2
                require ext_code.size(arg1)
                staticcall arg1.poolAmounts(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        _923 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_923] = 26
                        mem[_923 + 32] = 'SafeMath: division by zero' << 48
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _923 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * idx < mem[(32 * arg3.length) + 128]
                        mem[(64 * idx) + (32 * arg3.length) + 160] = 0 / ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _955 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_955] = 26
                        mem[_955 + 32] = 'SafeMath: division by zero' << 48
                        if not ext_call.return_data[0]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _955 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * idx < mem[(32 * arg3.length) + 128]
                        mem[(64 * idx) + (32 * arg3.length) + 160] = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            mem[mem[64] + 4] = arg2
            require ext_code.size(arg1)
            staticcall arg1.cumulativeFundingRates(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(arg1)
                staticcall arg1.getNextFundingRate(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = arg2
                require ext_code.size(arg1)
                staticcall arg1.cumulativeFundingRates(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = 2 * ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
    _729 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _729) + 32]
}

function sub_8e83ca32(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require ext_code.size(arg1)
    staticcall arg1.priceFeed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 14 * arg4.length <= test266151307()
    mem[(32 * arg4.length) + 128] = 14 * arg4.length
    if not 14 * arg4.length:
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            _575 = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            if not mem[(32 * idx) + 140 len 20]:
                if not uint8(stor0.field_160):
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 14 * idx < 14 * arg4.length
                    mem[(32 * 14 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 1 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.usdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 2 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 3 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.tokenWeights(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 4 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.bufferAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 5 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.maxUsdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 6 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.globalShortSizes(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 7 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require (14 * idx) + 8 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 8) + (32 * arg4.length) + 160] = 0
                else:
                    staticcall arg1.0x9698d25a with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 14 * idx < 14 * arg4.length
                    mem[(32 * 14 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 1 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.usdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 2 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 3 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.tokenWeights(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 4 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.bufferAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 5 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.maxUsdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 6 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.globalShortSizes(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 7 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require (14 * idx) + 8 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 9 < 14 * arg4.length
                mem[(32 * (14 * idx) + 9) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 10 < 14 * arg4.length
                mem[(32 * (14 * idx) + 10) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 11 < 14 * arg4.length
                mem[(32 * (14 * idx) + 11) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 12 < 14 * arg4.length
                mem[(32 * (14 * idx) + 12) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164] = arg2
                mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 1
            else:
                if not uint8(stor0.field_160):
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 14 * idx < 14 * arg4.length
                    mem[(32 * 14 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 1 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.usdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 2 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164], arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 3 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.tokenWeights(address arg1) with:
                            gas gas_remaining wei
                           args address(_575)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 4 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.bufferAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(_575)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 5 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.maxUsdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(_575)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 6 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.globalShortSizes(address arg1) with:
                            gas gas_remaining wei
                           args address(_575)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 7 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require (14 * idx) + 8 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 8) + (32 * arg4.length) + 160] = 0
                else:
                    staticcall arg1.0x9698d25a with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 14 * idx < 14 * arg4.length
                    mem[(32 * 14 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 1 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.usdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 2 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164], arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 3 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.tokenWeights(address arg1) with:
                            gas gas_remaining wei
                           args address(_575)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 4 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.bufferAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(_575)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 5 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.maxUsdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(_575)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 6 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.globalShortSizes(address arg1) with:
                            gas gas_remaining wei
                           args address(_575)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 7 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require (14 * idx) + 8 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_575)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 9 < 14 * arg4.length
                mem[(32 * (14 * idx) + 9) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_575)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 10 < 14 * arg4.length
                mem[(32 * (14 * idx) + 10) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args address(_575)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 11 < 14 * arg4.length
                mem[(32 * (14 * idx) + 11) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_575), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 12 < 14 * arg4.length
                mem[(32 * (14 * idx) + 12) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164] = address(_575)
                mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_575), 1
            mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (14 * idx) + 13 < 14 * arg4.length
            mem[(32 * (14 * idx) + 13) + (32 * arg4.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg4.length) + 160 len 32 * 14 * arg4.length] = call.data[calldata.size len 32 * 14 * arg4.length]
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            _579 = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            if not mem[(32 * idx) + 140 len 20]:
                if not uint8(stor0.field_160):
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 14 * idx < 14 * arg4.length
                    mem[(32 * 14 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 1 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.usdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 2 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 3 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.tokenWeights(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 4 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.bufferAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 5 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.maxUsdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 6 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.globalShortSizes(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 7 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require (14 * idx) + 8 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 8) + (32 * arg4.length) + 160] = 0
                else:
                    staticcall arg1.0x9698d25a with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 14 * idx < 14 * arg4.length
                    mem[(32 * 14 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 1 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.usdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 2 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 3 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.tokenWeights(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 4 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.bufferAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 5 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.maxUsdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 6 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.globalShortSizes(address arg1) with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 7 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require (14 * idx) + 8 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 9 < 14 * arg4.length
                mem[(32 * (14 * idx) + 9) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 10 < 14 * arg4.length
                mem[(32 * (14 * idx) + 10) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 11 < 14 * arg4.length
                mem[(32 * (14 * idx) + 11) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 12 < 14 * arg4.length
                mem[(32 * (14 * idx) + 12) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164] = arg2
                mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(arg2), 1
            else:
                if not uint8(stor0.field_160):
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 14 * idx < 14 * arg4.length
                    mem[(32 * 14 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 1 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.usdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 2 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164], arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 3 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.tokenWeights(address arg1) with:
                            gas gas_remaining wei
                           args address(_579)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 4 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.bufferAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(_579)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 5 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.maxUsdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(_579)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 6 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.globalShortSizes(address arg1) with:
                            gas gas_remaining wei
                           args address(_579)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 7 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require (14 * idx) + 8 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 8) + (32 * arg4.length) + 160] = 0
                else:
                    staticcall arg1.0x9698d25a with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.poolAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 14 * idx < 14 * arg4.length
                    mem[(32 * 14 * idx) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.reservedAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 1 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 1) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.usdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args mem[(32 * idx) + 140 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 2 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 2) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(arg1)
                    staticcall arg1.getRedemptionAmount(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164], arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 3 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 3) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.tokenWeights(address arg1) with:
                            gas gas_remaining wei
                           args address(_579)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 4 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 4) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.bufferAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(_579)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 5 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 5) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.maxUsdgAmounts(address arg1) with:
                            gas gas_remaining wei
                           args address(_579)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 6 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 6) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require ext_code.size(arg1)
                    staticcall arg1.globalShortSizes(address arg1) with:
                            gas gas_remaining wei
                           args address(_579)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (14 * idx) + 7 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 7) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                    require (14 * idx) + 8 < 14 * arg4.length
                    mem[(32 * (14 * idx) + 8) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMinPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_579)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 9 < 14 * arg4.length
                mem[(32 * (14 * idx) + 9) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.getMaxPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_579)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 10 < 14 * arg4.length
                mem[(32 * (14 * idx) + 10) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(arg1)
                staticcall arg1.guaranteedUsd(address arg1) with:
                        gas gas_remaining wei
                       args address(_579)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 11 < 14 * arg4.length
                mem[(32 * (14 * idx) + 11) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_579), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (14 * idx) + 12 < 14 * arg4.length
                mem[(32 * (14 * idx) + 12) + (32 * arg4.length) + 160] = ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 164] = address(_579)
                mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 196] = 1
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPrimaryPrice(address arg1, bool arg2) with:
                        gas gas_remaining wei
                       args address(_579), 1
            mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (14 * idx) + 13 < 14 * arg4.length
            mem[(32 * (14 * idx) + 13) + (32 * arg4.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(32 * arg4.length) + (32 * 14 * arg4.length) + 224 len floor32(14 * arg4.length)] = mem[(32 * arg4.length) + 160 len floor32(14 * arg4.length)]
    return Array(len=14 * arg4.length, data=mem[(32 * arg4.length) + 160 len floor32(14 * arg4.length)], mem[(32 * arg4.length) + (32 * 14 * arg4.length) + floor32(14 * arg4.length) + 224 len (32 * 14 * arg4.length) - floor32(14 * arg4.length)]), 
}



}
