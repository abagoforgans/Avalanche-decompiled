contract main {




// =====================  Runtime code  =====================


const sub_c4340336(?) = 0x2779d32d5166baaa2b2b658333ba7e6ec0c65743


function _fallback() payable {
    revert
}

function symbol(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return 'LINK/WBTC'
}

function name(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return 'WBTC Chainlink'
}

function get(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x2779d32d5166baaa2b2b658333ba7e6ec0c65743)
    staticcall 0x2779d32d5166baaa2b2b658333ba7e6ec0c65743.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1, 100000000 * 10^18 / ext_call.return_data[0]
}

function peek(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x2779d32d5166baaa2b2b658333ba7e6ec0c65743)
    staticcall 0x2779d32d5166baaa2b2b658333ba7e6ec0c65743.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1, 100000000 * 10^18 / ext_call.return_data[0]
}

function peekSpot(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x2779d32d5166baaa2b2b658333ba7e6ec0c65743)
    staticcall 0x2779d32d5166baaa2b2b658333ba7e6ec0c65743.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (100000000 * 10^18 / ext_call.return_data[0])
}



}
