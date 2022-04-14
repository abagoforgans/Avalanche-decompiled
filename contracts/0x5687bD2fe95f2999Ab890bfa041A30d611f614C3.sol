contract main {




// =====================  Runtime code  =====================


const REVISION = 120


function _fallback() payable {
    revert
}

function getPairImplementation() payable {
    if uint32(ext_code.size(sha3(0, this.address, 0x53686f7274696e67506169720000000000000000000000000000000000000000, sha3(code.data[382 len 20209])))):
        return address(sha3(0, this.address, 0x53686f7274696e67506169720000000000000000000000000000000000000000, sha3(code.data[382 len 20209])))
    create2 contract with 0 wei
                    salt: 0x53686f7274696e67506169720000000000000000000000000000000000000000
                    code: code.data[382 len 20209]
    return address(create2.new_address)
}



}
