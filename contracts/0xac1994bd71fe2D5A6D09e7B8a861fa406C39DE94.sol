contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function newAsset(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    create2 contract with 0 wei
                    salt: arg1
                    code: code.data[188 len 20563]
    if not create2.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}



}
