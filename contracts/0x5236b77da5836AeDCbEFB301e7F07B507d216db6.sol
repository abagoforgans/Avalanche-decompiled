contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_a4ecd454(?) payable {
    create contract with 0 wei
                    code: code.data[522 len 408], 77
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4692581e: address(create.new_address)
    return address(create.new_address)
}



}
