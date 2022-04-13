contract main {




// =====================  Runtime code  =====================


const REVISION = 35


function _fallback() payable {
    revert
}

function getPairImplementation() payable {
    if uint32(ext_code.size(sha3(0, this.address, 0x5061697200000000000000000000000000000000000000000000000000000000, sha3(code.data[374 len 19439])))):
        return address(sha3(0, this.address, 0x5061697200000000000000000000000000000000000000000000000000000000, sha3(code.data[374 len 19439])))
    create2 contract with 0 wei
                    salt: 0x5061697200000000000000000000000000000000000000000000000000000000
                    code: code.data[374 len 19439]
    return address(create2.new_address)
}



}
