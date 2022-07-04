contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function Existing(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor0 = arg1
}

function getValue() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x20965255 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setNewValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    call stor0.0x55241077 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}



}
