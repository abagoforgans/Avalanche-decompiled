contract main {




// =====================  Runtime code  =====================


#
#  - sub_a633b2f2(?)
#
address owner;
address stor1;
uint256 stor2;
mapping of uint8 stor3;
mapping of struct stor4;

function WhiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function owner() payable {
    return owner
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

function setNode(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function sub_412c5bfa(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 10 * 10^6:
        return 5
    if arg1 >= 5 * 10^6:
        return 4
    if arg1 >= 10^6:
        return 3
    if arg1 < 500000:
        return 1
    return 2
}

function sub_7cddee37(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < 3:
        return 50
    if arg1 < 8:
        return 55
    if arg1 < 15:
        return 60
    if arg1 < 20:
        return 65
    if arg1 >= 25:
        return 70
    return 68
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setWhitelist(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getTVL() payable {
    require ext_code.size(stor1)
    staticcall stor1.0x56189236 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 1
    s = 0
    while idx <= ext_call.return_data[0]:
        mem[mem[64]] = 0x36dac2cc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        require ext_code.size(stor1)
        staticcall stor1.0x36dac2cc with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _38 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _39 = mem[_38]
        require mem[_38] <= test266151307()
        require return_data.size - mem[_38] >= 288
        if not bool(_38 + ceil32(return_data.size) + 288 <= test266151307()):
            revert with 0, 65
        mem[64] = _38 + ceil32(return_data.size) + 288
        _41 = mem[_38 + _39]
        require mem[_38 + _39] <= test266151307()
        require _38 + _39 + mem[_38 + _39] + 31 < _38 + return_data.size
        _42 = mem[_38 + _39 + mem[_38 + _39]]
        if mem[_38 + _39 + mem[_38 + _39]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_38 + _39 + mem[_38 + _39]])) + 289 < 288 or _38 + ceil32(return_data.size) + ceil32(ceil32(mem[_38 + _39 + mem[_38 + _39]])) + 289 > test266151307():
            revert with 0, 65
        mem[64] = _38 + ceil32(return_data.size) + ceil32(ceil32(mem[_38 + _39 + mem[_38 + _39]])) + 289
        mem[_38 + ceil32(return_data.size) + 288] = _42
        require _39 + _41 + _42 + 32 <= return_data.size
        t = 0
        while t < _42:
            mem[t + _38 + ceil32(return_data.size) + 320] = mem[t + _38 + _39 + _41 + 32]
            t = t + 32
            continue 
        if ceil32(_42) > _42:
            mem[_42 + _38 + ceil32(return_data.size) + 320] = 0
        mem[_38 + ceil32(return_data.size)] = _38 + ceil32(return_data.size) + 288
        mem[_38 + ceil32(return_data.size) + 32] = mem[_38 + _39 + 32]
        mem[_38 + ceil32(return_data.size) + 64] = mem[_38 + _39 + 64]
        mem[_38 + ceil32(return_data.size) + 96] = mem[_38 + _39 + 96]
        mem[_38 + ceil32(return_data.size) + 128] = mem[_38 + _39 + 128]
        mem[_38 + ceil32(return_data.size) + 160] = mem[_38 + _39 + 160]
        mem[_38 + ceil32(return_data.size) + 192] = mem[_38 + _39 + 192]
        require mem[_38 + _39 + 224] < 6
        mem[_38 + ceil32(return_data.size) + 224] = mem[_38 + _39 + 224]
        require mem[_38 + _39 + 256] < 6
        mem[_38 + ceil32(return_data.size) + 256] = mem[_38 + _39 + 256]
        if s > !mem[_38 + ceil32(return_data.size) + 64]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_38 + ceil32(return_data.size) + 64]
        continue 
    return s
}

function sub_4ad0e221(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 6
    require arg2 < 6
    if bool(stor4[arg1][arg2].field_0):
        if bool(stor4[arg1][arg2].field_0) == uint255(stor4[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4[arg1][arg2].field_0):
            if bool(stor4[arg1][arg2].field_0) == uint255(stor4[arg1][arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1][arg2].field_0):
                if 31 < uint255(stor4[arg1][arg2].field_0) * 0.5:
                    mem[128] = stor4[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor4[arg1][arg2].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor4[arg1][arg2].field_8)
        else:
            if bool(stor4[arg1][arg2].field_0) == stor4[arg1][arg2].field_1 % 128 < 32:
                revert with 0, 34
            if stor4[arg1][arg2].field_1 % 128:
                if 31 < stor4[arg1][arg2].field_1 % 128:
                    mem[128] = stor4[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1][arg2].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor4[arg1][arg2].field_8)
        mem[ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5) + 192 len ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5)]
        if ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5) > uint255(stor4[arg1][arg2].field_0) * 0.5:
            mem[(uint255(stor4[arg1][arg2].field_0) * 0.5) + ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor4[arg1][arg2].field_0) * 0.5)]), 
    if bool(stor4[arg1][arg2].field_0) == stor4[arg1][arg2].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4[arg1][arg2].field_0):
        if bool(stor4[arg1][arg2].field_0) == uint255(stor4[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4[arg1][arg2].field_0):
            if 31 < uint255(stor4[arg1][arg2].field_0) * 0.5:
                mem[128] = stor4[arg1][arg2].field_0
                idx = 128
                s = 0
                while (uint255(stor4[arg1][arg2].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor4[arg1][arg2].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4[arg1][arg2].field_8)
    else:
        if bool(stor4[arg1][arg2].field_0) == stor4[arg1][arg2].field_1 % 128 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_1 % 128:
            if 31 < stor4[arg1][arg2].field_1 % 128:
                mem[128] = stor4[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor4[arg1][arg2].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor4[arg1][arg2].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4[arg1][arg2].field_8)
    mem[ceil32(stor4[arg1][arg2].field_1 % 128) + 192 len ceil32(stor4[arg1][arg2].field_1 % 128)] = mem[128 len ceil32(stor4[arg1][arg2].field_1 % 128)]
    if ceil32(stor4[arg1][arg2].field_1 % 128) > stor4[arg1][arg2].field_1 % 128:
        mem[stor4[arg1][arg2].field_1 % 128 + ceil32(stor4[arg1][arg2].field_1 % 128) + 192] = 0
    return Array(len=stor4[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor4[arg1][arg2].field_1 % 128)], mem[(2 * ceil32(stor4[arg1][arg2].field_1 % 128)) + 192 len 2 * ceil32(stor4[arg1][arg2].field_1 % 128)]), 
}

function getMeta(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0x36dac2cc00000000000000000000000000000000000000000000000000000000
    mem[388] = arg1
    require ext_code.size(stor1)
    staticcall stor1.0x36dac2cc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[384 len 4], Mask(224, 32, arg1) >> 32
    require mem[384 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[384 len 4], Mask(224, 32, arg1) >> 32 >= 288
    if not bool(ceil32(return_data.size) + 672 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 672
    _7 = mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384]
    require mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384] <= test266151307()
    require mem[384 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384] + 415 < return_data.size + 384
    _8 = mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384] + 384]
    if mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384] + 384] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384] + 384])) + 289 < 288 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384] + 384])) + 673 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384] + 384])) + 673
    mem[ceil32(return_data.size) + 672] = _8
    require mem[384 len 4], Mask(224, 32, arg1) >> 32 + _7 + _8 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 704 len ceil32(_8)] = mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + _7 + 416 len ceil32(_8)]
    if ceil32(_8) <= _8:
        mem[ceil32(return_data.size) + 384] = ceil32(return_data.size) + 672
        mem[ceil32(return_data.size) + 416] = mem[_5 + 416]
        mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
        mem[ceil32(return_data.size) + 480] = mem[_5 + 480]
        mem[ceil32(return_data.size) + 512] = mem[_5 + 512]
        mem[ceil32(return_data.size) + 544] = mem[_5 + 544]
        mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
        require mem[_5 + 608] < 6
        mem[ceil32(return_data.size) + 608] = mem[_5 + 608]
        require mem[_5 + 640] < 6
        mem[ceil32(return_data.size) + 640] = mem[_5 + 640]
        _88 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 288
        mem[mem[64] + 320] = _8
        mem[mem[64] + 352 len ceil32(_8)] = mem[ceil32(return_data.size) + 704 len ceil32(_8)]
        if ceil32(_8) <= _8:
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 416]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 448]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 480]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 544]
            mem[mem[64] + 224] = mem[ceil32(return_data.size) + 576]
            if mem[ceil32(return_data.size) + 608] >= 6:
                revert with 0, 33
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 608]
            if mem[ceil32(return_data.size) + 640] >= 6:
                revert with 0, 33
            mem[mem[64] + 288] = mem[ceil32(return_data.size) + 640]
            return 32, 288, mem[mem[64] + 64 len 256], _8, mem[mem[64] + 352 len ceil32(_8)]
        mem[_8 + mem[64] + 352] = 0
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 416]
        mem[_88 + 96] = mem[ceil32(return_data.size) + 448]
        mem[_88 + 128] = mem[ceil32(return_data.size) + 480]
        mem[_88 + 160] = mem[ceil32(return_data.size) + 512]
        mem[_88 + 192] = mem[ceil32(return_data.size) + 544]
        mem[_88 + 224] = mem[ceil32(return_data.size) + 576]
        if mem[ceil32(return_data.size) + 608] >= 6:
            revert with 0, 33
        mem[_88 + 256] = mem[ceil32(return_data.size) + 608]
        if mem[ceil32(return_data.size) + 640] >= 6:
            revert with 0, 33
        mem[_88 + 288] = mem[ceil32(return_data.size) + 640]
        return memory
          from mem[64]
           len ceil32(_8) + _88 + -mem[64] + 352
    mem[_8 + ceil32(return_data.size) + 704] = 0
    mem[ceil32(return_data.size) + 384] = ceil32(return_data.size) + 672
    mem[ceil32(return_data.size) + 416] = mem[_5 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
    mem[ceil32(return_data.size) + 480] = mem[_5 + 480]
    mem[ceil32(return_data.size) + 512] = mem[_5 + 512]
    mem[ceil32(return_data.size) + 544] = mem[_5 + 544]
    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
    require mem[_5 + 608] < 6
    mem[ceil32(return_data.size) + 608] = mem[_5 + 608]
    require mem[_5 + 640] < 6
    mem[ceil32(return_data.size) + 640] = mem[_5 + 640]
    _89 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 288
    mem[mem[64] + 320] = _8
    mem[mem[64] + 352 len ceil32(_8)] = mem[ceil32(return_data.size) + 704 len ceil32(_8)]
    if ceil32(_8) <= _8:
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 416]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 448]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 480]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 192] = mem[ceil32(return_data.size) + 544]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 576]
        if mem[ceil32(return_data.size) + 608] >= 6:
            revert with 0, 33
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 608]
        if mem[ceil32(return_data.size) + 640] >= 6:
            revert with 0, 33
        mem[mem[64] + 288] = mem[ceil32(return_data.size) + 640]
        return 32, 288, mem[mem[64] + 64 len 256], _8, mem[mem[64] + 352 len ceil32(_8)]
    mem[_8 + mem[64] + 352] = 0
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 416]
    mem[_89 + 96] = mem[ceil32(return_data.size) + 448]
    mem[_89 + 128] = mem[ceil32(return_data.size) + 480]
    mem[_89 + 160] = mem[ceil32(return_data.size) + 512]
    mem[_89 + 192] = mem[ceil32(return_data.size) + 544]
    mem[_89 + 224] = mem[ceil32(return_data.size) + 576]
    if mem[ceil32(return_data.size) + 608] >= 6:
        revert with 0, 33
    mem[_89 + 256] = mem[ceil32(return_data.size) + 608]
    if mem[ceil32(return_data.size) + 640] >= 6:
        revert with 0, 33
    mem[_89 + 288] = mem[ceil32(return_data.size) + 640]
    return memory
      from mem[64]
       len ceil32(_8) + _89 + -mem[64] + 352
}

function sub_54ab5ba7(?) payable {
    mem[0] = msg.sender
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'Not allowed'
    if stor2 == -1:
        revert with 0, 17
    stor2++
    require ext_code.size(stor1)
    staticcall stor1.0x56189236 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 5:
        mem[ceil32(return_data.size) + 96] = 0xcc72ba0f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = 1
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0xcc72ba0f with:
                gas gas_remaining wei
               args 1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _11 = mem[ceil32(return_data.size) + 96 len 4], 0
        require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
        _14 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        require return_data.size >= _11 + (32 * _14) + 32
        s = ceil32(return_data.size) + _11 + 128
        t = (2 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _14:
            _65 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _11 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _69 = mem[ceil32(return_data.size) + _11 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _11 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _77 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1
            mem[_77] = _69
            require _11 + _65 + _69 + 64 <= return_data.size
            u = 0
            while u < _69:
                mem[u + _77 + 32] = mem[u + ceil32(return_data.size) + _11 + _65 + 160]
                u = u + 32
                continue 
            if ceil32(_69) > _69:
                mem[_69 + _77 + 32] = 0
            mem[t] = _77
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _67 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 128
        _71 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _71) + 192
        u = mem[64] + 192
        while idx < _71:
            mem[u] = t + -_67 - 192
            _110 = mem[s]
            _113 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _113:
                mem[v + t + 32] = mem[v + _110 + 32]
                v = v + 32
                continue 
            if ceil32(_113) > _113:
                mem[_113 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_113) + t + 32
            u = u + 32
            continue 
        mem[_67 + 128] = stor2
        _117 = mem[64]
        mem[mem[64]] = t + -mem[64] - 32
        mem[64] = t
        if not sha3(mem[_117 + 32 len mem[_117]]) % 4:
            return 0
        if 1 == sha3(mem[_117 + 32 len mem[_117]]) % 4:
            return 1
        if 2 == sha3(mem[_117 + 32 len mem[_117]]) % 4:
            return 2
        if sha3(mem[_117 + 32 len mem[_117]]) % 4 != 3:
            return 0
    else:
        if ext_call.return_data[0] < 5:
            revert with 0, 17
        if 1 > !(ext_call.return_data[0] - 5):
            revert with 0, 17
        mem[ceil32(return_data.size) + 96] = 0xcc72ba0f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = ext_call.return_data[0] - 4
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0xcc72ba0f with:
                gas gas_remaining wei
               args ext_call.return_data[0] - 4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _17 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        _18 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96]
        require return_data.size >= _17 + (32 * _18) + 32
        s = ceil32(return_data.size) + _17 + 128
        t = (2 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _18:
            _64 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _17 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _68 = mem[ceil32(return_data.size) + _17 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _17 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _75 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1
            mem[_75] = _68
            require _17 + _64 + _68 + 64 <= return_data.size
            u = 0
            while u < _68:
                mem[u + _75 + 32] = mem[u + ceil32(return_data.size) + _17 + _64 + 160]
                u = u + 32
                continue 
            if ceil32(_68) > _68:
                mem[_68 + _75 + 32] = 0
            mem[t] = _75
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _66 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 128
        _70 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _70) + 192
        u = mem[64] + 192
        while idx < _70:
            mem[u] = t + -_66 - 192
            _108 = mem[s]
            _112 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _112:
                mem[v + t + 32] = mem[v + _108 + 32]
                v = v + 32
                continue 
            if ceil32(_112) > _112:
                mem[_112 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_112) + t + 32
            u = u + 32
            continue 
        mem[_66 + 128] = stor2
        _114 = mem[64]
        mem[mem[64]] = t + -mem[64] - 32
        mem[64] = t
        if not sha3(mem[_114 + 32 len mem[_114]]) % 4:
            return 0
        if 1 == sha3(mem[_114 + 32 len mem[_114]]) % 4:
            return 1
        if 2 == sha3(mem[_114 + 32 len mem[_114]]) % 4:
            return 2
        if sha3(mem[_114 + 32 len mem[_114]]) % 4 != 3:
            return 0
    return 3
}

function sub_9a2754f4(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 2
    mem[96] = 0x36dac2cc00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor1)
    staticcall stor1.0x36dac2cc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[96 len 4], Mask(224, 32, arg1) >> 32 >= 288
    if not bool(ceil32(return_data.size) + 384 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 384
    _6 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < return_data.size + 96
    _7 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 289 < 288 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 385 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96])) + 385
    mem[ceil32(return_data.size) + 384] = _7
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 416 len ceil32(_7)] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + _6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 384
        mem[ceil32(return_data.size) + 128] = mem[_4 + 128]
        mem[ceil32(return_data.size) + 160] = mem[_4 + 160]
        mem[ceil32(return_data.size) + 192] = mem[_4 + 192]
        mem[ceil32(return_data.size) + 224] = mem[_4 + 224]
        mem[ceil32(return_data.size) + 256] = mem[_4 + 256]
        mem[ceil32(return_data.size) + 288] = mem[_4 + 288]
        require mem[_4 + 320] < 6
        mem[ceil32(return_data.size) + 320] = mem[_4 + 320]
        require mem[_4 + 352] < 6
        mem[ceil32(return_data.size) + 352] = mem[_4 + 352]
        if mem[ceil32(return_data.size) + 352] > 5:
            revert with 0, 33
        if mem[ceil32(return_data.size) + 352] == 5:
            if arg2 > 1:
                revert with 0, 33
            require ext_code.size(stor1)
            if arg2:
                staticcall stor1.0xe5d76232 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_139]
            else:
                staticcall stor1.0x146daff4 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_140]
        else:
            if mem[ceil32(return_data.size) + 352] > 5:
                revert with 0, 33
            if arg2 > 1:
                revert with 0, 33
            require ext_code.size(stor1)
            if mem[ceil32(return_data.size) + 352] != 4:
                if arg2:
                    staticcall stor1.0xae55ae5 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _151 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_151]
                else:
                    staticcall stor1.0x6f8f1ceb with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _152 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_152]
            else:
                if arg2:
                    staticcall stor1.0x1ec4a4a8 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _153 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_153]
                else:
                    staticcall stor1.0x19a41ea9 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _154 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_154]
    else:
        mem[_7 + ceil32(return_data.size) + 416] = 0
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 384
        mem[ceil32(return_data.size) + 128] = mem[_4 + 128]
        mem[ceil32(return_data.size) + 160] = mem[_4 + 160]
        mem[ceil32(return_data.size) + 192] = mem[_4 + 192]
        mem[ceil32(return_data.size) + 224] = mem[_4 + 224]
        mem[ceil32(return_data.size) + 256] = mem[_4 + 256]
        mem[ceil32(return_data.size) + 288] = mem[_4 + 288]
        require mem[_4 + 320] < 6
        mem[ceil32(return_data.size) + 320] = mem[_4 + 320]
        require mem[_4 + 352] < 6
        mem[ceil32(return_data.size) + 352] = mem[_4 + 352]
        if mem[ceil32(return_data.size) + 352] > 5:
            revert with 0, 33
        if mem[ceil32(return_data.size) + 352] == 5:
            if arg2 > 1:
                revert with 0, 33
            require ext_code.size(stor1)
            if arg2:
                staticcall stor1.0xe5d76232 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _149 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_149]
            else:
                staticcall stor1.0x146daff4 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_150]
        else:
            if mem[ceil32(return_data.size) + 352] > 5:
                revert with 0, 33
            if arg2 > 1:
                revert with 0, 33
            require ext_code.size(stor1)
            if mem[ceil32(return_data.size) + 352] != 4:
                if arg2:
                    staticcall stor1.0xae55ae5 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_157]
                else:
                    staticcall stor1.0x6f8f1ceb with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _158 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_158]
            else:
                if arg2:
                    staticcall stor1.0x1ec4a4a8 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_159]
                else:
                    staticcall stor1.0x19a41ea9 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_160]
    return memory
      from mem[64]
       len 32
}

function sub_164af651(?) payable {
    mem[0] = msg.sender
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'Not allowed'
    if stor2 == -1:
        revert with 0, 17
    stor2++
    require ext_code.size(stor1)
    staticcall stor1.0x56189236 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 5:
        mem[ceil32(return_data.size) + 96] = 0xcc72ba0f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = 1
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0xcc72ba0f with:
                gas gas_remaining wei
               args 1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _11 = mem[ceil32(return_data.size) + 96 len 4], 0
        require mem[ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 127 < ceil32(return_data.size) + return_data.size + 96
        _14 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], 0 + 96]
        require return_data.size >= _11 + (32 * _14) + 32
        s = ceil32(return_data.size) + _11 + 128
        t = (2 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _14:
            _73 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _11 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _77 = mem[ceil32(return_data.size) + _11 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _11 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _85 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1
            mem[_85] = _77
            require _11 + _73 + _77 + 64 <= return_data.size
            u = 0
            while u < _77:
                mem[u + _85 + 32] = mem[u + ceil32(return_data.size) + _11 + _73 + 160]
                u = u + 32
                continue 
            if ceil32(_77) > _77:
                mem[_77 + _85 + 32] = 0
            mem[t] = _85
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _75 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 128
        _79 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _79) + 192
        u = mem[64] + 192
        while idx < _79:
            mem[u] = t + -_75 - 192
            _126 = mem[s]
            _129 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _129:
                mem[v + t + 32] = mem[v + _126 + 32]
                v = v + 32
                continue 
            if ceil32(_129) > _129:
                mem[_129 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_129) + t + 32
            u = u + 32
            continue 
        mem[_75 + 128] = stor2
        _133 = mem[64]
        mem[mem[64]] = t + -mem[64] - 32
        mem[64] = t
        if sha3(mem[_133 + 32 len mem[_133]]) % 100 < 60:
            return 0
        if sha3(mem[_133 + 32 len mem[_133]]) % 100 < 80:
            return 1
        if sha3(mem[_133 + 32 len mem[_133]]) % 100 < 90:
            return 2
        if sha3(mem[_133 + 32 len mem[_133]]) % 100 < 96:
            return 3
        if sha3(mem[_133 + 32 len mem[_133]]) % 100 < 99:
            return 4
        if sha3(mem[_133 + 32 len mem[_133]]) % 100 >= 100:
            return 0
    else:
        if ext_call.return_data[0] < 5:
            revert with 0, 17
        if 1 > !(ext_call.return_data[0] - 5):
            revert with 0, 17
        mem[ceil32(return_data.size) + 96] = 0xcc72ba0f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = ext_call.return_data[0] - 4
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0xcc72ba0f with:
                gas gas_remaining wei
               args ext_call.return_data[0] - 4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _17 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
        _18 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 96]
        require return_data.size >= _17 + (32 * _18) + 32
        s = ceil32(return_data.size) + _17 + 128
        t = (2 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _18:
            _72 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _17 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _76 = mem[ceil32(return_data.size) + _17 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _17 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _83 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1
            mem[_83] = _76
            require _17 + _72 + _76 + 64 <= return_data.size
            u = 0
            while u < _76:
                mem[u + _83 + 32] = mem[u + ceil32(return_data.size) + _17 + _72 + 160]
                u = u + 32
                continue 
            if ceil32(_76) > _76:
                mem[_76 + _83 + 32] = 0
            mem[t] = _83
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _74 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 128
        _78 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 160] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _78) + 192
        u = mem[64] + 192
        while idx < _78:
            mem[u] = t + -_74 - 192
            _124 = mem[s]
            _128 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _128:
                mem[v + t + 32] = mem[v + _124 + 32]
                v = v + 32
                continue 
            if ceil32(_128) > _128:
                mem[_128 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_128) + t + 32
            u = u + 32
            continue 
        mem[_74 + 128] = stor2
        _130 = mem[64]
        mem[mem[64]] = t + -mem[64] - 32
        mem[64] = t
        if sha3(mem[_130 + 32 len mem[_130]]) % 100 < 60:
            return 0
        if sha3(mem[_130 + 32 len mem[_130]]) % 100 < 80:
            return 1
        if sha3(mem[_130 + 32 len mem[_130]]) % 100 < 90:
            return 2
        if sha3(mem[_130 + 32 len mem[_130]]) % 100 < 96:
            return 3
        if sha3(mem[_130 + 32 len mem[_130]]) % 100 < 99:
            return 4
        if sha3(mem[_130 + 32 len mem[_130]]) % 100 >= 100:
            return 0
    return 5
}

function sub_e574973b(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 36).length == ('cd', 4).length
    require ('cd', 68).length == ('cd', 36).length
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] < 6
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] < 6
        if cd[((32 * idx) + cd[4] + 36)] > 5:
            revert with 0, 33
        if cd[((32 * idx) + cd[4] + 36)] == 5:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            if cd[((32 * idx) + cd[4] + 36)] > 5:
                revert with 0, 33
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 4)
            if bool(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0):
                if bool(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0) == uint255(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = 0
                    s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                    while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + ((uint255(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                    t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                    while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + ((uint255(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5) + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0) == stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = 0
                    s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                    while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + (stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                    t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                    while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + (stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
        else:
            if cd[((32 * idx) + cd[4] + 36)] > 5:
                revert with 0, 33
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
            require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
            if cd[((32 * idx) + cd[4] + 36)] > 5:
                revert with 0, 33
            if cd[((32 * idx) + cd[4] + 36)] == 4:
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 4)
                if bool(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0):
                    if bool(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0) == uint255(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))
                    if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                        stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = 0
                        s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                        while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + ((uint255(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                        s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                        t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                        while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                            stor[s] = cd[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + ((uint255(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5) + 31 / 32) > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if bool(stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0) == stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = 0
                    s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                    while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + (stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor4[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                    stor[s] = cd[t]
                    s = s + 1
                    t = t + 32
                    continue 
                t = s
                while sha3(sha3(0, sha3(cd[((32 * t) + cd[4] + 36)], 4))) + (stor4[cd[((32 * t) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) > t:
                    stor[t] = 0
                    t = t + 1
                    continue 
                if sha3(sha3(0, sha3(cd[((32 * t) + cd[4] + 36)], 4))) + (stor4[cd[((32 * t) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) == -1:
                    revert with 0, 17
                t = sha3(sha3(0, sha3(cd[((32 * t) + cd[4] + 36)], 4))) + (stor4[cd[((32 * t) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) + 1
                continue 
            if cd[((32 * idx) + cd[36] + 36)] > 5:
                revert with 0, 33
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 4)
            if bool(stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0):
                if bool(stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0) == uint255(stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 4))
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                    s = sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                    while sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + ((uint255(stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                    t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                    while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + ((uint255(stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0) * 0.5) + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0) == stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 4))
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                    s = sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                    while sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + (stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 4)))
                    t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                    while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 4))) + (stor4[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_90b82ddb(?) payable {
    require calldata.size - 4 >= 160
    require 67 < calldata.size
    require 164 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    staticcall stor1.0x56189236 with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 5:
        mem[ceil32(return_data.size) + 224] = 0xcc72ba0f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = 1
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0xcc72ba0f with:
                gas gas_remaining wei
               args 1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _9 = mem[ceil32(return_data.size) + 224 len 4], 0
        require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
        _12 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
        mem[(2 * ceil32(return_data.size)) + 224] = _12
        require return_data.size >= _9 + (32 * _12) + 32
        s = ceil32(return_data.size) + _9 + 256
        t = (2 * ceil32(return_data.size)) + 256
        idx = 0
        while idx < _12:
            _45 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _9 + mem[s] + 287 < ceil32(return_data.size) + return_data.size + 224
            _47 = mem[ceil32(return_data.size) + _9 + mem[s] + 256]
            if mem[ceil32(return_data.size) + _9 + mem[s] + 256] > test266151307():
                revert with 0, 65
            _51 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[s] + 256])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[s] + 256])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _9 + mem[s] + 256])) + 1
            mem[_51] = _47
            require _9 + _45 + _47 + 64 <= return_data.size
            u = 0
            while u < _47:
                mem[u + _51 + 32] = mem[u + ceil32(return_data.size) + _9 + _45 + 288]
                u = u + 32
                continue 
            if ceil32(_47) > _47:
                mem[_47 + _51 + 32] = 0
            mem[t] = _51
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 4:
            _73 = mem[(32 * uint8(idx)) + 96]
            _79 = mem[64]
            mem[mem[64] + 32] = block.difficulty
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = 96
            _83 = mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
            s = 0
            t = (2 * ceil32(return_data.size)) + 256
            u = mem[64] + (32 * _83) + 160
            v = mem[64] + 160
            while s < _83:
                mem[v] = u + -_79 - 160
                _99 = mem[t]
                _103 = mem[mem[t]]
                mem[u] = mem[mem[t]]
                idx = 0
                while idx < _103:
                    mem[idx + u + 32] = mem[idx + _99 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_103) > _103:
                    mem[_103 + u + 32] = 0
                s = s + 1
                t = t + 32
                u = ceil32(_103) + u + 32
                v = v + 32
                continue 
            _109 = mem[64]
            mem[mem[64]] = u + -mem[64] - 32
            mem[64] = u
            if sha3(mem[_109 + 32 len mem[_109]]) % 5 > -2:
                revert with 0, 17
            if uint8((sha3(mem[_109 + 32 len mem[_109]]) % 5) + 1) and uint8(_73) > 255 / uint8((sha3(mem[_109 + 32 len mem[_109]]) % 5) + 1):
                revert with 0, 17
            if uint8(idx) >= 4:
                revert with 0, 50
            mem[(32 * uint8(idx)) + 96] = uint8(uint8(_73) * uint8((sha3(mem[_109 + 32 len mem[_109]]) % 5) + 1))
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        idx = 0
        while uint8(idx) < 3:
            if 1 > -uint8(idx) + 255:
                revert with 0, 17
            s = uint8(idx) + 1
            while uint8(s) < 4:
                if uint8(idx) >= 4:
                    revert with 0, 50
                if mem[(32 * uint8(idx)) + 127 len 1] > mem[(32 * uint8(s)) + 127 len 1]:
                    if uint8(idx) >= 4:
                        revert with 0, 50
                    _579 = mem[(32 * uint8(idx)) + 96]
                    if uint8(s) >= 4:
                        revert with 0, 50
                    if uint8(idx) >= 4:
                        revert with 0, 50
                    mem[(32 * uint8(idx)) + 96] = mem[(32 * uint8(s)) + 127 len 1]
                    if uint8(s) >= 4:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 96] = uint8(_579)
                if uint8(s) == 255:
                    revert with 0, 17
                s = uint8(s) + 1
                continue 
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        _121 = mem[128]
        _122 = mem[96]
        if mem[127 len 1] > -mem[159 len 1] + 255:
            revert with 0, 17
        if 30 < uint8(mem[159 len 1] + mem[127 len 1]) / 2:
            revert with 0, 17
        if 1 > !(-(uint8(mem[159 len 1] + mem[127 len 1]) / 2) + 30):
            revert with 0, 17
        _133 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 96
        _135 = mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 256
        t = mem[64] + (32 * _135) + 160
        u = mem[64] + 160
        while idx < _135:
            mem[u] = t + -_133 - 160
            _563 = mem[s]
            _566 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _566:
                mem[v + t + 32] = mem[v + _563 + 32]
                v = v + 32
                continue 
            if ceil32(_566) > _566:
                mem[_566 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_566) + t + 32
            u = u + 32
            continue 
        _572 = mem[64]
        mem[mem[64]] = t + -mem[64] - 32
        mem[64] = t
        _574 = sha3(mem[_572 + 32 len mem[_572]])
        if not -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
            revert with 0, 18
        mem[t] = 0x36dac2cc00000000000000000000000000000000000000000000000000000000
        mem[t + 4] = cd[4]
        require ext_code.size(stor1)
        staticcall stor1.0x36dac2cc with:
                gas gas_remaining wei
               args cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[t len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = t + ceil32(return_data.size)
        require return_data.size >= 32
        _589 = mem[t len 4], Mask(224, 32, cd[4]) >> 32
        require mem[t len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require return_data.size - mem[t len 4], Mask(224, 32, cd[4]) >> 32 >= 288
        if not bool(t + ceil32(return_data.size) + 288 <= test266151307()):
            revert with 0, 65
        mem[64] = t + ceil32(return_data.size) + 288
        _593 = mem[t + _589]
        require mem[t + _589] <= test266151307()
        require t + _589 + mem[t + _589] + 31 < t + return_data.size
        _595 = mem[t + _589 + mem[t + _589]]
        if mem[t + _589 + mem[t + _589]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[t + _589 + mem[t + _589]])) + 289 < 288 or t + ceil32(return_data.size) + ceil32(ceil32(mem[t + _589 + mem[t + _589]])) + 289 > test266151307():
            revert with 0, 65
        mem[64] = t + ceil32(return_data.size) + ceil32(ceil32(mem[t + _589 + mem[t + _589]])) + 289
        mem[t + ceil32(return_data.size) + 288] = _595
        require _589 + _593 + _595 + 32 <= return_data.size
        mem[t + ceil32(return_data.size) + 320 len ceil32(_595)] = mem[t + _589 + _593 + 32 len ceil32(_595)]
        if ceil32(_595) <= _595:
            mem[t + ceil32(return_data.size)] = t + ceil32(return_data.size) + 288
            mem[t + ceil32(return_data.size) + 32] = mem[t + _589 + 32]
            mem[t + ceil32(return_data.size) + 64] = mem[t + _589 + 64]
            mem[t + ceil32(return_data.size) + 96] = mem[t + _589 + 96]
            mem[t + ceil32(return_data.size) + 128] = mem[t + _589 + 128]
            mem[t + ceil32(return_data.size) + 160] = mem[t + _589 + 160]
            mem[t + ceil32(return_data.size) + 192] = mem[t + _589 + 192]
            require mem[t + _589 + 224] < 6
            mem[t + ceil32(return_data.size) + 224] = mem[t + _589 + 224]
            require mem[t + _589 + 256] < 6
            mem[t + ceil32(return_data.size) + 256] = mem[t + _589 + 256]
            if mem[t + ceil32(return_data.size) + 64] >= 10 * 10^6:
                _1038 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = 96
                _1049 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = mem[64] + (32 * _1049) + 160
                u = mem[64] + 160
                while idx < _1049:
                    mem[u] = t + -_1038 - 160
                    _1410 = mem[s]
                    _1430 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1430:
                        mem[v + t + 32] = mem[v + _1410 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1430) > _1430:
                        mem[_1430 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1430) + t + 32
                    u = u + 32
                    continue 
                _1478 = mem[64]
                mem[mem[64]] = t + -mem[64] - 32
                mem[64] = t
                _1480 = sha3(mem[_1478 + 32 len mem[_1478]])
                if sha3(mem[_1478 + 32 len mem[_1478]]) % 1 > -6:
                    revert with 0, 17
                if 70 > !((sha3(mem[_1478 + 32 len mem[_1478]]) % 1) + 5):
                    revert with 0, 17
                if 145 < _574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                    revert with 0, 17
                if -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1478 + 32 len mem[_1478]]) % 1) + 75:
                    revert with 0, 17
                if 1 > !(-(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1478 + 32 len mem[_1478]]) % 1) + 70):
                    revert with 0, 17
                mem[t + 32] = block.difficulty
                mem[t + 64] = block.timestamp
                mem[t + 96] = 96
                _1550 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                u = t + (32 * _1550) + 160
                v = t + 160
                while idx < _1550:
                    mem[v] = u + -t - 160
                    _1744 = mem[s]
                    _1770 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _1770:
                        mem[t + u + 32] = mem[t + _1744 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1770) > _1770:
                        mem[_1770 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_1770) + u + 32
                    v = v + 32
                    continue 
                _1818 = mem[64]
                mem[mem[64]] = u + -mem[64] - 32
                mem[64] = u
                if not -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1480 % 1) + 71:
                    revert with 0, 18
                if sha3(mem[_1818 + 32 len mem[_1818]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1480 % 1) + 71 > !((_1480 % 1) + 75):
                    revert with 0, 17
                mem[u] = (sha3(mem[_1818 + 32 len mem[_1818]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1480 % 1) + 71) + (_1480 % 1) + 75
            else:
                if mem[t + ceil32(return_data.size) + 64] >= 5 * 10^6:
                    _1042 = mem[64]
                    mem[mem[64] + 32] = block.difficulty
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 96
                    _1060 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = mem[64] + (32 * _1060) + 160
                    u = mem[64] + 160
                    while idx < _1060:
                        mem[u] = t + -_1042 - 160
                        _1409 = mem[s]
                        _1429 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1429:
                            mem[v + t + 32] = mem[v + _1409 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1429) > _1429:
                            mem[_1429 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1429) + t + 32
                        u = u + 32
                        continue 
                    _1475 = mem[64]
                    mem[mem[64]] = t + -mem[64] - 32
                    mem[64] = t
                    _1477 = sha3(mem[_1475 + 32 len mem[_1475]])
                    if bool(sha3(mem[_1475 + 32 len mem[_1475]])) > -5:
                        revert with 0, 17
                    if 70 > !(bool(sha3(mem[_1475 + 32 len mem[_1475]])) + 4):
                        revert with 0, 17
                    if 145 < _574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                        revert with 0, 17
                    if -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < bool(sha3(mem[_1475 + 32 len mem[_1475]])) + 74:
                        revert with 0, 17
                    if 1 > !(-(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(sha3(mem[_1475 + 32 len mem[_1475]])) + 71):
                        revert with 0, 17
                    mem[t + 32] = block.difficulty
                    mem[t + 64] = block.timestamp
                    mem[t + 96] = 96
                    _1549 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    u = t + (32 * _1549) + 160
                    v = t + 160
                    while idx < _1549:
                        mem[v] = u + -t - 160
                        _1742 = mem[s]
                        _1769 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        t = 0
                        while t < _1769:
                            mem[t + u + 32] = mem[t + _1742 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1769) > _1769:
                            mem[_1769 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        u = ceil32(_1769) + u + 32
                        v = v + 32
                        continue 
                    _1815 = mem[64]
                    mem[mem[64]] = u + -mem[64] - 32
                    mem[64] = u
                    if not -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1477) + 72:
                        revert with 0, 18
                    if sha3(mem[_1815 + 32 len mem[_1815]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1477) + 72 > !(bool(_1477) + 74):
                        revert with 0, 17
                    mem[u] = (sha3(mem[_1815 + 32 len mem[_1815]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1477) + 72) + bool(_1477) + 74
                else:
                    if mem[t + ceil32(return_data.size) + 64] >= 10^6:
                        _1048 = mem[64]
                        mem[mem[64] + 32] = block.difficulty
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 96
                        _1068 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = mem[64] + (32 * _1068) + 160
                        u = mem[64] + 160
                        while idx < _1068:
                            mem[u] = t + -_1048 - 160
                            _1408 = mem[s]
                            _1428 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _1428:
                                mem[v + t + 32] = mem[v + _1408 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_1428) > _1428:
                                mem[_1428 + t + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_1428) + t + 32
                            u = u + 32
                            continue 
                        _1472 = mem[64]
                        mem[mem[64]] = t + -mem[64] - 32
                        mem[64] = t
                        _1474 = sha3(mem[_1472 + 32 len mem[_1472]])
                        if sha3(mem[_1472 + 32 len mem[_1472]]) % 3 > -4:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_1472 + 32 len mem[_1472]]) % 3) + 3):
                            revert with 0, 17
                        if 145 < _574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                            revert with 0, 17
                        if -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1472 + 32 len mem[_1472]]) % 3) + 73:
                            revert with 0, 17
                        if 1 > !(-(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1472 + 32 len mem[_1472]]) % 3) + 72):
                            revert with 0, 17
                        mem[t + 32] = block.difficulty
                        mem[t + 64] = block.timestamp
                        mem[t + 96] = 96
                        _1548 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        u = t + (32 * _1548) + 160
                        v = t + 160
                        while idx < _1548:
                            mem[v] = u + -t - 160
                            _1740 = mem[s]
                            _1768 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            t = 0
                            while t < _1768:
                                mem[t + u + 32] = mem[t + _1740 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1768) > _1768:
                                mem[_1768 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            u = ceil32(_1768) + u + 32
                            v = v + 32
                            continue 
                        _1812 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        if not -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1474 % 3) + 73:
                            revert with 0, 18
                        if sha3(mem[_1812 + 32 len mem[_1812]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1474 % 3) + 73 > !((_1474 % 3) + 73):
                            revert with 0, 17
                        mem[u] = (sha3(mem[_1812 + 32 len mem[_1812]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1474 % 3) + 73) + (_1474 % 3) + 73
                    else:
                        if mem[t + ceil32(return_data.size) + 64] < 500000:
                            _1058 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1080 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + (32 * _1080) + 160
                            u = mem[64] + 160
                            while idx < _1080:
                                mem[u] = t + -_1058 - 160
                                _1406 = mem[s]
                                _1426 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _1426:
                                    mem[v + t + 32] = mem[v + _1406 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1426) > _1426:
                                    mem[_1426 + t + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_1426) + t + 32
                                u = u + 32
                                continue 
                            _1466 = mem[64]
                            mem[mem[64]] = t + -mem[64] - 32
                            mem[64] = t
                            _1468 = sha3(mem[_1466 + 32 len mem[_1466]])
                            if sha3(mem[_1466 + 32 len mem[_1466]]) % 5 > -2:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1466 + 32 len mem[_1466]]) % 5) + 1):
                                revert with 0, 17
                            if 145 < _574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                                revert with 0, 17
                            if -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1466 + 32 len mem[_1466]]) % 5) + 71:
                                revert with 0, 17
                            if 1 > !(-(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1466 + 32 len mem[_1466]]) % 5) + 74):
                                revert with 0, 17
                            mem[t + 32] = block.difficulty
                            mem[t + 64] = block.timestamp
                            mem[t + 96] = 96
                            _1546 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            u = t + (32 * _1546) + 160
                            v = t + 160
                            while idx < _1546:
                                mem[v] = u + -t - 160
                                _1736 = mem[s]
                                _1766 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                t = 0
                                while t < _1766:
                                    mem[t + u + 32] = mem[t + _1736 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_1766) > _1766:
                                    mem[_1766 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                u = ceil32(_1766) + u + 32
                                v = v + 32
                                continue 
                            _1806 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            if not -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1468 % 5) + 75:
                                revert with 0, 18
                            if sha3(mem[_1806 + 32 len mem[_1806]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1468 % 5) + 75 > !((_1468 % 5) + 71):
                                revert with 0, 17
                            mem[u] = (sha3(mem[_1806 + 32 len mem[_1806]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1468 % 5) + 75) + (_1468 % 5) + 71
                        else:
                            _1059 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1081 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + (32 * _1081) + 160
                            u = mem[64] + 160
                            while idx < _1081:
                                mem[u] = t + -_1059 - 160
                                _1407 = mem[s]
                                _1427 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _1427:
                                    mem[v + t + 32] = mem[v + _1407 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1427) > _1427:
                                    mem[_1427 + t + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_1427) + t + 32
                                u = u + 32
                                continue 
                            _1469 = mem[64]
                            mem[mem[64]] = t + -mem[64] - 32
                            mem[64] = t
                            _1471 = sha3(mem[_1469 + 32 len mem[_1469]])
                            if sha3(mem[_1469 + 32 len mem[_1469]]) % 4 > -3:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1469 + 32 len mem[_1469]]) % 4) + 2):
                                revert with 0, 17
                            if 145 < _574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                                revert with 0, 17
                            if -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1469 + 32 len mem[_1469]]) % 4) + 72:
                                revert with 0, 17
                            if 1 > !(-(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1469 + 32 len mem[_1469]]) % 4) + 73):
                                revert with 0, 17
                            mem[t + 32] = block.difficulty
                            mem[t + 64] = block.timestamp
                            mem[t + 96] = 96
                            _1547 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            u = t + (32 * _1547) + 160
                            v = t + 160
                            while idx < _1547:
                                mem[v] = u + -t - 160
                                _1738 = mem[s]
                                _1767 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                t = 0
                                while t < _1767:
                                    mem[t + u + 32] = mem[t + _1738 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_1767) > _1767:
                                    mem[_1767 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                u = ceil32(_1767) + u + 32
                                v = v + 32
                                continue 
                            _1809 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            if not -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1471 % 4) + 74:
                                revert with 0, 18
                            if sha3(mem[_1809 + 32 len mem[_1809]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1471 % 4) + 74 > !((_1471 % 4) + 72):
                                revert with 0, 17
                            mem[u] = (sha3(mem[_1809 + 32 len mem[_1809]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1471 % 4) + 74) + (_1471 % 4) + 72
        else:
            mem[_595 + t + ceil32(return_data.size) + 320] = 0
            mem[t + ceil32(return_data.size)] = t + ceil32(return_data.size) + 288
            mem[t + ceil32(return_data.size) + 32] = mem[t + _589 + 32]
            mem[t + ceil32(return_data.size) + 64] = mem[t + _589 + 64]
            mem[t + ceil32(return_data.size) + 96] = mem[t + _589 + 96]
            mem[t + ceil32(return_data.size) + 128] = mem[t + _589 + 128]
            mem[t + ceil32(return_data.size) + 160] = mem[t + _589 + 160]
            mem[t + ceil32(return_data.size) + 192] = mem[t + _589 + 192]
            require mem[t + _589 + 224] < 6
            mem[t + ceil32(return_data.size) + 224] = mem[t + _589 + 224]
            require mem[t + _589 + 256] < 6
            mem[t + ceil32(return_data.size) + 256] = mem[t + _589 + 256]
            if mem[t + ceil32(return_data.size) + 64] >= 10 * 10^6:
                _1039 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = 96
                _1051 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = mem[64] + (32 * _1051) + 160
                u = mem[64] + 160
                while idx < _1051:
                    mem[u] = t + -_1039 - 160
                    _1415 = mem[s]
                    _1435 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1435:
                        mem[v + t + 32] = mem[v + _1415 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1435) > _1435:
                        mem[_1435 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1435) + t + 32
                    u = u + 32
                    continue 
                _1493 = mem[64]
                mem[mem[64]] = t + -mem[64] - 32
                mem[64] = t
                _1495 = sha3(mem[_1493 + 32 len mem[_1493]])
                if sha3(mem[_1493 + 32 len mem[_1493]]) % 1 > -6:
                    revert with 0, 17
                if 70 > !((sha3(mem[_1493 + 32 len mem[_1493]]) % 1) + 5):
                    revert with 0, 17
                if 145 < _574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                    revert with 0, 17
                if -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1493 + 32 len mem[_1493]]) % 1) + 75:
                    revert with 0, 17
                if 1 > !(-(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1493 + 32 len mem[_1493]]) % 1) + 70):
                    revert with 0, 17
                mem[t + 32] = block.difficulty
                mem[t + 64] = block.timestamp
                mem[t + 96] = 96
                _1555 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                u = t + (32 * _1555) + 160
                v = t + 160
                while idx < _1555:
                    mem[v] = u + -t - 160
                    _1754 = mem[s]
                    _1775 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _1775:
                        mem[t + u + 32] = mem[t + _1754 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1775) > _1775:
                        mem[_1775 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_1775) + u + 32
                    v = v + 32
                    continue 
                _1833 = mem[64]
                mem[mem[64]] = u + -mem[64] - 32
                mem[64] = u
                if not -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1495 % 1) + 71:
                    revert with 0, 18
                if sha3(mem[_1833 + 32 len mem[_1833]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1495 % 1) + 71 > !((_1495 % 1) + 75):
                    revert with 0, 17
                mem[u] = (sha3(mem[_1833 + 32 len mem[_1833]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1495 % 1) + 71) + (_1495 % 1) + 75
            else:
                if mem[t + ceil32(return_data.size) + 64] >= 5 * 10^6:
                    _1043 = mem[64]
                    mem[mem[64] + 32] = block.difficulty
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 96
                    _1063 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = mem[64] + (32 * _1063) + 160
                    u = mem[64] + 160
                    while idx < _1063:
                        mem[u] = t + -_1043 - 160
                        _1414 = mem[s]
                        _1434 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1434:
                            mem[v + t + 32] = mem[v + _1414 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1434) > _1434:
                            mem[_1434 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1434) + t + 32
                        u = u + 32
                        continue 
                    _1490 = mem[64]
                    mem[mem[64]] = t + -mem[64] - 32
                    mem[64] = t
                    _1492 = sha3(mem[_1490 + 32 len mem[_1490]])
                    if bool(sha3(mem[_1490 + 32 len mem[_1490]])) > -5:
                        revert with 0, 17
                    if 70 > !(bool(sha3(mem[_1490 + 32 len mem[_1490]])) + 4):
                        revert with 0, 17
                    if 145 < _574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                        revert with 0, 17
                    if -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < bool(sha3(mem[_1490 + 32 len mem[_1490]])) + 74:
                        revert with 0, 17
                    if 1 > !(-(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(sha3(mem[_1490 + 32 len mem[_1490]])) + 71):
                        revert with 0, 17
                    mem[t + 32] = block.difficulty
                    mem[t + 64] = block.timestamp
                    mem[t + 96] = 96
                    _1554 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    u = t + (32 * _1554) + 160
                    v = t + 160
                    while idx < _1554:
                        mem[v] = u + -t - 160
                        _1752 = mem[s]
                        _1774 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        t = 0
                        while t < _1774:
                            mem[t + u + 32] = mem[t + _1752 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1774) > _1774:
                            mem[_1774 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        u = ceil32(_1774) + u + 32
                        v = v + 32
                        continue 
                    _1830 = mem[64]
                    mem[mem[64]] = u + -mem[64] - 32
                    mem[64] = u
                    if not -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1492) + 72:
                        revert with 0, 18
                    if sha3(mem[_1830 + 32 len mem[_1830]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1492) + 72 > !(bool(_1492) + 74):
                        revert with 0, 17
                    mem[u] = (sha3(mem[_1830 + 32 len mem[_1830]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1492) + 72) + bool(_1492) + 74
                else:
                    if mem[t + ceil32(return_data.size) + 64] >= 10^6:
                        _1050 = mem[64]
                        mem[mem[64] + 32] = block.difficulty
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 96
                        _1070 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = mem[64] + (32 * _1070) + 160
                        u = mem[64] + 160
                        while idx < _1070:
                            mem[u] = t + -_1050 - 160
                            _1413 = mem[s]
                            _1433 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _1433:
                                mem[v + t + 32] = mem[v + _1413 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_1433) > _1433:
                                mem[_1433 + t + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_1433) + t + 32
                            u = u + 32
                            continue 
                        _1487 = mem[64]
                        mem[mem[64]] = t + -mem[64] - 32
                        mem[64] = t
                        _1489 = sha3(mem[_1487 + 32 len mem[_1487]])
                        if sha3(mem[_1487 + 32 len mem[_1487]]) % 3 > -4:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_1487 + 32 len mem[_1487]]) % 3) + 3):
                            revert with 0, 17
                        if 145 < _574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                            revert with 0, 17
                        if -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1487 + 32 len mem[_1487]]) % 3) + 73:
                            revert with 0, 17
                        if 1 > !(-(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1487 + 32 len mem[_1487]]) % 3) + 72):
                            revert with 0, 17
                        mem[t + 32] = block.difficulty
                        mem[t + 64] = block.timestamp
                        mem[t + 96] = 96
                        _1553 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        u = t + (32 * _1553) + 160
                        v = t + 160
                        while idx < _1553:
                            mem[v] = u + -t - 160
                            _1750 = mem[s]
                            _1773 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            t = 0
                            while t < _1773:
                                mem[t + u + 32] = mem[t + _1750 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1773) > _1773:
                                mem[_1773 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            u = ceil32(_1773) + u + 32
                            v = v + 32
                            continue 
                        _1827 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        if not -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1489 % 3) + 73:
                            revert with 0, 18
                        if sha3(mem[_1827 + 32 len mem[_1827]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1489 % 3) + 73 > !((_1489 % 3) + 73):
                            revert with 0, 17
                        mem[u] = (sha3(mem[_1827 + 32 len mem[_1827]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1489 % 3) + 73) + (_1489 % 3) + 73
                    else:
                        if mem[t + ceil32(return_data.size) + 64] < 500000:
                            _1061 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1084 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + (32 * _1084) + 160
                            u = mem[64] + 160
                            while idx < _1084:
                                mem[u] = t + -_1061 - 160
                                _1411 = mem[s]
                                _1431 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _1431:
                                    mem[v + t + 32] = mem[v + _1411 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1431) > _1431:
                                    mem[_1431 + t + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_1431) + t + 32
                                u = u + 32
                                continue 
                            _1481 = mem[64]
                            mem[mem[64]] = t + -mem[64] - 32
                            mem[64] = t
                            _1483 = sha3(mem[_1481 + 32 len mem[_1481]])
                            if sha3(mem[_1481 + 32 len mem[_1481]]) % 5 > -2:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1481 + 32 len mem[_1481]]) % 5) + 1):
                                revert with 0, 17
                            if 145 < _574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                                revert with 0, 17
                            if -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1481 + 32 len mem[_1481]]) % 5) + 71:
                                revert with 0, 17
                            if 1 > !(-(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1481 + 32 len mem[_1481]]) % 5) + 74):
                                revert with 0, 17
                            mem[t + 32] = block.difficulty
                            mem[t + 64] = block.timestamp
                            mem[t + 96] = 96
                            _1551 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            u = t + (32 * _1551) + 160
                            v = t + 160
                            while idx < _1551:
                                mem[v] = u + -t - 160
                                _1746 = mem[s]
                                _1771 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                t = 0
                                while t < _1771:
                                    mem[t + u + 32] = mem[t + _1746 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_1771) > _1771:
                                    mem[_1771 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                u = ceil32(_1771) + u + 32
                                v = v + 32
                                continue 
                            _1821 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            if not -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1483 % 5) + 75:
                                revert with 0, 18
                            if sha3(mem[_1821 + 32 len mem[_1821]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1483 % 5) + 75 > !((_1483 % 5) + 71):
                                revert with 0, 17
                            mem[u] = (sha3(mem[_1821 + 32 len mem[_1821]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1483 % 5) + 75) + (_1483 % 5) + 71
                        else:
                            _1062 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1085 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + (32 * _1085) + 160
                            u = mem[64] + 160
                            while idx < _1085:
                                mem[u] = t + -_1062 - 160
                                _1412 = mem[s]
                                _1432 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _1432:
                                    mem[v + t + 32] = mem[v + _1412 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1432) > _1432:
                                    mem[_1432 + t + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_1432) + t + 32
                                u = u + 32
                                continue 
                            _1484 = mem[64]
                            mem[mem[64]] = t + -mem[64] - 32
                            mem[64] = t
                            _1486 = sha3(mem[_1484 + 32 len mem[_1484]])
                            if sha3(mem[_1484 + 32 len mem[_1484]]) % 4 > -3:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1484 + 32 len mem[_1484]]) % 4) + 2):
                                revert with 0, 17
                            if 145 < _574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                                revert with 0, 17
                            if -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1484 + 32 len mem[_1484]]) % 4) + 72:
                                revert with 0, 17
                            if 1 > !(-(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1484 + 32 len mem[_1484]]) % 4) + 73):
                                revert with 0, 17
                            mem[t + 32] = block.difficulty
                            mem[t + 64] = block.timestamp
                            mem[t + 96] = 96
                            _1552 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            u = t + (32 * _1552) + 160
                            v = t + 160
                            while idx < _1552:
                                mem[v] = u + -t - 160
                                _1748 = mem[s]
                                _1772 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                t = 0
                                while t < _1772:
                                    mem[t + u + 32] = mem[t + _1748 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_1772) > _1772:
                                    mem[_1772 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                u = ceil32(_1772) + u + 32
                                v = v + 32
                                continue 
                            _1824 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            if not -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1486 % 4) + 74:
                                revert with 0, 18
                            if sha3(mem[_1824 + 32 len mem[_1824]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1486 % 4) + 74 > !((_1486 % 4) + 72):
                                revert with 0, 17
                            mem[u] = (sha3(mem[_1824 + 32 len mem[_1824]]) % -(_574 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1486 % 4) + 74) + (_1486 % 4) + 72
    else:
        if ext_call.return_data[0] < 5:
            revert with 0, 17
        if 1 > !(ext_call.return_data[0] - 5):
            revert with 0, 17
        mem[ceil32(return_data.size) + 224] = 0xcc72ba0f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = ext_call.return_data[0] - 4
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.0xcc72ba0f with:
                gas gas_remaining wei
               args ext_call.return_data[0] - 4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _15 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32
        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
        _16 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 224]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 224] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 224]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 224]) + 225 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 224]) + 225
        mem[(2 * ceil32(return_data.size)) + 224] = _16
        require return_data.size >= _15 + (32 * _16) + 32
        s = ceil32(return_data.size) + _15 + 256
        t = (2 * ceil32(return_data.size)) + 256
        idx = 0
        while idx < _16:
            _44 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _15 + mem[s] + 287 < ceil32(return_data.size) + return_data.size + 224
            _46 = mem[ceil32(return_data.size) + _15 + mem[s] + 256]
            if mem[ceil32(return_data.size) + _15 + mem[s] + 256] > test266151307():
                revert with 0, 65
            _50 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _15 + mem[s] + 256])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _15 + mem[s] + 256])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _15 + mem[s] + 256])) + 1
            mem[_50] = _46
            require _15 + _44 + _46 + 64 <= return_data.size
            u = 0
            while u < _46:
                mem[u + _50 + 32] = mem[u + ceil32(return_data.size) + _15 + _44 + 288]
                u = u + 32
                continue 
            if ceil32(_46) > _46:
                mem[_46 + _50 + 32] = 0
            mem[t] = _50
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        idx = 0
        while uint8(idx) < 4:
            _72 = mem[(32 * uint8(idx)) + 96]
            _77 = mem[64]
            mem[mem[64] + 32] = block.difficulty
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = 96
            _81 = mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
            s = 0
            t = (2 * ceil32(return_data.size)) + 256
            u = mem[64] + (32 * _81) + 160
            v = mem[64] + 160
            while s < _81:
                mem[v] = u + -_77 - 160
                _98 = mem[t]
                _101 = mem[mem[t]]
                mem[u] = mem[mem[t]]
                idx = 0
                while idx < _101:
                    mem[idx + u + 32] = mem[idx + _98 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_101) > _101:
                    mem[_101 + u + 32] = 0
                s = s + 1
                t = t + 32
                u = ceil32(_101) + u + 32
                v = v + 32
                continue 
            _105 = mem[64]
            mem[mem[64]] = u + -mem[64] - 32
            mem[64] = u
            if sha3(mem[_105 + 32 len mem[_105]]) % 5 > -2:
                revert with 0, 17
            if uint8((sha3(mem[_105 + 32 len mem[_105]]) % 5) + 1) and uint8(_72) > 255 / uint8((sha3(mem[_105 + 32 len mem[_105]]) % 5) + 1):
                revert with 0, 17
            if uint8(idx) >= 4:
                revert with 0, 50
            mem[(32 * uint8(idx)) + 96] = uint8(uint8(_72) * uint8((sha3(mem[_105 + 32 len mem[_105]]) % 5) + 1))
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        idx = 0
        while uint8(idx) < 3:
            if 1 > -uint8(idx) + 255:
                revert with 0, 17
            s = uint8(idx) + 1
            while uint8(s) < 4:
                if uint8(idx) >= 4:
                    revert with 0, 50
                if mem[(32 * uint8(idx)) + 127 len 1] > mem[(32 * uint8(s)) + 127 len 1]:
                    if uint8(idx) >= 4:
                        revert with 0, 50
                    _577 = mem[(32 * uint8(idx)) + 96]
                    if uint8(s) >= 4:
                        revert with 0, 50
                    if uint8(idx) >= 4:
                        revert with 0, 50
                    mem[(32 * uint8(idx)) + 96] = mem[(32 * uint8(s)) + 127 len 1]
                    if uint8(s) >= 4:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 96] = uint8(_577)
                if uint8(s) == 255:
                    revert with 0, 17
                s = uint8(s) + 1
                continue 
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        _118 = mem[128]
        _119 = mem[96]
        if mem[127 len 1] > -mem[159 len 1] + 255:
            revert with 0, 17
        if 30 < uint8(mem[159 len 1] + mem[127 len 1]) / 2:
            revert with 0, 17
        if 1 > !(-(uint8(mem[159 len 1] + mem[127 len 1]) / 2) + 30):
            revert with 0, 17
        _132 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 96
        _134 = mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 256
        t = mem[64] + (32 * _134) + 160
        u = mem[64] + 160
        while idx < _134:
            mem[u] = t + -_132 - 160
            _562 = mem[s]
            _564 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _564:
                mem[v + t + 32] = mem[v + _562 + 32]
                v = v + 32
                continue 
            if ceil32(_564) > _564:
                mem[_564 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_564) + t + 32
            u = u + 32
            continue 
        _568 = mem[64]
        mem[mem[64]] = t + -mem[64] - 32
        mem[64] = t
        _570 = sha3(mem[_568 + 32 len mem[_568]])
        if not -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
            revert with 0, 18
        mem[t] = 0x36dac2cc00000000000000000000000000000000000000000000000000000000
        mem[t + 4] = cd[4]
        require ext_code.size(stor1)
        staticcall stor1.0x36dac2cc with:
                gas gas_remaining wei
               args cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[t len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = t + ceil32(return_data.size)
        require return_data.size >= 32
        _588 = mem[t len 4], Mask(224, 32, cd[4]) >> 32
        require mem[t len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require return_data.size - mem[t len 4], Mask(224, 32, cd[4]) >> 32 >= 288
        if not bool(t + ceil32(return_data.size) + 288 <= test266151307()):
            revert with 0, 65
        mem[64] = t + ceil32(return_data.size) + 288
        _592 = mem[t + _588]
        require mem[t + _588] <= test266151307()
        require t + _588 + mem[t + _588] + 31 < t + return_data.size
        _594 = mem[t + _588 + mem[t + _588]]
        if mem[t + _588 + mem[t + _588]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[t + _588 + mem[t + _588]])) + 289 < 288 or t + ceil32(return_data.size) + ceil32(ceil32(mem[t + _588 + mem[t + _588]])) + 289 > test266151307():
            revert with 0, 65
        mem[64] = t + ceil32(return_data.size) + ceil32(ceil32(mem[t + _588 + mem[t + _588]])) + 289
        mem[t + ceil32(return_data.size) + 288] = _594
        require _588 + _592 + _594 + 32 <= return_data.size
        mem[t + ceil32(return_data.size) + 320 len ceil32(_594)] = mem[t + _588 + _592 + 32 len ceil32(_594)]
        if ceil32(_594) <= _594:
            mem[t + ceil32(return_data.size)] = t + ceil32(return_data.size) + 288
            mem[t + ceil32(return_data.size) + 32] = mem[t + _588 + 32]
            mem[t + ceil32(return_data.size) + 64] = mem[t + _588 + 64]
            mem[t + ceil32(return_data.size) + 96] = mem[t + _588 + 96]
            mem[t + ceil32(return_data.size) + 128] = mem[t + _588 + 128]
            mem[t + ceil32(return_data.size) + 160] = mem[t + _588 + 160]
            mem[t + ceil32(return_data.size) + 192] = mem[t + _588 + 192]
            require mem[t + _588 + 224] < 6
            mem[t + ceil32(return_data.size) + 224] = mem[t + _588 + 224]
            require mem[t + _588 + 256] < 6
            mem[t + ceil32(return_data.size) + 256] = mem[t + _588 + 256]
            if mem[t + ceil32(return_data.size) + 64] >= 10 * 10^6:
                _1036 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = 96
                _1045 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = mem[64] + (32 * _1045) + 160
                u = mem[64] + 160
                while idx < _1045:
                    mem[u] = t + -_1036 - 160
                    _1400 = mem[s]
                    _1420 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1420:
                        mem[v + t + 32] = mem[v + _1400 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1420) > _1420:
                        mem[_1420 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1420) + t + 32
                    u = u + 32
                    continue 
                _1448 = mem[64]
                mem[mem[64]] = t + -mem[64] - 32
                mem[64] = t
                _1450 = sha3(mem[_1448 + 32 len mem[_1448]])
                if sha3(mem[_1448 + 32 len mem[_1448]]) % 1 > -6:
                    revert with 0, 17
                if 70 > !((sha3(mem[_1448 + 32 len mem[_1448]]) % 1) + 5):
                    revert with 0, 17
                if 145 < _570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                    revert with 0, 17
                if -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1448 + 32 len mem[_1448]]) % 1) + 75:
                    revert with 0, 17
                if 1 > !(-(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1448 + 32 len mem[_1448]]) % 1) + 70):
                    revert with 0, 17
                mem[t + 32] = block.difficulty
                mem[t + 64] = block.timestamp
                mem[t + 96] = 96
                _1540 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                u = t + (32 * _1540) + 160
                v = t + 160
                while idx < _1540:
                    mem[v] = u + -t - 160
                    _1724 = mem[s]
                    _1760 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _1760:
                        mem[t + u + 32] = mem[t + _1724 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1760) > _1760:
                        mem[_1760 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_1760) + u + 32
                    v = v + 32
                    continue 
                _1788 = mem[64]
                mem[mem[64]] = u + -mem[64] - 32
                mem[64] = u
                if not -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1450 % 1) + 71:
                    revert with 0, 18
                if sha3(mem[_1788 + 32 len mem[_1788]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1450 % 1) + 71 > !((_1450 % 1) + 75):
                    revert with 0, 17
                mem[u] = (sha3(mem[_1788 + 32 len mem[_1788]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1450 % 1) + 71) + (_1450 % 1) + 75
            else:
                if mem[t + ceil32(return_data.size) + 64] >= 5 * 10^6:
                    _1040 = mem[64]
                    mem[mem[64] + 32] = block.difficulty
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 96
                    _1054 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = mem[64] + (32 * _1054) + 160
                    u = mem[64] + 160
                    while idx < _1054:
                        mem[u] = t + -_1040 - 160
                        _1399 = mem[s]
                        _1419 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1419:
                            mem[v + t + 32] = mem[v + _1399 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1419) > _1419:
                            mem[_1419 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1419) + t + 32
                        u = u + 32
                        continue 
                    _1445 = mem[64]
                    mem[mem[64]] = t + -mem[64] - 32
                    mem[64] = t
                    _1447 = sha3(mem[_1445 + 32 len mem[_1445]])
                    if bool(sha3(mem[_1445 + 32 len mem[_1445]])) > -5:
                        revert with 0, 17
                    if 70 > !(bool(sha3(mem[_1445 + 32 len mem[_1445]])) + 4):
                        revert with 0, 17
                    if 145 < _570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                        revert with 0, 17
                    if -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < bool(sha3(mem[_1445 + 32 len mem[_1445]])) + 74:
                        revert with 0, 17
                    if 1 > !(-(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(sha3(mem[_1445 + 32 len mem[_1445]])) + 71):
                        revert with 0, 17
                    mem[t + 32] = block.difficulty
                    mem[t + 64] = block.timestamp
                    mem[t + 96] = 96
                    _1539 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    u = t + (32 * _1539) + 160
                    v = t + 160
                    while idx < _1539:
                        mem[v] = u + -t - 160
                        _1722 = mem[s]
                        _1759 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        t = 0
                        while t < _1759:
                            mem[t + u + 32] = mem[t + _1722 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1759) > _1759:
                            mem[_1759 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        u = ceil32(_1759) + u + 32
                        v = v + 32
                        continue 
                    _1785 = mem[64]
                    mem[mem[64]] = u + -mem[64] - 32
                    mem[64] = u
                    if not -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1447) + 72:
                        revert with 0, 18
                    if sha3(mem[_1785 + 32 len mem[_1785]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1447) + 72 > !(bool(_1447) + 74):
                        revert with 0, 17
                    mem[u] = (sha3(mem[_1785 + 32 len mem[_1785]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1447) + 72) + bool(_1447) + 74
                else:
                    if mem[t + ceil32(return_data.size) + 64] >= 10^6:
                        _1044 = mem[64]
                        mem[mem[64] + 32] = block.difficulty
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 96
                        _1064 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = mem[64] + (32 * _1064) + 160
                        u = mem[64] + 160
                        while idx < _1064:
                            mem[u] = t + -_1044 - 160
                            _1398 = mem[s]
                            _1418 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _1418:
                                mem[v + t + 32] = mem[v + _1398 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_1418) > _1418:
                                mem[_1418 + t + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_1418) + t + 32
                            u = u + 32
                            continue 
                        _1442 = mem[64]
                        mem[mem[64]] = t + -mem[64] - 32
                        mem[64] = t
                        _1444 = sha3(mem[_1442 + 32 len mem[_1442]])
                        if sha3(mem[_1442 + 32 len mem[_1442]]) % 3 > -4:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_1442 + 32 len mem[_1442]]) % 3) + 3):
                            revert with 0, 17
                        if 145 < _570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                            revert with 0, 17
                        if -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1442 + 32 len mem[_1442]]) % 3) + 73:
                            revert with 0, 17
                        if 1 > !(-(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1442 + 32 len mem[_1442]]) % 3) + 72):
                            revert with 0, 17
                        mem[t + 32] = block.difficulty
                        mem[t + 64] = block.timestamp
                        mem[t + 96] = 96
                        _1538 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        u = t + (32 * _1538) + 160
                        v = t + 160
                        while idx < _1538:
                            mem[v] = u + -t - 160
                            _1720 = mem[s]
                            _1758 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            t = 0
                            while t < _1758:
                                mem[t + u + 32] = mem[t + _1720 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1758) > _1758:
                                mem[_1758 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            u = ceil32(_1758) + u + 32
                            v = v + 32
                            continue 
                        _1782 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        if not -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1444 % 3) + 73:
                            revert with 0, 18
                        if sha3(mem[_1782 + 32 len mem[_1782]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1444 % 3) + 73 > !((_1444 % 3) + 73):
                            revert with 0, 17
                        mem[u] = (sha3(mem[_1782 + 32 len mem[_1782]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1444 % 3) + 73) + (_1444 % 3) + 73
                    else:
                        if mem[t + ceil32(return_data.size) + 64] < 500000:
                            _1052 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1072 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + (32 * _1072) + 160
                            u = mem[64] + 160
                            while idx < _1072:
                                mem[u] = t + -_1052 - 160
                                _1396 = mem[s]
                                _1416 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _1416:
                                    mem[v + t + 32] = mem[v + _1396 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1416) > _1416:
                                    mem[_1416 + t + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_1416) + t + 32
                                u = u + 32
                                continue 
                            _1436 = mem[64]
                            mem[mem[64]] = t + -mem[64] - 32
                            mem[64] = t
                            _1438 = sha3(mem[_1436 + 32 len mem[_1436]])
                            if sha3(mem[_1436 + 32 len mem[_1436]]) % 5 > -2:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1436 + 32 len mem[_1436]]) % 5) + 1):
                                revert with 0, 17
                            if 145 < _570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                                revert with 0, 17
                            if -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1436 + 32 len mem[_1436]]) % 5) + 71:
                                revert with 0, 17
                            if 1 > !(-(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1436 + 32 len mem[_1436]]) % 5) + 74):
                                revert with 0, 17
                            mem[t + 32] = block.difficulty
                            mem[t + 64] = block.timestamp
                            mem[t + 96] = 96
                            _1536 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            u = t + (32 * _1536) + 160
                            v = t + 160
                            while idx < _1536:
                                mem[v] = u + -t - 160
                                _1716 = mem[s]
                                _1756 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                t = 0
                                while t < _1756:
                                    mem[t + u + 32] = mem[t + _1716 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_1756) > _1756:
                                    mem[_1756 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                u = ceil32(_1756) + u + 32
                                v = v + 32
                                continue 
                            _1776 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            if not -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1438 % 5) + 75:
                                revert with 0, 18
                            if sha3(mem[_1776 + 32 len mem[_1776]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1438 % 5) + 75 > !((_1438 % 5) + 71):
                                revert with 0, 17
                            mem[u] = (sha3(mem[_1776 + 32 len mem[_1776]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1438 % 5) + 75) + (_1438 % 5) + 71
                        else:
                            _1053 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1073 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + (32 * _1073) + 160
                            u = mem[64] + 160
                            while idx < _1073:
                                mem[u] = t + -_1053 - 160
                                _1397 = mem[s]
                                _1417 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _1417:
                                    mem[v + t + 32] = mem[v + _1397 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1417) > _1417:
                                    mem[_1417 + t + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_1417) + t + 32
                                u = u + 32
                                continue 
                            _1439 = mem[64]
                            mem[mem[64]] = t + -mem[64] - 32
                            mem[64] = t
                            _1441 = sha3(mem[_1439 + 32 len mem[_1439]])
                            if sha3(mem[_1439 + 32 len mem[_1439]]) % 4 > -3:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1439 + 32 len mem[_1439]]) % 4) + 2):
                                revert with 0, 17
                            if 145 < _570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                                revert with 0, 17
                            if -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1439 + 32 len mem[_1439]]) % 4) + 72:
                                revert with 0, 17
                            if 1 > !(-(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1439 + 32 len mem[_1439]]) % 4) + 73):
                                revert with 0, 17
                            mem[t + 32] = block.difficulty
                            mem[t + 64] = block.timestamp
                            mem[t + 96] = 96
                            _1537 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            u = t + (32 * _1537) + 160
                            v = t + 160
                            while idx < _1537:
                                mem[v] = u + -t - 160
                                _1718 = mem[s]
                                _1757 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                t = 0
                                while t < _1757:
                                    mem[t + u + 32] = mem[t + _1718 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_1757) > _1757:
                                    mem[_1757 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                u = ceil32(_1757) + u + 32
                                v = v + 32
                                continue 
                            _1779 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            if not -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1441 % 4) + 74:
                                revert with 0, 18
                            if sha3(mem[_1779 + 32 len mem[_1779]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1441 % 4) + 74 > !((_1441 % 4) + 72):
                                revert with 0, 17
                            mem[u] = (sha3(mem[_1779 + 32 len mem[_1779]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1441 % 4) + 74) + (_1441 % 4) + 72
        else:
            mem[_594 + t + ceil32(return_data.size) + 320] = 0
            mem[t + ceil32(return_data.size)] = t + ceil32(return_data.size) + 288
            mem[t + ceil32(return_data.size) + 32] = mem[t + _588 + 32]
            mem[t + ceil32(return_data.size) + 64] = mem[t + _588 + 64]
            mem[t + ceil32(return_data.size) + 96] = mem[t + _588 + 96]
            mem[t + ceil32(return_data.size) + 128] = mem[t + _588 + 128]
            mem[t + ceil32(return_data.size) + 160] = mem[t + _588 + 160]
            mem[t + ceil32(return_data.size) + 192] = mem[t + _588 + 192]
            require mem[t + _588 + 224] < 6
            mem[t + ceil32(return_data.size) + 224] = mem[t + _588 + 224]
            require mem[t + _588 + 256] < 6
            mem[t + ceil32(return_data.size) + 256] = mem[t + _588 + 256]
            if mem[t + ceil32(return_data.size) + 64] >= 10 * 10^6:
                _1037 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = 96
                _1047 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = mem[64] + (32 * _1047) + 160
                u = mem[64] + 160
                while idx < _1047:
                    mem[u] = t + -_1037 - 160
                    _1405 = mem[s]
                    _1425 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1425:
                        mem[v + t + 32] = mem[v + _1405 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1425) > _1425:
                        mem[_1425 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1425) + t + 32
                    u = u + 32
                    continue 
                _1463 = mem[64]
                mem[mem[64]] = t + -mem[64] - 32
                mem[64] = t
                _1465 = sha3(mem[_1463 + 32 len mem[_1463]])
                if sha3(mem[_1463 + 32 len mem[_1463]]) % 1 > -6:
                    revert with 0, 17
                if 70 > !((sha3(mem[_1463 + 32 len mem[_1463]]) % 1) + 5):
                    revert with 0, 17
                if 145 < _570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                    revert with 0, 17
                if -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1463 + 32 len mem[_1463]]) % 1) + 75:
                    revert with 0, 17
                if 1 > !(-(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1463 + 32 len mem[_1463]]) % 1) + 70):
                    revert with 0, 17
                mem[t + 32] = block.difficulty
                mem[t + 64] = block.timestamp
                mem[t + 96] = 96
                _1545 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                u = t + (32 * _1545) + 160
                v = t + 160
                while idx < _1545:
                    mem[v] = u + -t - 160
                    _1734 = mem[s]
                    _1765 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _1765:
                        mem[t + u + 32] = mem[t + _1734 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1765) > _1765:
                        mem[_1765 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_1765) + u + 32
                    v = v + 32
                    continue 
                _1803 = mem[64]
                mem[mem[64]] = u + -mem[64] - 32
                mem[64] = u
                if not -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1465 % 1) + 71:
                    revert with 0, 18
                if sha3(mem[_1803 + 32 len mem[_1803]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1465 % 1) + 71 > !((_1465 % 1) + 75):
                    revert with 0, 17
                mem[u] = (sha3(mem[_1803 + 32 len mem[_1803]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1465 % 1) + 71) + (_1465 % 1) + 75
            else:
                if mem[t + ceil32(return_data.size) + 64] >= 5 * 10^6:
                    _1041 = mem[64]
                    mem[mem[64] + 32] = block.difficulty
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 96
                    _1057 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = mem[64] + (32 * _1057) + 160
                    u = mem[64] + 160
                    while idx < _1057:
                        mem[u] = t + -_1041 - 160
                        _1404 = mem[s]
                        _1424 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1424:
                            mem[v + t + 32] = mem[v + _1404 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1424) > _1424:
                            mem[_1424 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1424) + t + 32
                        u = u + 32
                        continue 
                    _1460 = mem[64]
                    mem[mem[64]] = t + -mem[64] - 32
                    mem[64] = t
                    _1462 = sha3(mem[_1460 + 32 len mem[_1460]])
                    if bool(sha3(mem[_1460 + 32 len mem[_1460]])) > -5:
                        revert with 0, 17
                    if 70 > !(bool(sha3(mem[_1460 + 32 len mem[_1460]])) + 4):
                        revert with 0, 17
                    if 145 < _570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                        revert with 0, 17
                    if -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < bool(sha3(mem[_1460 + 32 len mem[_1460]])) + 74:
                        revert with 0, 17
                    if 1 > !(-(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(sha3(mem[_1460 + 32 len mem[_1460]])) + 71):
                        revert with 0, 17
                    mem[t + 32] = block.difficulty
                    mem[t + 64] = block.timestamp
                    mem[t + 96] = 96
                    _1544 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    u = t + (32 * _1544) + 160
                    v = t + 160
                    while idx < _1544:
                        mem[v] = u + -t - 160
                        _1732 = mem[s]
                        _1764 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        t = 0
                        while t < _1764:
                            mem[t + u + 32] = mem[t + _1732 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1764) > _1764:
                            mem[_1764 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        u = ceil32(_1764) + u + 32
                        v = v + 32
                        continue 
                    _1800 = mem[64]
                    mem[mem[64]] = u + -mem[64] - 32
                    mem[64] = u
                    if not -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1462) + 72:
                        revert with 0, 18
                    if sha3(mem[_1800 + 32 len mem[_1800]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1462) + 72 > !(bool(_1462) + 74):
                        revert with 0, 17
                    mem[u] = (sha3(mem[_1800 + 32 len mem[_1800]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1462) + 72) + bool(_1462) + 74
                else:
                    if mem[t + ceil32(return_data.size) + 64] >= 10^6:
                        _1046 = mem[64]
                        mem[mem[64] + 32] = block.difficulty
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 96
                        _1066 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = mem[64] + (32 * _1066) + 160
                        u = mem[64] + 160
                        while idx < _1066:
                            mem[u] = t + -_1046 - 160
                            _1403 = mem[s]
                            _1423 = mem[mem[s]]
                            mem[t] = mem[mem[s]]
                            v = 0
                            while v < _1423:
                                mem[v + t + 32] = mem[v + _1403 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_1423) > _1423:
                                mem[_1423 + t + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = ceil32(_1423) + t + 32
                            u = u + 32
                            continue 
                        _1457 = mem[64]
                        mem[mem[64]] = t + -mem[64] - 32
                        mem[64] = t
                        _1459 = sha3(mem[_1457 + 32 len mem[_1457]])
                        if sha3(mem[_1457 + 32 len mem[_1457]]) % 3 > -4:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_1457 + 32 len mem[_1457]]) % 3) + 3):
                            revert with 0, 17
                        if 145 < _570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                            revert with 0, 17
                        if -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1457 + 32 len mem[_1457]]) % 3) + 73:
                            revert with 0, 17
                        if 1 > !(-(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1457 + 32 len mem[_1457]]) % 3) + 72):
                            revert with 0, 17
                        mem[t + 32] = block.difficulty
                        mem[t + 64] = block.timestamp
                        mem[t + 96] = 96
                        _1543 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        u = t + (32 * _1543) + 160
                        v = t + 160
                        while idx < _1543:
                            mem[v] = u + -t - 160
                            _1730 = mem[s]
                            _1763 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            t = 0
                            while t < _1763:
                                mem[t + u + 32] = mem[t + _1730 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1763) > _1763:
                                mem[_1763 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            u = ceil32(_1763) + u + 32
                            v = v + 32
                            continue 
                        _1797 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        if not -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1459 % 3) + 73:
                            revert with 0, 18
                        if sha3(mem[_1797 + 32 len mem[_1797]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1459 % 3) + 73 > !((_1459 % 3) + 73):
                            revert with 0, 17
                        mem[u] = (sha3(mem[_1797 + 32 len mem[_1797]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1459 % 3) + 73) + (_1459 % 3) + 73
                    else:
                        if mem[t + ceil32(return_data.size) + 64] < 500000:
                            _1055 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1076 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + (32 * _1076) + 160
                            u = mem[64] + 160
                            while idx < _1076:
                                mem[u] = t + -_1055 - 160
                                _1401 = mem[s]
                                _1421 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _1421:
                                    mem[v + t + 32] = mem[v + _1401 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1421) > _1421:
                                    mem[_1421 + t + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_1421) + t + 32
                                u = u + 32
                                continue 
                            _1451 = mem[64]
                            mem[mem[64]] = t + -mem[64] - 32
                            mem[64] = t
                            _1453 = sha3(mem[_1451 + 32 len mem[_1451]])
                            if sha3(mem[_1451 + 32 len mem[_1451]]) % 5 > -2:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1451 + 32 len mem[_1451]]) % 5) + 1):
                                revert with 0, 17
                            if 145 < _570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                                revert with 0, 17
                            if -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1451 + 32 len mem[_1451]]) % 5) + 71:
                                revert with 0, 17
                            if 1 > !(-(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1451 + 32 len mem[_1451]]) % 5) + 74):
                                revert with 0, 17
                            mem[t + 32] = block.difficulty
                            mem[t + 64] = block.timestamp
                            mem[t + 96] = 96
                            _1541 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            u = t + (32 * _1541) + 160
                            v = t + 160
                            while idx < _1541:
                                mem[v] = u + -t - 160
                                _1726 = mem[s]
                                _1761 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                t = 0
                                while t < _1761:
                                    mem[t + u + 32] = mem[t + _1726 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_1761) > _1761:
                                    mem[_1761 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                u = ceil32(_1761) + u + 32
                                v = v + 32
                                continue 
                            _1791 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            if not -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1453 % 5) + 75:
                                revert with 0, 18
                            if sha3(mem[_1791 + 32 len mem[_1791]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1453 % 5) + 75 > !((_1453 % 5) + 71):
                                revert with 0, 17
                            mem[u] = (sha3(mem[_1791 + 32 len mem[_1791]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1453 % 5) + 75) + (_1453 % 5) + 71
                        else:
                            _1056 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1077 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + (32 * _1077) + 160
                            u = mem[64] + 160
                            while idx < _1077:
                                mem[u] = t + -_1056 - 160
                                _1402 = mem[s]
                                _1422 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _1422:
                                    mem[v + t + 32] = mem[v + _1402 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1422) > _1422:
                                    mem[_1422 + t + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_1422) + t + 32
                                u = u + 32
                                continue 
                            _1454 = mem[64]
                            mem[mem[64]] = t + -mem[64] - 32
                            mem[64] = t
                            _1456 = sha3(mem[_1454 + 32 len mem[_1454]])
                            if sha3(mem[_1454 + 32 len mem[_1454]]) % 4 > -3:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1454 + 32 len mem[_1454]]) % 4) + 2):
                                revert with 0, 17
                            if 145 < _570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                                revert with 0, 17
                            if -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1454 + 32 len mem[_1454]]) % 4) + 72:
                                revert with 0, 17
                            if 1 > !(-(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1454 + 32 len mem[_1454]]) % 4) + 73):
                                revert with 0, 17
                            mem[t + 32] = block.difficulty
                            mem[t + 64] = block.timestamp
                            mem[t + 96] = 96
                            _1542 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[t + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            u = t + (32 * _1542) + 160
                            v = t + 160
                            while idx < _1542:
                                mem[v] = u + -t - 160
                                _1728 = mem[s]
                                _1762 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                t = 0
                                while t < _1762:
                                    mem[t + u + 32] = mem[t + _1728 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_1762) > _1762:
                                    mem[_1762 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                u = ceil32(_1762) + u + 32
                                v = v + 32
                                continue 
                            _1794 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            if not -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1456 % 4) + 74:
                                revert with 0, 18
                            if sha3(mem[_1794 + 32 len mem[_1794]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1456 % 4) + 74 > !((_1456 % 4) + 72):
                                revert with 0, 17
                            mem[u] = (sha3(mem[_1794 + 32 len mem[_1794]]) % -(_570 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1456 % 4) + 74) + (_1456 % 4) + 72
    return memory
      from u
       len 32
}



}
