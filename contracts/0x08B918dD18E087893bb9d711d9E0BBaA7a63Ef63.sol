contract main {




// =====================  Runtime code  =====================


const aggregator = 0x279d54add72935d845074675de0dbcfdc66800a3


function _fallback() payable {
    revert
}

function symbol(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return ''
}

function name(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return 'USDC/AVAX LP Chainlink'
}

function get(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x279d54add72935d845074675de0dbcfdc66800a3)
    staticcall 0x279d54add72935d845074675de0dbcfdc66800a3.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1, 1000000000000000000 * 10^18 / ext_call.return_data[0]
}

function peek(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x279d54add72935d845074675de0dbcfdc66800a3)
    staticcall 0x279d54add72935d845074675de0dbcfdc66800a3.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1, 1000000000000000000 * 10^18 / ext_call.return_data[0]
}

function peekSpot(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x279d54add72935d845074675de0dbcfdc66800a3)
    staticcall 0x279d54add72935d845074675de0dbcfdc66800a3.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (1000000000000000000 * 10^18 / ext_call.return_data[0])
}



}
