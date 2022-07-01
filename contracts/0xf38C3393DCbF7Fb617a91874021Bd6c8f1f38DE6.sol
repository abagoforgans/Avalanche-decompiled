contract main {




// =====================  Runtime code  =====================


address sub_730a8bdbAddress;

function sub_730a8bdb(?) payable {
    return sub_730a8bdbAddress
}

function _fallback() payable {
    revert
}

function createGauge(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    create contract with 0 wei
                    code: code.data[601 len 13172], address(arg1), address(arg2), address(arg3), msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_730a8bdbAddress = address(create.new_address)
    return address(create.new_address)
}

function createGaugeSingle(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    create contract with 0 wei
                    code: code.data[601 len 13172], address(arg1), address(arg2), address(arg3), arg4
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_730a8bdbAddress = address(create.new_address)
    return address(create.new_address)
}



}
