contract main {




// =====================  Runtime code  =====================


const sub_c97d54fc(?) = 0x2d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a


function _fallback() payable {
    revert
}

function symbol(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return 'LINK/JOE'
}

function name(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return 'JOE Chainlink'
}

function get(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(0x2d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a)
    staticcall 0x2d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a.latestAnswer() with:
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
    require ext_code.size(0x2d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a)
    staticcall 0x2d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a.latestAnswer() with:
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
    require ext_code.size(0x2d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a)
    staticcall 0x2d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (100000000 * 10^18 / ext_call.return_data[0])
}



}
