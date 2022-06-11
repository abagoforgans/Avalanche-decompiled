contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function markdown(address arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function valuation(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function getKValue(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: addition overflow'
    if uint8(ext_call.return_data[0]) > 2 * uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[18 len 14]:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / 10^uint8(ext_call.return_data[0]))
    if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != ext_call.return_data[50 len 14]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
}

function getTotalValue(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * uint8(ext_call.return_data[0]) < uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: addition overflow'
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if uint8(ext_call.return_data[0]) > 2 * uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[18 len 14]:
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if 0 / 10^uint8(ext_call.return_data[0]) <= 3:
            if not 0 / 10^uint8(ext_call.return_data[0]):
                return 0
            return 2
        mem[64] = 288
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        if (0 / 10^uint8(ext_call.return_data[0]) / 2) + 1 < 0 / 10^uint8(ext_call.return_data[0]) / 2:
            revert with 0, 'SafeMath: addition overflow'
        s = (0 / 10^uint8(ext_call.return_data[0]) / 2) + 1
        t = 0 / 10^uint8(ext_call.return_data[0])
        while s < t:
            _124 = mem[64]
            mem[64] = mem[64] + 64
            mem[_124] = 26
            mem[_124 + 32] = 'SafeMath: division by zero'
            if s:
                if s + (0 / 10^uint8(ext_call.return_data[0]) / s) < 0 / 10^uint8(ext_call.return_data[0]) / s:
                    revert with 0, 'SafeMath: addition overflow'
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 26
                mem[_171 + 32] = 'SafeMath: division by zero'
                s = s + (0 / 10^uint8(ext_call.return_data[0]) / s) / 2
                t = s
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _124 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
    else:
        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != ext_call.return_data[50 len 14]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) <= 3:
            if not Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                return 0
            return 2
        mem[64] = 288
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        if (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 2) + 1 < Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 2:
            revert with 0, 'SafeMath: addition overflow'
        s = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / 2) + 1
        t = Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
        while s < t:
            _121 = mem[64]
            mem[64] = mem[64] + 64
            mem[_121] = 26
            mem[_121 + 32] = 'SafeMath: division by zero'
            if s:
                if s + (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / s) < Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / s:
                    revert with 0, 'SafeMath: addition overflow'
                _170 = mem[64]
                mem[64] = mem[64] + 64
                mem[_170] = 26
                mem[_170 + 32] = 'SafeMath: division by zero'
                s = s + (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) / s) / 2
                t = s
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _121 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
    if not t:
        return 0
    if 2 * t / t != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    return (2 * t)
}



}
