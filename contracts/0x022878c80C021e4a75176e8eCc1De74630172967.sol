contract main {




// =====================  Runtime code  =====================


address mimAddress;
address joeFactoryAddress;

function joeFactory() payable {
    return joeFactoryAddress
}

function mim() payable {
    return mimAddress
}

function _fallback() payable {
    revert
}

function sub_b883b058(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(joeFactoryAddress)
    staticcall joeFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), mimAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mimAddress)
    staticcall mimAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}



}
