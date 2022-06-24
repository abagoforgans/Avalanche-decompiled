contract main {




// =====================  Runtime code  =====================


const decimals = 18

const version = 1

const description = ''


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function getTokenPrice() payable {
    require ext_code.size(stor0)
    staticcall stor0.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(stor1)
    staticcall stor1.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return (10 * ext_call.return_data[32] * ext_call.return_data[32])
}

function latestRoundData() payable {
    require ext_code.size(stor0)
    staticcall stor0.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(stor1)
    staticcall stor1.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return 0, 10 * ext_call.return_data[32] * ext_call.return_data[32], 0, 0, 0
}

function getRoundData(uint80 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(stor1)
    staticcall stor1.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return 0, 10 * ext_call.return_data[32] * ext_call.return_data[32], 0, 0, 0
}



}
