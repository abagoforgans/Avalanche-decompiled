contract main {




// =====================  Runtime code  =====================


const BurnAddress = 0


address sourceAddress;
address sub_9c2cf049Address;
address sub_c19e789bAddress;
address baseAddress;
address quoteAddress;
uint256 decimals;

function decimals() payable {
    return decimals
}

function base() payable {
    return baseAddress
}

function source() payable {
    return sourceAddress
}

function quote() payable {
    return quoteAddress
}

function sub_9c2cf049(?) payable {
    return sub_9c2cf049Address
}

function sub_c19e789b(?) payable {
    return sub_c19e789bAddress
}

function _fallback() payable {
    revert
}

function BasePrice() payable {
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_c19e789bAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_9c2cf049Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args sourceAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_c19e789bAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_9c2cf049Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args sourceAddress
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
           args sub_c19e789bAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_9c2cf049Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseAddress)
    staticcall baseAddress.0x70a08231 with:
            gas gas_remaining wei
           args sourceAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_c19e789bAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_9c2cf049Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args sourceAddress
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
