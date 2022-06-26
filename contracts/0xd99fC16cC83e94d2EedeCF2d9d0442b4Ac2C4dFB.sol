contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function getPrice() payable {
    require ext_code.size(stor0)
    staticcall stor0.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[50 len 14] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10^10 * ext_call.return_data[0] and 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[0] > -1 / 10^10 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0] > !(10^10 * ext_call.return_data[0] * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[0] / 10^18):
        revert with 'NH{q', 17
    return ((10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[0]) + (10^10 * ext_call.return_data[0] * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[0] / 10^18))
}



}
