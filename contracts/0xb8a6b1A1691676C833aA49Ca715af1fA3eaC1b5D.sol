contract main {




// =====================  Runtime code  =====================


const timestamp = block.timestamp


address sub_562342e2Address;

function sub_562342e2(?) payable {
    return sub_562342e2Address
}

function _fallback() payable {
    revert
}

function sub_0df62a9d(?) payable {
    require ext_code.size(sub_562342e2Address)
    staticcall sub_562342e2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function rand() payable {
    if block.number < 4:
        revert with 'NH{q', 17
    if block.number < 2:
        revert with 'NH{q', 17
    if block.number < 3:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    require ext_code.size(sub_562342e2Address)
    staticcall sub_562342e2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp and ext_call.return_data[0] > -1 / block.timestamp:
        revert with 'NH{q', 17
    return (sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), block.timestamp * ext_call.return_data[0], block.timestamp) % 100)
}



}
