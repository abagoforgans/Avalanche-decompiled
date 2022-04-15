contract main {




// =====================  Runtime code  =====================


address implementationAddress;

function getImplementation() payable {
    return implementationAddress
}

function _fallback() payable {
    revert
}

function sub_c972cbdd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require msg.sender == 0x7b71570b01e5d1986a20f97a0db0d309cf685227
    create contract with 0 wei
                    code: arg1[all]
    require address(create.new_address)
    implementationAddress = address(create.new_address)
    create2 contract with 0 wei
                    salt: arg2
                    code: 0x5860208158601c335a63aaf10f428752fa158151803b80938091923cf3
    require address(create2.new_address)
}



}
