contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of struct stor1;
mapping of uint8 stor2;
mapping of struct stor3;

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function isUser(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function isRegistred(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2[address(arg1)]:
        return bool(stor2[address(arg1)])
    return bool(stor0[address(arg1)])
}

function sub_93f7d5cf(?) payable {
    require calldata.size - 4 >= 32
    mem[128] = stor3[address(arg1)].field_0
    idx = 128
    s = 0
    while stor3[address(arg1)].length + 96 > idx:
        mem[idx + 32] = stor3[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(stor0[address(arg1)]), Array(len=stor3[address(arg1)].length, data=mem[128 len stor3[address(arg1)].length])
}

function sub_ba9d13fc(?) payable {
    require calldata.size - 4 >= 32
    mem[128] = stor3[address(arg1)].field_0
    idx = 128
    s = 0
    while stor3[address(arg1)].length + 96 > idx:
        mem[idx + 32] = stor3[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(stor2[address(arg1)]), Array(len=stor3[address(arg1)].length, data=mem[128 len stor3[address(arg1)].length])
}

function removeUser(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 32, 29, 0xfe6f6e6c792041646d696e2063616e20646f207468697320616374696f6e0000
    stor0[address(arg1)] = 0
    stor1[address(arg1)].field_0 = 0
    stor1[address(arg1)].field_1 = 7
    stor1[address(arg1)].field_200 = 28259013904065892
    idx = 0
    while stor1[address(arg1)].length + 31 / 32 > idx:
        stor1[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[256] = stor3[address(arg1)].field_0
    idx = 256
    s = 0
    while stor3[address(arg1)].length + 256 > idx + 32:
        mem[idx + 32] = stor3[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x72dcf799: address(arg1), Array(len=stor3[address(arg1)].length, data=mem[256 len stor3[address(arg1)].length + (floor32(stor3[address(arg1)].length - 1) + -stor3[address(arg1)].length + 32 % 32)])
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[address(msg.sender)]:
        revert with 0, 32, 29, 0xfe6f6e6c792041646d696e2063616e20646f207468697320616374696f6e0000
    stor2[address(arg1)] = 0
    stor3[address(arg1)].field_0 = 0
    stor3[address(arg1)].field_1 = 7
    stor3[address(arg1)].field_200 = 28259013904065892
    idx = 0
    while stor3[address(arg1)].length + 31 / 32 > idx:
        stor3[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[256] = stor3[address(arg1)].field_0
    idx = 256
    s = 0
    while stor3[address(arg1)].length + 256 > idx + 32:
        mem[idx + 32] = stor3[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x966db6fb: address(arg1), Array(len=stor3[address(arg1)].length, data=mem[256 len stor3[address(arg1)].length + (floor32(stor3[address(arg1)].length - 1) + -stor3[address(arg1)].length + 32 % 32)])
}

function sub_4b68d431(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not stor2[address(msg.sender)]:
        revert with 0, 32, 29, 0xfe6f6e6c792041646d696e2063616e20646f207468697320616374696f6e0000
    stor0[address(arg1)] = 1
    stor1[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x23e4ac01: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
        emit 0x23e4ac01: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 224 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
}

function addAdmin(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not stor2[address(msg.sender)]:
        revert with 0, 32, 29, 0xfe6f6e6c792041646d696e2063616e20646f207468697320616374696f6e0000
    stor2[address(arg1)] = 1
    stor3[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    if 0 >= arg2.length:
        if not arg2.length % 32:
            emit 0x4781cd01: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, mem[ceil32(arg2.length) + 224 len arg2.length]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
            emit 0x4781cd01: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, mem[ceil32(arg2.length) + 224 len floor32(arg2.length) + 32]
    else:
        mem[ceil32(arg2.length) + 224] = mem[128]
        mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit 0x4781cd01: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, mem[ceil32(arg2.length) + 224 len arg2.length]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 224] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32]
            emit 0x4781cd01: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], arg2.length, mem[128], mem[ceil32(arg2.length) + 256 len floor32(arg2.length)]
}



}
