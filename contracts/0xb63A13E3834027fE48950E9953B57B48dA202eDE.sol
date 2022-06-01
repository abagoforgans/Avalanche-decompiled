contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function findCreate2Address(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if not ext_code.size(sha3(0, Mask(160, 96, this.address) >> 96, arg1, arg2)):
        return address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, arg2))
    else:
        return 0
}

function sub_37fd8aef(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if address(arg1) >> 96 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0xfe496e76616c69642073616c74202d206669727374203230206279746573206f66207468652073616c74206d757374206d617463682063616c6c696e672061646472657373,
                    mem[233 len 27]
    create2 contract with callvalue wei
                    salt: arg1
                    code: arg2[all]
    if not address(create2.new_address):
        revert with 0, 
                    32,
                    70,
                    0x2e4661696c656420746f206465706c6f7920636f6e7472616374207573696e672070726f76696465642073616c7420616e6420696e697469616c697a6174696f6e20636f6465,
                    mem[ceil32(arg2.length) + 266 len 26]
    mem[ceil32(arg2.length) + 128] = address(create2.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}



}
