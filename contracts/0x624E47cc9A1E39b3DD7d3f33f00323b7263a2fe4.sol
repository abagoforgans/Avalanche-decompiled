contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function buildFeePool(address arg1, uint256 arg2, uint8 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    create contract with 0 wei
                    code: code.data[349 len 5231], address(arg1), arg2, arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
