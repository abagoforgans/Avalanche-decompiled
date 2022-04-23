contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function deploy(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    create2 contract with callvalue wei
                    salt: arg2
                    code: arg1[all]
    require ext_code.size(create2.new_address)
}



}
