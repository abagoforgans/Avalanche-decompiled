contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'HcSwapFactory:ONLY_OWNER'
    owner = arg1
    emit TransferOwnership(arg1);
}

function createAToken(string arg1, string arg2, uint8 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'HcSwapFactory:ONLY_OWNER'
    mem[ceil32(arg1.length) + 9280] = arg2.length
    mem[ceil32(arg1.length) + 9312 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 9312] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 9344 len 8896] = code.data[1597 len 8896]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 18240 len 10] = code.data[10493 len 10]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 18250 len floor32(ceil32(arg1.length) + ceil32(arg2.length) + 224)] = 160, ceil32(arg1.length) + 192, arg3 << 248, address(arg4), msg.sender, arg1.length, arg1[all], 0, mem[arg1.length + 9312 len floor32(ceil32(arg1.length) + ceil32(arg2.length) + 224) + -arg1.length - 224]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 224) + 18250] = 256^(-(ceil32(arg1.length) + ceil32(arg2.length) + 224 % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 224) + 18250] or Mask(8 * -floor32(ceil32(arg1.length) + ceil32(arg2.length) + 224) + ceil32(arg1.length) + arg2.length + 256, 0, 0), mem[ceil32(arg1.length) + arg2.length + 9344 len -ceil32(arg1.length) + -arg2.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 224) - 224] and !(256^(-(ceil32(arg1.length) + ceil32(arg2.length) + 224 % 32) + 32) - 1)
    mem[(2 * ceil32(arg1.length)) + (2 * ceil32(arg2.length)) + 18506] = address(arg4)
    mem[(2 * ceil32(arg1.length)) + (2 * ceil32(arg2.length)) + 18474] = 20
    create2 contract with 0 wei
                    salt: sha3(arg4)
                    code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 9344 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 9344 len -arg2.length + ceil32(arg2.length)]]
    emit 0xdb6e2e5e: arg4, address(create2.new_address)
    return address(create2.new_address)
}



}
