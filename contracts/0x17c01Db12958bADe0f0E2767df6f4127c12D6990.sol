contract main {




// =====================  Runtime code  =====================


mapping of address implementation;
mapping of address stor2382598658595645637857244197355718898753249720448685377270439908359411;

function getImplementation() payable {
    return implementation[address(msg.sender)]
}

function _fallback() payable {
    revert
}

function deploy(uint256 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = 29
    mem[ceil32(arg2.length) + 160] = 0x5860208158601c335a63aaf10f428752fa158151803b80938091923cf3000000
    mem[ceil32(arg2.length) + 224] = 0x5860208158601c335a63aaf10f428752fa158151803b80938091923cf3000000
    mem[ceil32(arg2.length) + 192] = 29
    mem[ceil32(arg2.length) + 285] = 0xff00000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 286] = address(this.address)
    mem[ceil32(arg2.length) + 306] = arg1
    mem[ceil32(arg2.length) + 338] = sha3(0x5860208158601c335a63aaf10f428752fa158151803b80938091923cf3)
    mem[ceil32(arg2.length) + 253] = 85
    create contract with 0 wei
                    code: arg2[all]
    stor0[address(sha3(0, this.address, arg1, ('name', 'stor5860', 2382598658595645637857244197355718898753249720448685377270439908359411)))] = address(create.new_address)
    create2 contract with 0 wei
                    salt: arg1
                    code: mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]
    if address(create2.new_address) != address(sha3(0, this.address, arg1, sha3(0x5860208158601c335a63aaf10f428752fa158151803b80938091923cf3))):
        revert with 0, 'Failed to deploy the new metamorphic contract.'
    emit Deployed(address(create2.new_address));
}



}
