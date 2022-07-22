contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_eb6e11fc(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'CallerNotOwner'
    stor2 = arg2
    stor1 = arg1
}

function fetchPrice() payable {
    require ext_code.size(stor2)
    staticcall stor2.0xe0794ec5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x9c3bc3e6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'div by 0'
        return (0 / ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'mul overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'div by 0'
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function fetchPrice_v() payable {
    require ext_code.size(stor2)
    staticcall stor2.0xe0794ec5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x9c3bc3e6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'div by 0'
        return (0 / ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'mul overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'div by 0'
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}



}
