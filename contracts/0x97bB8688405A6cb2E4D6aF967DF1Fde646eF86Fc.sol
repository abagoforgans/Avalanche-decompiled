contract main {




// =====================  Runtime code  =====================


address sub_2de0c76fAddress;
address dappAddress;
mapping of uint8 stor4;
uint256 stor5;

function sub_2de0c76f(?) payable {
    return sub_2de0c76fAddress
}

function dapp() payable {
    return dappAddress
}

function _fallback() payable {
    revert
}

function claim() payable {
    require not stor4[msg.sender]
    require ext_code.size(dappAddress)
    staticcall dappAddress.0x6f493dff with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor5 and ext_call.return_data[0] > -1 / stor5:
        revert with 0, 17
    require ext_code.size(sub_2de0c76fAddress)
    call sub_2de0c76fAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor5 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor4[msg.sender] = 1
}



}
