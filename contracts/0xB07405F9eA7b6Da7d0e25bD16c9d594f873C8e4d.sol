contract main {




// =====================  Runtime code  =====================


array of address sub_a60ed374;

function sub_a60ed374(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a60ed374.length
    return sub_a60ed374[arg1]
}

function _fallback() payable {
    revert
}

function createBasket() payable {
    create contract with 0 wei
                    code: code.data[465 len 8859]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_a60ed374.length++
    sub_a60ed374[sub_a60ed374.length] = address(create.new_address)
    emit NewBasket(address(create.new_address), msg.sender);
}



}
