contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function deploy(bytes arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    create2 contract with 0 wei
                    salt: arg2
                    code: arg1[all]
    mem[ceil32(arg1.length) + 128] = address(create2.new_address)
    emit Deployed(address rg1):
                  Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                  mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)],
}



}
