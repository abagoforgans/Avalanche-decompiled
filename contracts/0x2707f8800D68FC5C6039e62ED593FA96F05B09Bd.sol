contract main {




// =====================  Runtime code  =====================


#
#  - APYC(uint8 arg1)
#
address USDAddress;
address sub_126eba97Address;
address factoryAddress;
address chefAddress;

function sub_126eba97(?) payable {
    return sub_126eba97Address
}

function USD() payable {
    return USDAddress
}

function chef() payable {
    return chefAddress
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function LbreToUSD(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args USDAddress, sub_126eba97Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[12 len 20] == USDAddress:
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
    else:
        staticcall address(ext_call.return_data[0]).0xd21220a7 with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[12 len 20] == USDAddress:
        staticcall address(ext_call.return_data[0]).0xd21220a7 with:
                gas gas_remaining wei
    else:
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
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
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
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
    if ext_call.return_data[12 len 20] == USDAddress:
        if not arg1:
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
        if ext_call.return_data[12 len 20] == USDAddress:
            if Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] * arg1 / arg1 != Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
        if Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] * arg1 / arg1 != Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
    if not arg1:
        if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
    if ext_call.return_data[12 len 20] == USDAddress:
        if Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] * arg1 / arg1 != Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
    if Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] * arg1 / arg1 != Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) * arg1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
}

function USDToToken0(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), USDAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[12 len 20] == USDAddress:
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
    else:
        staticcall address(ext_call.return_data[0]).0xd21220a7 with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[12 len 20] == USDAddress:
        staticcall address(ext_call.return_data[0]).0xd21220a7 with:
                gas gas_remaining wei
    else:
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
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
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
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
    if ext_call.return_data[12 len 20] == USDAddress:
        if ext_call.return_data[12 len 20] == USDAddress:
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
            if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
    if ext_call.return_data[12 len 20] == USDAddress:
        if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
            if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]))
    if not Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]):
        if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]))
}



}
