contract main {




// =====================  Runtime code  =====================


address poolAddress;
address baseAddress;
address quoteAddress;

function pool() payable {
    return poolAddress
}

function base() payable {
    return baseAddress
}

function quote() payable {
    return quoteAddress
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
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] / ext_call.return_data[0])
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
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] / ext_call.return_data[0])
}



}
