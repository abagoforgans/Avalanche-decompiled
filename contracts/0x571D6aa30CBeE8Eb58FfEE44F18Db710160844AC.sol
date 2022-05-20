contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_cbe2e8bb(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xefa94de7a4656d787667c749f7e1223d71e9fd88)
    staticcall 0xefa94de7a4656d787667c749f7e1223d71e9fd88.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}



}
