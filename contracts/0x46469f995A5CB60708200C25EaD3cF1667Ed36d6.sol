contract main {




// =====================  Runtime code  =====================


address priceSourceAddress;
address underlyingAddress;
address yVaultAddress;
uint256 sub_e28a1b86;

function priceSource() payable {
    return priceSourceAddress
}

function yVault() payable {
    return yVaultAddress
}

function underlying() payable {
    return underlyingAddress
}

function sub_e28a1b86(?) payable {
    return sub_e28a1b86
}

function _fallback() payable {
    revert
}

function sub_edd94813(?) payable {
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[32] > 0:
        sub_e28a1b86 = ext_call.return_data[32]
        emit 0x3a09faea: ext_call.return_data[22 len 10], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128] << 176
}

function latestRoundData() payable {
    require ext_code.size(priceSourceAddress)
    staticcall priceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(yVaultAddress)
    staticcall yVaultAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(yVaultAddress)
    staticcall yVaultAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(yVaultAddress)
    staticcall yVaultAddress.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[32] <= 0:
        if not sub_e28a1b86:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            if not 0 / 10^uint8(ext_call.return_data[0]):
                return ext_call.return_data[0] << 176, 
                       0,
                       ext_call.return_data[64],
                       ext_call.return_data[96],
                       Mask(80, 0, ext_call.return_data[128])
            if 10^0 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 10^0:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return ext_call.return_data[0] << 176, 
                   0 / 10^uint8(ext_call.return_data[0]),
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   Mask(80, 0, ext_call.return_data[128])
        if ext_call.return_data[0] * sub_e28a1b86 / sub_e28a1b86 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 31]
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] * sub_e28a1b86 / 10^uint8(ext_call.return_data[0]):
            return ext_call.return_data[0] << 176, 
                   0,
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   Mask(80, 0, ext_call.return_data[128])
        if 10^0 * ext_call.return_data[0] * sub_e28a1b86 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * sub_e28a1b86 / 10^uint8(ext_call.return_data[0]) != 10^0:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ext_call.return_data[0] << 176, 
               ext_call.return_data[0] * sub_e28a1b86 / 10^uint8(ext_call.return_data[0]),
               ext_call.return_data[64],
               ext_call.return_data[96],
               Mask(80, 0, ext_call.return_data[128])
    if not ext_call.return_data[32]:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not 0 / 10^uint8(ext_call.return_data[0]):
            return ext_call.return_data[0] << 176, 
                   0,
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   Mask(80, 0, ext_call.return_data[128])
        if 10^0 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 10^0:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ext_call.return_data[0] << 176, 
               0 / 10^uint8(ext_call.return_data[0]),
               ext_call.return_data[64],
               ext_call.return_data[96],
               Mask(80, 0, ext_call.return_data[128])
    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]):
        return ext_call.return_data[0] << 176, 
               0,
               ext_call.return_data[64],
               ext_call.return_data[96],
               Mask(80, 0, ext_call.return_data[128])
    if 10^0 * ext_call.return_data[0] * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]) != 10^0:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ext_call.return_data[0] << 176, 
           ext_call.return_data[0] * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]),
           ext_call.return_data[64],
           ext_call.return_data[96],
           Mask(80, 0, ext_call.return_data[128])
}



}
