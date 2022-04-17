contract main {




// =====================  Runtime code  =====================


address poolAddress;
address pool2Address;
address pool3Address;
address baseAddress;
address quoteAddress;
uint256 decimals;

function pool() payable {
    return poolAddress
}

function decimals() payable {
    return decimals
}

function base() payable {
    return baseAddress
}

function pool3() payable {
    return pool3Address
}

function quote() payable {
    return quoteAddress
}

function pool2() payable {
    return pool2Address
}

function _fallback() payable {
    revert
}

function BasePrice() payable {
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args pool3Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args pool2Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args pool3Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args pool2Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 3 * ext_call.return_data[0]:
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 3 * ext_call.return_data[0])
    if (ext_call.return_data[0] * 10^decimals) + (ext_call.return_data[0] * 10^decimals) + (ext_call.return_data[0] * 10^decimals) / 3 * ext_call.return_data[0] != 10^decimals:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 3 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return ((ext_call.return_data[0] * 10^decimals) + (ext_call.return_data[0] * 10^decimals) + (ext_call.return_data[0] * 10^decimals) / 3 * ext_call.return_data[0])
}

function sub_371e0679(?) payable {
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args pool3Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args pool2Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args pool3Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args pool2Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 3 * ext_call.return_data[0]:
        if not 3 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / 3 * ext_call.return_data[0])
    if (ext_call.return_data[0] * 10^decimals) + (ext_call.return_data[0] * 10^decimals) + (ext_call.return_data[0] * 10^decimals) / 3 * ext_call.return_data[0] != 10^decimals:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 3 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return ((ext_call.return_data[0] * 10^decimals) + (ext_call.return_data[0] * 10^decimals) + (ext_call.return_data[0] * 10^decimals) / 3 * ext_call.return_data[0])
}



}
