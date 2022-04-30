contract main {




// =====================  Runtime code  =====================


address resultAddress;
address owner;

function result() payable {
    return resultAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function deploy(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'FORBIDEN'
    create2 contract with 0 wei
                    salt: arg1
                    code: code.data[622 len 8310]
    require ext_code.size(create2.new_address)
    resultAddress = address(create2.new_address)
}

function transferOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'FORBIDEN'
    require ext_code.size(resultAddress)
    call resultAddress.changeOwner(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
