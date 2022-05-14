contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function bTokenFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return address(sha3(0, this.address, sha3(address(arg1), arg2), sha3(code.data[708 len 12153], mem[12377 len 7] >> 96968, address(arg1), arg2)))
}

function deploy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    create2 contract with 0 wei
                    salt: sha3(msg.sender, arg1)
                    code: code.data[708 len 12153], msg.sender, arg1
    if not create2.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}



}
