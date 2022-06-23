contract main {




// =====================  Runtime code  =====================


#
#  - sub_f672e7ab(?)
#
const test = 'Follow the White Rabbit'


address owner;
array of struct sub_8694809d;
mapping of uint8 stor2;
mapping of address sub_9df4accd;
array of struct sub_37e15f0a;

function sub_03a32b9b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return bool(stor2[arg1[all]])
}

function sub_37e15f0a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_37e15f0a.length
    return sub_37e15f0a[arg1].field_0
}

function sub_8694809d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_8694809d[arg1].field_0
    return sub_8694809d[arg1][arg2].field_0
}

function owner() payable {
    return owner
}

function sub_9df4accd(?) payable {
    return sub_9df4accd['PRIV_IMPL']
}

function sub_ea74f813(?) payable {
    require calldata.size - 4 >= 32
    return sub_9df4accd[arg1]
}

function allPoolsLength() payable {
    return sub_37e15f0a.length
}

function sub_f33a01c4(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5803e772(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9df4accd['PRIV_IMPL'] = arg1
}

function sub_f25ee42d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9df4accd['H_TOKEN_IMPL'] = arg1
}

function sub_6f9b1364(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9df4accd['SPOT_PUB_POOL_IMPL'] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[5838 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAllPools() payable {
    if not sub_37e15f0a.length:
        mem[(32 * sub_37e15f0a.length) + 128] = 32
        mem[(32 * sub_37e15f0a.length) + 160] = sub_37e15f0a.length
        mem[(32 * sub_37e15f0a.length) + 192 len floor32(sub_37e15f0a.length)] = mem[128 len floor32(sub_37e15f0a.length)]
        return memory
          from (32 * sub_37e15f0a.length) + 128
           len (96 * sub_37e15f0a.length) + 64
    mem[128] = address(sub_37e15f0a.field_0)
    idx = 128
    s = 0
    while (32 * sub_37e15f0a.length) + 96 > idx:
        mem[idx + 32] = sub_37e15f0a[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_37e15f0a.length) + 192 len floor32(sub_37e15f0a.length)] = mem[128 len floor32(sub_37e15f0a.length)]
    return Array(len=sub_37e15f0a.length, data=mem[128 len floor32(sub_37e15f0a.length)], mem[(32 * sub_37e15f0a.length) + floor32(sub_37e15f0a.length) + 192 len (32 * sub_37e15f0a.length) - floor32(sub_37e15f0a.length)]), 
}

function getPools(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_8694809d[address(arg1)].field_0:
        mem[(32 * sub_8694809d[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_8694809d[address(arg1)].field_0) + 160] = sub_8694809d[address(arg1)].field_0
        mem[(32 * sub_8694809d[address(arg1)].field_0) + 192 len floor32(sub_8694809d[address(arg1)].field_0)] = mem[128 len floor32(sub_8694809d[address(arg1)].field_0)]
        return memory
          from (32 * sub_8694809d[address(arg1)].field_0) + 128
           len (96 * sub_8694809d[address(arg1)].field_0) + 64
    mem[128] = sub_8694809d[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_8694809d[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_8694809d[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_8694809d[address(arg1)].field_0) + 192 len floor32(sub_8694809d[address(arg1)].field_0)] = mem[128 len floor32(sub_8694809d[address(arg1)].field_0)]
    return Array(len=sub_8694809d[address(arg1)].field_0, data=mem[128 len floor32(sub_8694809d[address(arg1)].field_0)], mem[(32 * sub_8694809d[address(arg1)].field_0) + floor32(sub_8694809d[address(arg1)].field_0) + 192 len (32 * sub_8694809d[address(arg1)].field_0) - floor32(sub_8694809d[address(arg1)].field_0)]), 
}



}
