contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createPair(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    create2 contract with 0 wei
                    salt: arg1
                    code: code.data[191 len 23835]
    return address(create2.new_address)
}



}
