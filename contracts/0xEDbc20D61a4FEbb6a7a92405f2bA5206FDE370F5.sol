contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 stor3;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_bbaf2edb(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'CallerNotOwner'
    stor1 = arg1
    stor2 = arg2
    stor3 = 10^(arg3 + 10)
}

function fetchPrice() payable {
    require ext_code.size(stor1)
    staticcall stor1.0x9c3bc3e6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not stor3:
            revert with 0, 'div by 0'
        return (0 / stor3)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'mul overflow'
    if not stor3:
        revert with 0, 'div by 0'
    return (ext_call.return_data[0] * ext_call.return_data[0] / stor3)
}

function fetchPrice_v() payable {
    require ext_code.size(stor1)
    staticcall stor1.0x9c3bc3e6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    staticcall stor2.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not stor3:
            revert with 0, 'div by 0'
        return (0 / stor3)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'mul overflow'
    if not stor3:
        revert with 0, 'div by 0'
    return (ext_call.return_data[0] * ext_call.return_data[0] / stor3)
}



}
