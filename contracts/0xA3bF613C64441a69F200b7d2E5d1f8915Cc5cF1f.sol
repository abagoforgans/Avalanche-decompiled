contract main {




// =====================  Runtime code  =====================


address poolAddress;
address pool2Address;
address baseAddress;
address quoteAddress;
address stableAddress;
uint256 sub_8a5acc65;

function pool() payable {
    return poolAddress
}

function stable() payable {
    return stableAddress
}

function base() payable {
    return baseAddress
}

function sub_8a5acc65(?) payable {
    return sub_8a5acc65
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
           args poolAddress
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
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if sub_8a5acc65 * ext_call.return_data[0] / ext_call.return_data[0] != sub_8a5acc65:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (sub_8a5acc65 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_371e0679(?) payable {
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
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if sub_8a5acc65 * ext_call.return_data[0] / ext_call.return_data[0] != sub_8a5acc65:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (sub_8a5acc65 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_b25f2344(?) payable {
    require ext_code.size(quoteAddress)
    staticcall quoteAddress.0x70a08231 with:
            gas gas_remaining wei
           args pool2Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stableAddress)
    staticcall stableAddress.0x70a08231 with:
            gas gas_remaining wei
           args pool2Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if sub_8a5acc65 * ext_call.return_data[0] / ext_call.return_data[0] != sub_8a5acc65:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (sub_8a5acc65 * ext_call.return_data[0] / ext_call.return_data[0])
}



}
