contract main {




// =====================  Runtime code  =====================


address sub_730a8bdbAddress;

function sub_730a8bdb(?) payable {
    return sub_730a8bdbAddress
}

function _fallback() payable {
    revert
}

function createBribe() payable {
    create contract with 0 wei
                    code: code.data[219 len 10614], address(msg.sender)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_730a8bdbAddress = address(create.new_address)
    return address(create.new_address)
}



}
