contract main {




// =====================  Runtime code  =====================


const price = 250 * 10^18


uint8 stor0;
address stor0;
address adminAddress; offset 8
address sub_fe3cfe62Address;
address sub_309c6de2Address;

function sub_309c6de2(?) payable {
    return sub_309c6de2Address
}

function paused() payable {
    return bool(uint8(stor0.field_0))
}

function admin() payable {
    return adminAddress
}

function sub_fe3cfe62(?) payable {
    return sub_fe3cfe62Address
}

function _fallback() payable {
    revert
}

function purchase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_309c6de2Address)
    staticcall sub_309c6de2Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 250 * 10^18:
        revert with 0, 'You don't have enough Verse token!'
    require ext_code.size(sub_309c6de2Address)
    call sub_309c6de2Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(stor0.field_0), 250 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_fe3cfe62Address)
    call sub_fe3cfe62Address.0x23b872dd with:
         gas gas_remaining wei
        args address(stor0.field_0), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
