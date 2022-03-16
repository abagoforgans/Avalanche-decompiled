contract main {




// =====================  Runtime code  =====================


#
#  - sub_43d1d9da(?)
#
address stor0;
address stor1;
array of struct stor2;
mapping of uint8 stor3;
mapping of uint8 stor99;

function sub_fe255a18(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor0 = arg1
}

function sub_f556804a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'Caller is not admin'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = sha3(arg2, 4)
    uint8(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]) = 1
}

function sub_eafde462(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = sha3(arg1, 4)
    mem[ceil32(arg2.length) + 128] = bool(uint8(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]))
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_9926b8d0(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if msg.sender == stor0:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] = mem[ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
        uint256(stor[mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]) = arg3
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] = mem[ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        _85 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3
        emit 0x80216078: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], _85
    else:
        mem[0] = arg4
        mem[32] = 4
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = sha3(arg4, 4)
        if not uint8(stor[mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]):
            revert with 0, 'Not permission'
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] = mem[ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
        uint256(stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])]) = arg3
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] = mem[ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        _106 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3
        emit 0x80216078: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], _106
}

function members(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[64] = ceil32(arg1.length) + ceil32(stor2[arg1[all]][3].length) + 160
    mem[ceil32(arg1.length) + 128] = stor2[arg1[all]][3].length
    mem[0] = sha3(arg1[all], 2) + 3
    mem[ceil32(arg1.length) + 160] = uint256(stor2[arg1[all]][3].field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor2[arg1[all]][3].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    _1051 = mem[64]
    mem[64] = mem[64] + ceil32(stor2[arg1[all]][4].length) + 32
    mem[_1051] = stor2[arg1[all]][4].length
    mem[0] = sha3(arg1[all], 2) + 4
    mem[_1051 + 32] = uint256(stor2[arg1[all]][4].field_0)
    idx = _1051 + 32
    s = 0
    while _1051 + stor2[arg1[all]][4].length > idx:
        mem[idx + 32] = uint256(stor2[arg1[all]][s + 4].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    _2087 = mem[64]
    mem[64] = mem[64] + ceil32(stor2[arg1[all]][5].length) + 32
    mem[_2087] = stor2[arg1[all]][5].length
    mem[0] = sha3(arg1[all], 2) + 5
    mem[_2087 + 32] = uint256(stor2[arg1[all]][5].field_0)
    idx = _2087 + 32
    s = 0
    while _2087 + stor2[arg1[all]][5].length > idx:
        mem[idx + 32] = uint256(stor2[arg1[all]][s + 5].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = uint256(stor2[arg1[all]].field_0)
    mem[mem[64] + 32] = uint256(stor2[arg1[all]].field_256)
    mem[mem[64] + 64] = uint256(stor2[arg1[all]].field_512)
    mem[mem[64] + 96] = 192
    mem[mem[64] + 192] = mem[ceil32(arg1.length) + 128]
    _3174 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 224 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _3174 % 32:
        mem[mem[64] + 128] = _3174 + 224
        mem[_3174 + mem[64] + 224] = mem[_1051]
        _3743 = mem[_1051]
        mem[_3174 + mem[64] + 256 len ceil32(mem[_1051])] = mem[_1051 + 32 len ceil32(mem[_1051])]
        if not _3743 % 32:
            mem[mem[64] + 160] = _3743 + _3174 + 256
            mem[_3743 + _3174 + mem[64] + 256] = stor2[arg1[all]][5].length
            mem[_3743 + _3174 + mem[64] + 288 len ceil32(stor2[arg1[all]][5].length)] = mem[_2087 + 32 len ceil32(stor2[arg1[all]][5].length)]
            if not stor2[arg1[all]][5].length % 32:
                return uint256(stor2[arg1[all]].field_0), 
                       uint256(stor2[arg1[all]].field_256),
                       uint256(stor2[arg1[all]].field_512),
                       Array(len=mem[mem[64] + 192 len _3743 + _3174 + 64], data=stor2[arg1[all]][5].length, mem[mem[64] + _3743 + _3174 + 288 len stor2[arg1[all]][5].length]),
                       _3174 + 224,
                       _3743 + _3174 + 256
            mem[floor32(stor2[arg1[all]][5].length) + _3743 + _3174 + mem[64] + 288] = mem[floor32(stor2[arg1[all]][5].length) + _3743 + _3174 + mem[64] + -stor2[arg1[all]][5].length % 32 + 320 len stor2[arg1[all]][5].length % 32]
            return uint256(stor2[arg1[all]].field_0), 
                   uint256(stor2[arg1[all]].field_256),
                   uint256(stor2[arg1[all]].field_512),
                   Array(len=mem[mem[64] + 192 len _3743 + _3174 + 64], data=stor2[arg1[all]][5].length, mem[mem[64] + _3743 + _3174 + 288 len floor32(stor2[arg1[all]][5].length) + 32]),
                   _3174 + 224,
                   _3743 + _3174 + 256
        mem[floor32(_3743) + _3174 + mem[64] + 256] = mem[floor32(_3743) + _3174 + mem[64] + -(_3743 % 32) + 288 len _3743 % 32]
        mem[mem[64] + 160] = floor32(_3743) + _3174 + 288
        mem[floor32(_3743) + _3174 + mem[64] + 288] = stor2[arg1[all]][5].length
        mem[floor32(_3743) + _3174 + mem[64] + 320 len ceil32(stor2[arg1[all]][5].length)] = mem[_2087 + 32 len ceil32(stor2[arg1[all]][5].length)]
        if not stor2[arg1[all]][5].length % 32:
            return uint256(stor2[arg1[all]].field_0), 
                   uint256(stor2[arg1[all]].field_256),
                   uint256(stor2[arg1[all]].field_512),
                   Array(len=mem[mem[64] + 192 len floor32(_3743) + _3174 + 96], data=stor2[arg1[all]][5].length, mem[mem[64] + floor32(_3743) + _3174 + 320 len stor2[arg1[all]][5].length]),
                   _3174 + 224,
                   floor32(_3743) + _3174 + 288
        mem[floor32(stor2[arg1[all]][5].length) + floor32(_3743) + _3174 + mem[64] + 320] = mem[floor32(stor2[arg1[all]][5].length) + floor32(_3743) + _3174 + mem[64] + -stor2[arg1[all]][5].length % 32 + 352 len stor2[arg1[all]][5].length % 32]
        return uint256(stor2[arg1[all]].field_0), 
               uint256(stor2[arg1[all]].field_256),
               uint256(stor2[arg1[all]].field_512),
               Array(len=mem[mem[64] + 192 len floor32(_3743) + _3174 + 96], data=stor2[arg1[all]][5].length, mem[mem[64] + floor32(_3743) + _3174 + 320 len floor32(stor2[arg1[all]][5].length) + 32]),
               _3174 + 224,
               floor32(_3743) + _3174 + 288
    mem[floor32(_3174) + mem[64] + 224] = mem[floor32(_3174) + mem[64] + -(_3174 % 32) + 256 len _3174 % 32]
    mem[mem[64] + 128] = floor32(_3174) + 256
    mem[floor32(_3174) + mem[64] + 256] = mem[_1051]
    _3848 = mem[_1051]
    mem[floor32(_3174) + mem[64] + 288 len ceil32(mem[_1051])] = mem[_1051 + 32 len ceil32(mem[_1051])]
    if not _3848 % 32:
        mem[mem[64] + 160] = _3848 + floor32(_3174) + 288
        mem[_3848 + floor32(_3174) + mem[64] + 288] = stor2[arg1[all]][5].length
        mem[_3848 + floor32(_3174) + mem[64] + 320 len ceil32(stor2[arg1[all]][5].length)] = mem[_2087 + 32 len ceil32(stor2[arg1[all]][5].length)]
        if not stor2[arg1[all]][5].length % 32:
            return uint256(stor2[arg1[all]].field_0), 
                   uint256(stor2[arg1[all]].field_256),
                   uint256(stor2[arg1[all]].field_512),
                   Array(len=mem[mem[64] + 192 len _3848 + floor32(_3174) + 96], data=stor2[arg1[all]][5].length, mem[mem[64] + _3848 + floor32(_3174) + 320 len stor2[arg1[all]][5].length]),
                   floor32(_3174) + 256,
                   _3848 + floor32(_3174) + 288
        mem[floor32(stor2[arg1[all]][5].length) + _3848 + floor32(_3174) + mem[64] + 320] = mem[floor32(stor2[arg1[all]][5].length) + _3848 + floor32(_3174) + mem[64] + -stor2[arg1[all]][5].length % 32 + 352 len stor2[arg1[all]][5].length % 32]
        return uint256(stor2[arg1[all]].field_0), 
               uint256(stor2[arg1[all]].field_256),
               uint256(stor2[arg1[all]].field_512),
               Array(len=mem[mem[64] + 192 len _3848 + floor32(_3174) + 96], data=stor2[arg1[all]][5].length, mem[mem[64] + _3848 + floor32(_3174) + 320 len floor32(stor2[arg1[all]][5].length) + 32]),
               floor32(_3174) + 256,
               _3848 + floor32(_3174) + 288
    mem[floor32(_3848) + floor32(_3174) + mem[64] + 288] = mem[floor32(_3848) + floor32(_3174) + mem[64] + -(_3848 % 32) + 320 len _3848 % 32]
    mem[mem[64] + 160] = floor32(_3848) + floor32(_3174) + 320
    mem[floor32(_3848) + floor32(_3174) + mem[64] + 320] = stor2[arg1[all]][5].length
    mem[floor32(_3848) + floor32(_3174) + mem[64] + 352 len ceil32(stor2[arg1[all]][5].length)] = mem[_2087 + 32 len ceil32(stor2[arg1[all]][5].length)]
    if not stor2[arg1[all]][5].length % 32:
        return uint256(stor2[arg1[all]].field_0), 
               uint256(stor2[arg1[all]].field_256),
               uint256(stor2[arg1[all]].field_512),
               Array(len=mem[mem[64] + 192 len floor32(_3848) + floor32(_3174) + 128], data=stor2[arg1[all]][5].length, mem[mem[64] + floor32(_3848) + floor32(_3174) + 352 len stor2[arg1[all]][5].length]),
               floor32(_3174) + 256,
               floor32(_3848) + floor32(_3174) + 320
    mem[floor32(stor2[arg1[all]][5].length) + floor32(_3848) + floor32(_3174) + mem[64] + 352] = mem[floor32(stor2[arg1[all]][5].length) + floor32(_3848) + floor32(_3174) + mem[64] + -stor2[arg1[all]][5].length % 32 + 384 len stor2[arg1[all]][5].length % 32]
    return uint256(stor2[arg1[all]].field_0), 
           uint256(stor2[arg1[all]].field_256),
           uint256(stor2[arg1[all]].field_512),
           Array(len=mem[mem[64] + 192 len floor32(_3848) + floor32(_3174) + 128], data=stor2[arg1[all]][5].length, mem[mem[64] + floor32(_3848) + floor32(_3174) + 352 len floor32(stor2[arg1[all]][5].length) + 32]),
           floor32(_3174) + 256,
           floor32(_3848) + floor32(_3174) + 320
}



}
