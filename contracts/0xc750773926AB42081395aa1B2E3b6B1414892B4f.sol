contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint256 totalTokensWithdrawn;
mapping of uint8 stor2;

function sub_bd8d8c32(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function totalTokensWithdrawn() payable {
    return totalTokensWithdrawn
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_408ba15d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + 180] = arg3
    mem[ceil32(arg1.length) + 128] = 72
    if arg1.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0xfe45434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg1.length) + 426 len 30]
    revert with 0, 
                32,
                34,
                0x6545434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg1.length) + 426 len 30]
}

function sub_6066eb7b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + 180] = arg3
    mem[ceil32(arg1.length) + 128] = 72
    if arg1.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0xfe45434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg1.length) + 426 len 30]
    revert with 0, 
                32,
                34,
                0x6545434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg1.length) + 426 len 30]
}

function sub_2aceb8cb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if msg.sender != tx.origin:
        revert with 0, 
                    32,
                    41,
                    0x65526571756972652074686174206d6573736167652073656e6465722069732074782d6f726967696e,
                    mem[ceil32(arg1.length) + 237 len 23]
    mem[ceil32(arg1.length) + 160] = address(msg.sender)
    mem[ceil32(arg1.length) + 180] = arg2
    mem[ceil32(arg1.length) + 128] = 72
    if arg1.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0xfe45434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg1.length) + 426 len 30]
    revert with 0, 
                32,
                34,
                0x6545434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg1.length) + 426 len 30]
}



}
