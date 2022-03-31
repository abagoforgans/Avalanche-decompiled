contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function check(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    create contract with 0 wei
                    code: code.data[615 len 619], address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    staticcall address(create.new_address).gain() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
