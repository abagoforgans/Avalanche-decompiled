contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address stor1;
uint256 stor4;
uint256 stor5;
mapping of struct stor6;
mapping of struct sub_19138d0c;

function sub_19138d0c(?) payable {
    require calldata.size - 4 >= 32
    return sub_19138d0c[arg1].field_0, bool(sub_19138d0c[arg1].field_160)
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
    revert
}

function sub_8a2ad116(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor6[arg1 << 240].field_768 = 0
}

function sub_2ebf36d1(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    sub_19138d0c[arg1 << 240].field_160 = 0
}

function sub_47647fc0(?) payable {
    idx = 0
    while idx < stor5:
        s = 0
        while s < stor5:
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    return ''
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    stor1 = arg1
    emit OwnershipTransferRequested(address(owner), arg1);
}

function acceptOwnership() payable {
    if stor1 != msg.sender:
        revert with 0, 'Must be proposed owner'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = 0
    emit OwnershipTransferred(address(owner), msg.sender);
}

function addExchange(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    sub_19138d0c[stor5].field_0 = arg1
    sub_19138d0c[stor5].field_160 = 1
    stor5++
}

function sub_0a56cd15(?) payable {
    require calldata.size - 4 >= 128
    mem[96 len 64] = call.data[68 len 64]
    mem[160] = 0xbd5f68b000000000000000000000000000000000000000000000000000000000
    mem[164] = arg2
    mem[196 len 64] = call.data[68 len 64]
    require ext_code.size(sub_19138d0c[arg1].field_0)
    staticcall sub_19138d0c[arg1].field_0.0xbd5f68b0 with:
            gas gas_remaining wei
           args arg2, call.data[68 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _8 = mem[160 len 4], Mask(224, 32, arg2) >> 32
    require mem[160 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[160 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[160 len 4], Mask(224, 32, arg2) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, arg2) >> 32 + 160]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, arg2) >> 32 + 160]
    _11 = mem[_8 + 160]
    mem[ceil32(return_data.size) + 192 len floor32(mem[_8 + 160])] = mem[_8 + 192 len floor32(mem[_8 + 160])]
    mem[(32 * _11) + ceil32(return_data.size) + 192] = 32
    mem[(32 * _11) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 160]
    mem[(32 * _11) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
    return 32, mem[(32 * _11) + ceil32(return_data.size) + 224 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
}

function sub_2eaa4fe6(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 6
    mem[96] = stor6[arg1][1].length
    mem[128] = stor6[arg1][1].field_0
    idx = 128
    s = 0
    while stor6[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor6[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 160
    mem[ceil32(stor6[arg1][1].length) + 128] = stor6[arg1][2].length
    mem[0] = sha3(arg1, 6) + 2
    mem[ceil32(stor6[arg1][1].length) + 160] = stor6[arg1][2].field_0
    idx = ceil32(stor6[arg1][1].length) + 160
    s = 0
    while ceil32(stor6[arg1][1].length) + stor6[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor6[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 160] = stor6[arg1].field_0
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 192] = stor6[arg1].field_160
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 288] = bool(stor6[arg1].field_768)
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 224] = 160
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 320] = stor6[arg1][1].length
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 352 len ceil32(stor6[arg1][1].length)] = mem[128 len ceil32(stor6[arg1][1].length)]
    mem[ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 256] = stor6[arg1][1].length + 192
    mem[stor6[arg1][1].length + ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 352] = stor6[arg1][2].length
    mem[stor6[arg1][1].length + ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 384 len ceil32(stor6[arg1][2].length)] = mem[ceil32(stor6[arg1][1].length) + 160 len ceil32(stor6[arg1][2].length)]
    if not stor6[arg1][2].length % 32:
        return stor6[arg1].field_0, 
               stor6[arg1].field_0,
               Array(len=stor6[arg1][1].length, data=mem[128 len ceil32(stor6[arg1][1].length)], mem[(2 * ceil32(stor6[arg1][1].length)) + ceil32(stor6[arg1][2].length) + 352 len stor6[arg1][2].length + stor6[arg1][1].length + -ceil32(stor6[arg1][1].length) + 32]),
               stor6[arg1][1].length + 192,
               bool(stor6[arg1].field_768)
    mem[floor32(stor6[arg1][2].length) + stor6[arg1][1].length + ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + 384] = mem[floor32(stor6[arg1][2].length) + stor6[arg1][1].length + ceil32(stor6[arg1][1].length) + ceil32(stor6[arg1][2].length) + -stor6[arg1][2].length % 32 + 416 len stor6[arg1][2].length % 32]
    return stor6[arg1].field_0, 
           stor6[arg1].field_0,
           Array(len=stor6[arg1][1].length, data=mem[128 len ceil32(stor6[arg1][1].length)], mem[(2 * ceil32(stor6[arg1][1].length)) + ceil32(stor6[arg1][2].length) + 352 len floor32(stor6[arg1][2].length) + stor6[arg1][1].length + -ceil32(stor6[arg1][1].length) + 64]),
           stor6[arg1][1].length + 192,
           bool(stor6[arg1].field_768)
}

function addToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only callable by owner'
    mem[96] = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = ext_call.return_data[31 len 1]
    mem[256] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _11 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 32 <= return_data.size
    require return_data.size >= mem[mem[256] + 256] + mem[256] + 32 and mem[mem[256] + 256] <= 4294967296
    mem[ceil32(return_data.size) + 256] = mem[mem[256] + 256]
    _14 = mem[_11 + 256]
    mem[ceil32(return_data.size) + 288 len ceil32(mem[_11 + 256])] = mem[_11 + 288 len ceil32(mem[_11 + 256])]
    if not _14 % 32:
        mem[_14 + ceil32(return_data.size) + 288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_14 + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _218 = mem[_14 + ceil32(return_data.size) + 288]
        require mem[_14 + ceil32(return_data.size) + 288] <= 4294967296
        require mem[_14 + ceil32(return_data.size) + 288] + 32 <= return_data.size
        require return_data.size >= mem[_14 + ceil32(return_data.size) + mem[_14 + ceil32(return_data.size) + 288] + 288] + mem[_14 + ceil32(return_data.size) + 288] + 32 and mem[_14 + ceil32(return_data.size) + mem[_14 + ceil32(return_data.size) + 288] + 288] <= 4294967296
        mem[_14 + (2 * ceil32(return_data.size)) + 288] = mem[_14 + ceil32(return_data.size) + mem[_14 + ceil32(return_data.size) + 288] + 288]
        _224 = mem[_14 + ceil32(return_data.size) + _218 + 288]
        mem[_14 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[_14 + ceil32(return_data.size) + _218 + 288])] = mem[_14 + ceil32(return_data.size) + _218 + 320 len ceil32(mem[_14 + ceil32(return_data.size) + _218 + 288])]
        if _224 % 32:
            mem[floor32(_224) + _14 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_224) + _14 + (2 * ceil32(return_data.size)) + -(_224 % 32) + 352 len _224 % 32]
        stor6[stor4].field_0 = uint64(arg1) << 96
        stor6[stor4].field_160 = mem[159 len 1]
        if mem[ceil32(return_data.size) + 256]:
            stor6[stor4][1][].field_0 = Array(len=mem[ceil32(return_data.size) + 256], data=mem[ceil32(return_data.size) + 288 len mem[ceil32(return_data.size) + 256]])
        else:
            stor6[stor4].field_256 = 0
            idx = 0
            while stor6[stor4][1].length + 31 / 32 > idx:
                stor6[stor4][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        if mem[_14 + (2 * ceil32(return_data.size)) + 288]:
            stor6[stor4][2][].field_0 = Array(len=mem[_14 + (2 * ceil32(return_data.size)) + 288], data=mem[_14 + (2 * ceil32(return_data.size)) + 320 len mem[_14 + (2 * ceil32(return_data.size)) + 288]])
        else:
            stor6[stor4].field_512 = 0
            idx = 0
            while stor6[stor4][2].length + 31 / 32 > idx:
                stor6[stor4][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        mem[floor32(_14) + ceil32(return_data.size) + 288] = mem[floor32(_14) + ceil32(return_data.size) + -(_14 % 32) + 320 len _14 % 32]
        mem[160] = ceil32(return_data.size) + 256
        mem[floor32(_14) + ceil32(return_data.size) + 320] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_14) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_14) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _221 = mem[floor32(_14) + ceil32(return_data.size) + 320]
        require mem[floor32(_14) + ceil32(return_data.size) + 320] <= 4294967296
        require mem[floor32(_14) + ceil32(return_data.size) + 320] + 32 <= return_data.size
        require return_data.size >= mem[floor32(_14) + ceil32(return_data.size) + mem[floor32(_14) + ceil32(return_data.size) + 320] + 320] + mem[floor32(_14) + ceil32(return_data.size) + 320] + 32 and mem[floor32(_14) + ceil32(return_data.size) + mem[floor32(_14) + ceil32(return_data.size) + 320] + 320] <= 4294967296
        mem[floor32(_14) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_14) + ceil32(return_data.size) + mem[floor32(_14) + ceil32(return_data.size) + 320] + 320]
        _226 = mem[floor32(_14) + ceil32(return_data.size) + _221 + 320]
        mem[floor32(_14) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[floor32(_14) + ceil32(return_data.size) + _221 + 320])] = mem[floor32(_14) + ceil32(return_data.size) + _221 + 352 len ceil32(mem[floor32(_14) + ceil32(return_data.size) + _221 + 320])]
        if _226 % 32:
            mem[floor32(_226) + floor32(_14) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_226) + floor32(_14) + (2 * ceil32(return_data.size)) + -(_226 % 32) + 384 len _226 % 32]
        stor6[stor4].field_0 = uint64(arg1) << 96
        stor6[stor4].field_160 = mem[159 len 1]
        if mem[ceil32(return_data.size) + 256]:
            stor6[stor4][1][].field_0 = Array(len=mem[ceil32(return_data.size) + 256], data=mem[ceil32(return_data.size) + 288 len mem[ceil32(return_data.size) + 256]])
        else:
            stor6[stor4].field_256 = 0
            idx = 0
            while stor6[stor4][1].length + 31 / 32 > idx:
                stor6[stor4][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        if mem[floor32(_14) + (2 * ceil32(return_data.size)) + 320]:
            stor6[stor4][2][].field_0 = Array(len=mem[floor32(_14) + (2 * ceil32(return_data.size)) + 320], data=mem[floor32(_14) + (2 * ceil32(return_data.size)) + 352 len mem[floor32(_14) + (2 * ceil32(return_data.size)) + 320]])
        else:
            stor6[stor4].field_512 = 0
            idx = 0
            while stor6[stor4][2].length + 31 / 32 > idx:
                stor6[stor4][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor6[stor4].field_768 = 1
    stor4++
}



}
