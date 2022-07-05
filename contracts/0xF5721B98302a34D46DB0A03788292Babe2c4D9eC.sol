contract main {




// =====================  Runtime code  =====================


#
#  - sub_a633b2f2(?)
#
address owner;
address stor1;
mapping of uint8 stor2;
mapping of struct stor3;

function WhiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
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
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
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
    if ceil32(_8) > _8:
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
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 288
    mem[mem[64] + 320] = _8
    mem[mem[64] + 352 len ceil32(_8)] = mem[ceil32(return_data.size) + 704 len ceil32(_8)]
    if ceil32(_8) > _8:
        mem[_8 + mem[64] + 352] = 0
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
}

function sub_4ad0e221(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 6
    require arg2 < 6
    if bool(stor3[arg1][arg2].field_0):
        if bool(stor3[arg1][arg2].field_0) == uint255(stor3[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3[arg1][arg2].field_0):
            if bool(stor3[arg1][arg2].field_0) == uint255(stor3[arg1][arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3[arg1][arg2].field_0):
                if 31 < uint255(stor3[arg1][arg2].field_0) * 0.5:
                    mem[128] = stor3[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor3[arg1][arg2].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor3[arg1][arg2].field_8)
        else:
            if bool(stor3[arg1][arg2].field_0) == stor3[arg1][arg2].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][arg2].field_1 % 128:
                if 31 < stor3[arg1][arg2].field_1 % 128:
                    mem[128] = stor3[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1][arg2].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor3[arg1][arg2].field_8)
        mem[ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5) + 192 len ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5)]
        if ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5) > uint255(stor3[arg1][arg2].field_0) * 0.5:
            mem[(uint255(stor3[arg1][arg2].field_0) * 0.5) + ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5)]), 
    if bool(stor3[arg1][arg2].field_0) == stor3[arg1][arg2].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3[arg1][arg2].field_0):
        if bool(stor3[arg1][arg2].field_0) == uint255(stor3[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3[arg1][arg2].field_0):
            if 31 < uint255(stor3[arg1][arg2].field_0) * 0.5:
                mem[128] = stor3[arg1][arg2].field_0
                idx = 128
                s = 0
                while (uint255(stor3[arg1][arg2].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor3[arg1][arg2].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3[arg1][arg2].field_8)
    else:
        if bool(stor3[arg1][arg2].field_0) == stor3[arg1][arg2].field_1 % 128 < 32:
            revert with 0, 34
        if stor3[arg1][arg2].field_1 % 128:
            if 31 < stor3[arg1][arg2].field_1 % 128:
                mem[128] = stor3[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor3[arg1][arg2].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor3[arg1][arg2].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3[arg1][arg2].field_8)
    mem[ceil32(stor3[arg1][arg2].field_1 % 128) + 192 len ceil32(stor3[arg1][arg2].field_1 % 128)] = mem[128 len ceil32(stor3[arg1][arg2].field_1 % 128)]
    if ceil32(stor3[arg1][arg2].field_1 % 128) > stor3[arg1][arg2].field_1 % 128:
        mem[stor3[arg1][arg2].field_1 % 128 + ceil32(stor3[arg1][arg2].field_1 % 128) + 192] = 0
    return Array(len=stor3[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor3[arg1][arg2].field_1 % 128)], mem[(2 * ceil32(stor3[arg1][arg2].field_1 % 128)) + 192 len 2 * ceil32(stor3[arg1][arg2].field_1 % 128)]), 
}

function sub_54ab5ba7(?) payable {
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'Not allowed'
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
        mem[(2 * ceil32(return_data.size)) + 96] = _14
        require return_data.size >= _11 + (32 * _14) + 32
        s = ceil32(return_data.size) + _11 + 128
        t = (2 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _14:
            _65 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _11 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _71 = mem[ceil32(return_data.size) + _11 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _11 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _83 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1
            mem[_83] = _71
            require _11 + _65 + _71 + 64 <= return_data.size
            u = 0
            while u < _71:
                mem[u + _83 + 32] = mem[u + ceil32(return_data.size) + _11 + _65 + 160]
                u = u + 32
                continue 
            if ceil32(_71) > _71:
                mem[_71 + _83 + 32] = 0
            mem[t] = _83
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _67 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 96
        _70 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 160
        u = mem[64] + (32 * _70) + 160
        while idx < _70:
            mem[t] = u + -_67 - 160
            _110 = mem[s]
            _119 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _119:
                mem[v + u + 32] = mem[v + _110 + 32]
                v = v + 32
                continue 
            if ceil32(_119) > _119:
                mem[_119 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_119) + u + 32
            continue 
        _116 = mem[64]
        mem[mem[64]] = u + -mem[64] - 32
        mem[64] = u
        if not sha3(mem[_116 + 32 len mem[_116]]) % 4:
            return 0
        if 1 == sha3(mem[_116 + 32 len mem[_116]]) % 4:
            return 1
        if 2 == sha3(mem[_116 + 32 len mem[_116]]) % 4:
            return 2
        if sha3(mem[_116 + 32 len mem[_116]]) % 4 != 3:
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
        mem[(2 * ceil32(return_data.size)) + 96] = _18
        require return_data.size >= _17 + (32 * _18) + 32
        s = ceil32(return_data.size) + _17 + 128
        t = (2 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _18:
            _64 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _17 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _69 = mem[ceil32(return_data.size) + _17 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _17 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _82 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1
            mem[_82] = _69
            require _17 + _64 + _69 + 64 <= return_data.size
            u = 0
            while u < _69:
                mem[u + _82 + 32] = mem[u + ceil32(return_data.size) + _17 + _64 + 160]
                u = u + 32
                continue 
            if ceil32(_69) > _69:
                mem[_69 + _82 + 32] = 0
            mem[t] = _82
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _66 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 96
        _68 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 160
        u = mem[64] + (32 * _68) + 160
        while idx < _68:
            mem[t] = u + -_66 - 160
            _108 = mem[s]
            _115 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _115:
                mem[v + u + 32] = mem[v + _108 + 32]
                v = v + 32
                continue 
            if ceil32(_115) > _115:
                mem[_115 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_115) + u + 32
            continue 
        _112 = mem[64]
        mem[mem[64]] = u + -mem[64] - 32
        mem[64] = u
        if not sha3(mem[_112 + 32 len mem[_112]]) % 4:
            return 0
        if 1 == sha3(mem[_112 + 32 len mem[_112]]) % 4:
            return 1
        if 2 == sha3(mem[_112 + 32 len mem[_112]]) % 4:
            return 2
        if sha3(mem[_112 + 32 len mem[_112]]) % 4 != 3:
            return 0
    return 3
}

function sub_164af651(?) payable {
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'Not allowed'
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
        mem[(2 * ceil32(return_data.size)) + 96] = _14
        require return_data.size >= _11 + (32 * _14) + 32
        s = ceil32(return_data.size) + _11 + 128
        t = (2 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _14:
            _73 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _11 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _79 = mem[ceil32(return_data.size) + _11 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _11 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _91 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _11 + mem[s] + 128])) + 1
            mem[_91] = _79
            require _11 + _73 + _79 + 64 <= return_data.size
            u = 0
            while u < _79:
                mem[u + _91 + 32] = mem[u + ceil32(return_data.size) + _11 + _73 + 160]
                u = u + 32
                continue 
            if ceil32(_79) > _79:
                mem[_79 + _91 + 32] = 0
            mem[t] = _91
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _75 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 96
        _78 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 160
        u = mem[64] + (32 * _78) + 160
        while idx < _78:
            mem[t] = u + -_75 - 160
            _126 = mem[s]
            _135 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _135:
                mem[v + u + 32] = mem[v + _126 + 32]
                v = v + 32
                continue 
            if ceil32(_135) > _135:
                mem[_135 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_135) + u + 32
            continue 
        _132 = mem[64]
        mem[mem[64]] = u + -mem[64] - 32
        mem[64] = u
        if sha3(mem[_132 + 32 len mem[_132]]) % 100 < 60:
            return 0
        if sha3(mem[_132 + 32 len mem[_132]]) % 100 < 80:
            return 1
        if sha3(mem[_132 + 32 len mem[_132]]) % 100 < 90:
            return 2
        if sha3(mem[_132 + 32 len mem[_132]]) % 100 < 96:
            return 3
        if sha3(mem[_132 + 32 len mem[_132]]) % 100 < 99:
            return 4
        if sha3(mem[_132 + 32 len mem[_132]]) % 100 >= 100:
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
        mem[(2 * ceil32(return_data.size)) + 96] = _18
        require return_data.size >= _17 + (32 * _18) + 32
        s = ceil32(return_data.size) + _17 + 128
        t = (2 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _18:
            _72 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + _17 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _77 = mem[ceil32(return_data.size) + _17 + mem[s] + 128]
            if mem[ceil32(return_data.size) + _17 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _90 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _17 + mem[s] + 128])) + 1
            mem[_90] = _77
            require _17 + _72 + _77 + 64 <= return_data.size
            u = 0
            while u < _77:
                mem[u + _90 + 32] = mem[u + ceil32(return_data.size) + _17 + _72 + 160]
                u = u + 32
                continue 
            if ceil32(_77) > _77:
                mem[_77 + _90 + 32] = 0
            mem[t] = _90
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _74 = mem[64]
        mem[mem[64] + 32] = block.difficulty
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 96
        _76 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 160
        u = mem[64] + (32 * _76) + 160
        while idx < _76:
            mem[t] = u + -_74 - 160
            _124 = mem[s]
            _131 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _131:
                mem[v + u + 32] = mem[v + _124 + 32]
                v = v + 32
                continue 
            if ceil32(_131) > _131:
                mem[_131 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_131) + u + 32
            continue 
        _128 = mem[64]
        mem[mem[64]] = u + -mem[64] - 32
        mem[64] = u
        if sha3(mem[_128 + 32 len mem[_128]]) % 100 < 60:
            return 0
        if sha3(mem[_128 + 32 len mem[_128]]) % 100 < 80:
            return 1
        if sha3(mem[_128 + 32 len mem[_128]]) % 100 < 90:
            return 2
        if sha3(mem[_128 + 32 len mem[_128]]) % 100 < 96:
            return 3
        if sha3(mem[_128 + 32 len mem[_128]]) % 100 < 99:
            return 4
        if sha3(mem[_128 + 32 len mem[_128]]) % 100 >= 100:
            return 0
    return 5
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
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
            if bool(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0):
                if bool(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0) == uint255(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = 0
                    s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                    while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + ((uint255(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                    t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                    while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + ((uint255(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5) + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0) == stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = 0
                    s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                    while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + (stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                    t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                    while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + (stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) > t:
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
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
                if bool(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0):
                    if bool(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0) == uint255(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))
                    if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                        stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = 0
                        s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                        while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + ((uint255(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                        s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                        t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                        while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                            stor[s] = cd[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        t = s
                        while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + ((uint255(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0) * 0.5) + 31 / 32) > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if bool(stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0) == stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = 0
                    s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                    while sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + (stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor3[cd[((32 * idx) + cd[4] + 36)]][0].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                s = sha3(sha3(0, sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                    stor[s] = cd[t]
                    s = s + 1
                    t = t + 32
                    continue 
                t = s
                while sha3(sha3(0, sha3(cd[((32 * t) + cd[4] + 36)], 3))) + (stor3[cd[((32 * t) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) > t:
                    stor[t] = 0
                    t = t + 1
                    continue 
                if sha3(sha3(0, sha3(cd[((32 * t) + cd[4] + 36)], 3))) + (stor3[cd[((32 * t) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) == -1:
                    revert with 0, 17
                t = sha3(sha3(0, sha3(cd[((32 * t) + cd[4] + 36)], 3))) + (stor3[cd[((32 * t) + cd[4] + 36)]][0].field_1 % 128 + 31 / 32) + 1
                continue 
            if cd[((32 * idx) + cd[36] + 36)] > 5:
                revert with 0, 33
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 3)
            if bool(stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0):
                if bool(stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0) == uint255(stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 3))
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                    s = sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                    while sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + ((uint255(stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                    t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                    while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + ((uint255(stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0) * 0.5) + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
            else:
                if bool(stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0) == stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 3))
                if not cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]:
                    stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                    s = sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                    while sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + (stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                else:
                    stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_0 = (2 * cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 1
                    s = sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 3)))
                    t = cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68
                    while cd[68] + cd[(cd[68] + (32 * idx) + 36)] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 68 > t:
                        stor[s] = cd[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    t = s
                    while sha3(sha3(cd[((32 * idx) + cd[36] + 36)], sha3(cd[((32 * idx) + cd[4] + 36)], 3))) + (stor3[cd[((32 * idx) + cd[4] + 36)]][cd[((32 * idx) + cd[36] + 36)]].field_1 % 128 + 31 / 32) > t:
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
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
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
            _81 = mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
            s = 0
            t = (2 * ceil32(return_data.size)) + 256
            u = mem[64] + 160
            v = mem[64] + (32 * _81) + 160
            while s < _81:
                mem[u] = v + -_79 - 160
                _99 = mem[t]
                _109 = mem[mem[t]]
                mem[v] = mem[mem[t]]
                idx = 0
                while idx < _109:
                    mem[idx + v + 32] = mem[idx + _99 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_109) > _109:
                    mem[_109 + v + 32] = 0
                s = s + 1
                t = t + 32
                u = u + 32
                v = ceil32(_109) + v + 32
                continue 
            _106 = mem[64]
            mem[mem[64]] = v + -mem[64] - 32
            mem[64] = v
            if sha3(mem[_106 + 32 len mem[_106]]) % 5 > -2:
                revert with 0, 17
            if uint8((sha3(mem[_106 + 32 len mem[_106]]) % 5) + 1) and uint8(_73) > 255 / uint8((sha3(mem[_106 + 32 len mem[_106]]) % 5) + 1):
                revert with 0, 17
            if uint8(idx) >= 4:
                revert with 0, 50
            mem[(32 * uint8(idx)) + 96] = uint8(uint8(_73) * uint8((sha3(mem[_106 + 32 len mem[_106]]) % 5) + 1))
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
        t = mem[64] + 160
        u = mem[64] + (32 * _135) + 160
        while idx < _135:
            mem[t] = u + -_133 - 160
            _563 = mem[s]
            _572 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _572:
                mem[v + u + 32] = mem[v + _563 + 32]
                v = v + 32
                continue 
            if ceil32(_572) > _572:
                mem[_572 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_572) + u + 32
            continue 
        _569 = mem[64]
        mem[mem[64]] = u + -mem[64] - 32
        mem[64] = u
        _571 = sha3(mem[_569 + 32 len mem[_569]])
        if not -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
            revert with 0, 18
        mem[u] = 0x36dac2cc00000000000000000000000000000000000000000000000000000000
        mem[u + 4] = cd[4]
        require ext_code.size(stor1)
        staticcall stor1.0x36dac2cc with:
                gas gas_remaining wei
               args cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[u len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = u + ceil32(return_data.size)
        require return_data.size >= 32
        _589 = mem[u len 4], Mask(224, 32, cd[4]) >> 32
        require mem[u len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require return_data.size - mem[u len 4], Mask(224, 32, cd[4]) >> 32 >= 288
        if not bool(u + ceil32(return_data.size) + 288 <= test266151307()):
            revert with 0, 65
        mem[64] = u + ceil32(return_data.size) + 288
        _593 = mem[u + _589]
        require mem[u + _589] <= test266151307()
        require u + _589 + mem[u + _589] + 31 < u + return_data.size
        _595 = mem[u + _589 + mem[u + _589]]
        if mem[u + _589 + mem[u + _589]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[u + _589 + mem[u + _589]])) + 289 < 288 or u + ceil32(return_data.size) + ceil32(ceil32(mem[u + _589 + mem[u + _589]])) + 289 > test266151307():
            revert with 0, 65
        mem[64] = u + ceil32(return_data.size) + ceil32(ceil32(mem[u + _589 + mem[u + _589]])) + 289
        mem[u + ceil32(return_data.size) + 288] = _595
        require _589 + _593 + _595 + 32 <= return_data.size
        mem[u + ceil32(return_data.size) + 320 len ceil32(_595)] = mem[u + _589 + _593 + 32 len ceil32(_595)]
        if ceil32(_595) <= _595:
            mem[u + ceil32(return_data.size)] = u + ceil32(return_data.size) + 288
            mem[u + ceil32(return_data.size) + 32] = mem[u + _589 + 32]
            mem[u + ceil32(return_data.size) + 64] = mem[u + _589 + 64]
            mem[u + ceil32(return_data.size) + 96] = mem[u + _589 + 96]
            mem[u + ceil32(return_data.size) + 128] = mem[u + _589 + 128]
            mem[u + ceil32(return_data.size) + 160] = mem[u + _589 + 160]
            mem[u + ceil32(return_data.size) + 192] = mem[u + _589 + 192]
            require mem[u + _589 + 224] < 6
            mem[u + ceil32(return_data.size) + 224] = mem[u + _589 + 224]
            require mem[u + _589 + 256] < 6
            mem[u + ceil32(return_data.size) + 256] = mem[u + _589 + 256]
            if mem[u + ceil32(return_data.size) + 64] >= 10 * 10^6:
                _1038 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = 96
                _1045 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = mem[64] + 160
                u = mem[64] + (32 * _1045) + 160
                while idx < _1045:
                    mem[t] = u + -_1038 - 160
                    _1410 = mem[s]
                    _1475 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _1475:
                        mem[v + u + 32] = mem[v + _1410 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1475) > _1475:
                        mem[_1475 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_1475) + u + 32
                    continue 
                _1472 = mem[64]
                mem[mem[64]] = u + -mem[64] - 32
                mem[64] = u
                _1474 = sha3(mem[_1472 + 32 len mem[_1472]])
                if sha3(mem[_1472 + 32 len mem[_1472]]) % 1 > -6:
                    revert with 0, 17
                if 70 > !((sha3(mem[_1472 + 32 len mem[_1472]]) % 1) + 5):
                    revert with 0, 17
                if 145 < _571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                    revert with 0, 17
                if -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1472 + 32 len mem[_1472]]) % 1) + 75:
                    revert with 0, 17
                if 1 > !(-(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1472 + 32 len mem[_1472]]) % 1) + 70):
                    revert with 0, 17
                mem[u + 32] = block.difficulty
                mem[u + 64] = block.timestamp
                mem[u + 96] = 96
                _1550 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = u + 160
                v = u + (32 * _1550) + 160
                while idx < _1550:
                    mem[t] = v + -u - 160
                    _1744 = mem[s]
                    _1815 = mem[mem[s]]
                    mem[v] = mem[mem[s]]
                    u = 0
                    while u < _1815:
                        mem[u + v + 32] = mem[u + _1744 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_1815) > _1815:
                        mem[_1815 + v + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    v = ceil32(_1815) + v + 32
                    continue 
                _1812 = mem[64]
                mem[mem[64]] = v + -mem[64] - 32
                mem[64] = v
                if not -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1474 % 1) + 71:
                    revert with 0, 18
                if sha3(mem[_1812 + 32 len mem[_1812]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1474 % 1) + 71 > !((_1474 % 1) + 75):
                    revert with 0, 17
                mem[v] = (sha3(mem[_1812 + 32 len mem[_1812]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1474 % 1) + 71) + (_1474 % 1) + 75
            else:
                if mem[u + ceil32(return_data.size) + 64] >= 5 * 10^6:
                    _1044 = mem[64]
                    mem[mem[64] + 32] = block.difficulty
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 96
                    _1053 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = mem[64] + 160
                    u = mem[64] + (32 * _1053) + 160
                    while idx < _1053:
                        mem[t] = u + -_1044 - 160
                        _1409 = mem[s]
                        _1471 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1471:
                            mem[v + u + 32] = mem[v + _1409 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1471) > _1471:
                            mem[_1471 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1471) + u + 32
                        continue 
                    _1468 = mem[64]
                    mem[mem[64]] = u + -mem[64] - 32
                    mem[64] = u
                    _1470 = sha3(mem[_1468 + 32 len mem[_1468]])
                    if bool(sha3(mem[_1468 + 32 len mem[_1468]])) > -5:
                        revert with 0, 17
                    if 70 > !(bool(sha3(mem[_1468 + 32 len mem[_1468]])) + 4):
                        revert with 0, 17
                    if 145 < _571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                        revert with 0, 17
                    if -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < bool(sha3(mem[_1468 + 32 len mem[_1468]])) + 74:
                        revert with 0, 17
                    if 1 > !(-(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(sha3(mem[_1468 + 32 len mem[_1468]])) + 71):
                        revert with 0, 17
                    mem[u + 32] = block.difficulty
                    mem[u + 64] = block.timestamp
                    mem[u + 96] = 96
                    _1549 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = u + 160
                    v = u + (32 * _1549) + 160
                    while idx < _1549:
                        mem[t] = v + -u - 160
                        _1742 = mem[s]
                        _1811 = mem[mem[s]]
                        mem[v] = mem[mem[s]]
                        u = 0
                        while u < _1811:
                            mem[u + v + 32] = mem[u + _1742 + 32]
                            u = u + 32
                            continue 
                        if ceil32(_1811) > _1811:
                            mem[_1811 + v + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        v = ceil32(_1811) + v + 32
                        continue 
                    _1808 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    if not -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1470) + 72:
                        revert with 0, 18
                    if sha3(mem[_1808 + 32 len mem[_1808]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1470) + 72 > !(bool(_1470) + 74):
                        revert with 0, 17
                    mem[v] = (sha3(mem[_1808 + 32 len mem[_1808]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1470) + 72) + bool(_1470) + 74
                else:
                    if mem[u + ceil32(return_data.size) + 64] >= 10^6:
                        _1052 = mem[64]
                        mem[mem[64] + 32] = block.difficulty
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 96
                        _1066 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = mem[64] + 160
                        u = mem[64] + (32 * _1066) + 160
                        while idx < _1066:
                            mem[t] = u + -_1052 - 160
                            _1408 = mem[s]
                            _1467 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _1467:
                                mem[v + u + 32] = mem[v + _1408 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_1467) > _1467:
                                mem[_1467 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_1467) + u + 32
                            continue 
                        _1464 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        _1466 = sha3(mem[_1464 + 32 len mem[_1464]])
                        if sha3(mem[_1464 + 32 len mem[_1464]]) % 3 > -4:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_1464 + 32 len mem[_1464]]) % 3) + 3):
                            revert with 0, 17
                        if 145 < _571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                            revert with 0, 17
                        if -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1464 + 32 len mem[_1464]]) % 3) + 73:
                            revert with 0, 17
                        if 1 > !(-(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1464 + 32 len mem[_1464]]) % 3) + 72):
                            revert with 0, 17
                        mem[u + 32] = block.difficulty
                        mem[u + 64] = block.timestamp
                        mem[u + 96] = 96
                        _1548 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = u + 160
                        v = u + (32 * _1548) + 160
                        while idx < _1548:
                            mem[t] = v + -u - 160
                            _1740 = mem[s]
                            _1807 = mem[mem[s]]
                            mem[v] = mem[mem[s]]
                            u = 0
                            while u < _1807:
                                mem[u + v + 32] = mem[u + _1740 + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1807) > _1807:
                                mem[_1807 + v + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            v = ceil32(_1807) + v + 32
                            continue 
                        _1804 = mem[64]
                        mem[mem[64]] = v + -mem[64] - 32
                        mem[64] = v
                        if not -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1466 % 3) + 73:
                            revert with 0, 18
                        if sha3(mem[_1804 + 32 len mem[_1804]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1466 % 3) + 73 > !((_1466 % 3) + 73):
                            revert with 0, 17
                        mem[v] = (sha3(mem[_1804 + 32 len mem[_1804]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1466 % 3) + 73) + (_1466 % 3) + 73
                    else:
                        if mem[u + ceil32(return_data.size) + 64] < 500000:
                            _1064 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1086 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + 160
                            u = mem[64] + (32 * _1086) + 160
                            while idx < _1086:
                                mem[t] = u + -_1064 - 160
                                _1406 = mem[s]
                                _1459 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _1459:
                                    mem[v + u + 32] = mem[v + _1406 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1459) > _1459:
                                    mem[_1459 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_1459) + u + 32
                                continue 
                            _1456 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            _1458 = sha3(mem[_1456 + 32 len mem[_1456]])
                            if sha3(mem[_1456 + 32 len mem[_1456]]) % 5 > -2:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1456 + 32 len mem[_1456]]) % 5) + 1):
                                revert with 0, 17
                            if 145 < _571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                                revert with 0, 17
                            if -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1456 + 32 len mem[_1456]]) % 5) + 71:
                                revert with 0, 17
                            if 1 > !(-(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1456 + 32 len mem[_1456]]) % 5) + 74):
                                revert with 0, 17
                            mem[u + 32] = block.difficulty
                            mem[u + 64] = block.timestamp
                            mem[u + 96] = 96
                            _1546 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = u + 160
                            v = u + (32 * _1546) + 160
                            while idx < _1546:
                                mem[t] = v + -u - 160
                                _1736 = mem[s]
                                _1799 = mem[mem[s]]
                                mem[v] = mem[mem[s]]
                                u = 0
                                while u < _1799:
                                    mem[u + v + 32] = mem[u + _1736 + 32]
                                    u = u + 32
                                    continue 
                                if ceil32(_1799) > _1799:
                                    mem[_1799 + v + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                v = ceil32(_1799) + v + 32
                                continue 
                            _1796 = mem[64]
                            mem[mem[64]] = v + -mem[64] - 32
                            mem[64] = v
                            if not -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1458 % 5) + 75:
                                revert with 0, 18
                            if sha3(mem[_1796 + 32 len mem[_1796]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1458 % 5) + 75 > !((_1458 % 5) + 71):
                                revert with 0, 17
                            mem[v] = (sha3(mem[_1796 + 32 len mem[_1796]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1458 % 5) + 75) + (_1458 % 5) + 71
                        else:
                            _1065 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1087 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + 160
                            u = mem[64] + (32 * _1087) + 160
                            while idx < _1087:
                                mem[t] = u + -_1065 - 160
                                _1407 = mem[s]
                                _1463 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _1463:
                                    mem[v + u + 32] = mem[v + _1407 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1463) > _1463:
                                    mem[_1463 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_1463) + u + 32
                                continue 
                            _1460 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            _1462 = sha3(mem[_1460 + 32 len mem[_1460]])
                            if sha3(mem[_1460 + 32 len mem[_1460]]) % 4 > -3:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1460 + 32 len mem[_1460]]) % 4) + 2):
                                revert with 0, 17
                            if 145 < _571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                                revert with 0, 17
                            if -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1460 + 32 len mem[_1460]]) % 4) + 72:
                                revert with 0, 17
                            if 1 > !(-(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1460 + 32 len mem[_1460]]) % 4) + 73):
                                revert with 0, 17
                            mem[u + 32] = block.difficulty
                            mem[u + 64] = block.timestamp
                            mem[u + 96] = 96
                            _1547 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = u + 160
                            v = u + (32 * _1547) + 160
                            while idx < _1547:
                                mem[t] = v + -u - 160
                                _1738 = mem[s]
                                _1803 = mem[mem[s]]
                                mem[v] = mem[mem[s]]
                                u = 0
                                while u < _1803:
                                    mem[u + v + 32] = mem[u + _1738 + 32]
                                    u = u + 32
                                    continue 
                                if ceil32(_1803) > _1803:
                                    mem[_1803 + v + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                v = ceil32(_1803) + v + 32
                                continue 
                            _1800 = mem[64]
                            mem[mem[64]] = v + -mem[64] - 32
                            mem[64] = v
                            if not -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1462 % 4) + 74:
                                revert with 0, 18
                            if sha3(mem[_1800 + 32 len mem[_1800]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1462 % 4) + 74 > !((_1462 % 4) + 72):
                                revert with 0, 17
                            mem[v] = (sha3(mem[_1800 + 32 len mem[_1800]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1462 % 4) + 74) + (_1462 % 4) + 72
        else:
            mem[_595 + u + ceil32(return_data.size) + 320] = 0
            mem[u + ceil32(return_data.size)] = u + ceil32(return_data.size) + 288
            mem[u + ceil32(return_data.size) + 32] = mem[u + _589 + 32]
            mem[u + ceil32(return_data.size) + 64] = mem[u + _589 + 64]
            mem[u + ceil32(return_data.size) + 96] = mem[u + _589 + 96]
            mem[u + ceil32(return_data.size) + 128] = mem[u + _589 + 128]
            mem[u + ceil32(return_data.size) + 160] = mem[u + _589 + 160]
            mem[u + ceil32(return_data.size) + 192] = mem[u + _589 + 192]
            require mem[u + _589 + 224] < 6
            mem[u + ceil32(return_data.size) + 224] = mem[u + _589 + 224]
            require mem[u + _589 + 256] < 6
            mem[u + ceil32(return_data.size) + 256] = mem[u + _589 + 256]
            if mem[u + ceil32(return_data.size) + 64] >= 10 * 10^6:
                _1039 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = 96
                _1047 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = mem[64] + 160
                u = mem[64] + (32 * _1047) + 160
                while idx < _1047:
                    mem[t] = u + -_1039 - 160
                    _1415 = mem[s]
                    _1495 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _1495:
                        mem[v + u + 32] = mem[v + _1415 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1495) > _1495:
                        mem[_1495 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_1495) + u + 32
                    continue 
                _1492 = mem[64]
                mem[mem[64]] = u + -mem[64] - 32
                mem[64] = u
                _1494 = sha3(mem[_1492 + 32 len mem[_1492]])
                if sha3(mem[_1492 + 32 len mem[_1492]]) % 1 > -6:
                    revert with 0, 17
                if 70 > !((sha3(mem[_1492 + 32 len mem[_1492]]) % 1) + 5):
                    revert with 0, 17
                if 145 < _571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                    revert with 0, 17
                if -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1492 + 32 len mem[_1492]]) % 1) + 75:
                    revert with 0, 17
                if 1 > !(-(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1492 + 32 len mem[_1492]]) % 1) + 70):
                    revert with 0, 17
                mem[u + 32] = block.difficulty
                mem[u + 64] = block.timestamp
                mem[u + 96] = 96
                _1555 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = u + 160
                v = u + (32 * _1555) + 160
                while idx < _1555:
                    mem[t] = v + -u - 160
                    _1754 = mem[s]
                    _1835 = mem[mem[s]]
                    mem[v] = mem[mem[s]]
                    u = 0
                    while u < _1835:
                        mem[u + v + 32] = mem[u + _1754 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_1835) > _1835:
                        mem[_1835 + v + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    v = ceil32(_1835) + v + 32
                    continue 
                _1832 = mem[64]
                mem[mem[64]] = v + -mem[64] - 32
                mem[64] = v
                if not -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1494 % 1) + 71:
                    revert with 0, 18
                if sha3(mem[_1832 + 32 len mem[_1832]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1494 % 1) + 71 > !((_1494 % 1) + 75):
                    revert with 0, 17
                mem[v] = (sha3(mem[_1832 + 32 len mem[_1832]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1494 % 1) + 71) + (_1494 % 1) + 75
            else:
                if mem[u + ceil32(return_data.size) + 64] >= 5 * 10^6:
                    _1046 = mem[64]
                    mem[mem[64] + 32] = block.difficulty
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 96
                    _1055 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = mem[64] + 160
                    u = mem[64] + (32 * _1055) + 160
                    while idx < _1055:
                        mem[t] = u + -_1046 - 160
                        _1414 = mem[s]
                        _1491 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1491:
                            mem[v + u + 32] = mem[v + _1414 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1491) > _1491:
                            mem[_1491 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1491) + u + 32
                        continue 
                    _1488 = mem[64]
                    mem[mem[64]] = u + -mem[64] - 32
                    mem[64] = u
                    _1490 = sha3(mem[_1488 + 32 len mem[_1488]])
                    if bool(sha3(mem[_1488 + 32 len mem[_1488]])) > -5:
                        revert with 0, 17
                    if 70 > !(bool(sha3(mem[_1488 + 32 len mem[_1488]])) + 4):
                        revert with 0, 17
                    if 145 < _571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                        revert with 0, 17
                    if -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < bool(sha3(mem[_1488 + 32 len mem[_1488]])) + 74:
                        revert with 0, 17
                    if 1 > !(-(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(sha3(mem[_1488 + 32 len mem[_1488]])) + 71):
                        revert with 0, 17
                    mem[u + 32] = block.difficulty
                    mem[u + 64] = block.timestamp
                    mem[u + 96] = 96
                    _1554 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = u + 160
                    v = u + (32 * _1554) + 160
                    while idx < _1554:
                        mem[t] = v + -u - 160
                        _1752 = mem[s]
                        _1831 = mem[mem[s]]
                        mem[v] = mem[mem[s]]
                        u = 0
                        while u < _1831:
                            mem[u + v + 32] = mem[u + _1752 + 32]
                            u = u + 32
                            continue 
                        if ceil32(_1831) > _1831:
                            mem[_1831 + v + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        v = ceil32(_1831) + v + 32
                        continue 
                    _1828 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    if not -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1490) + 72:
                        revert with 0, 18
                    if sha3(mem[_1828 + 32 len mem[_1828]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1490) + 72 > !(bool(_1490) + 74):
                        revert with 0, 17
                    mem[v] = (sha3(mem[_1828 + 32 len mem[_1828]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_1490) + 72) + bool(_1490) + 74
                else:
                    if mem[u + ceil32(return_data.size) + 64] >= 10^6:
                        _1054 = mem[64]
                        mem[mem[64] + 32] = block.difficulty
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 96
                        _1070 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = mem[64] + 160
                        u = mem[64] + (32 * _1070) + 160
                        while idx < _1070:
                            mem[t] = u + -_1054 - 160
                            _1413 = mem[s]
                            _1487 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _1487:
                                mem[v + u + 32] = mem[v + _1413 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_1487) > _1487:
                                mem[_1487 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_1487) + u + 32
                            continue 
                        _1484 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        _1486 = sha3(mem[_1484 + 32 len mem[_1484]])
                        if sha3(mem[_1484 + 32 len mem[_1484]]) % 3 > -4:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_1484 + 32 len mem[_1484]]) % 3) + 3):
                            revert with 0, 17
                        if 145 < _571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                            revert with 0, 17
                        if -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1484 + 32 len mem[_1484]]) % 3) + 73:
                            revert with 0, 17
                        if 1 > !(-(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1484 + 32 len mem[_1484]]) % 3) + 72):
                            revert with 0, 17
                        mem[u + 32] = block.difficulty
                        mem[u + 64] = block.timestamp
                        mem[u + 96] = 96
                        _1553 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = u + 160
                        v = u + (32 * _1553) + 160
                        while idx < _1553:
                            mem[t] = v + -u - 160
                            _1750 = mem[s]
                            _1827 = mem[mem[s]]
                            mem[v] = mem[mem[s]]
                            u = 0
                            while u < _1827:
                                mem[u + v + 32] = mem[u + _1750 + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1827) > _1827:
                                mem[_1827 + v + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            v = ceil32(_1827) + v + 32
                            continue 
                        _1824 = mem[64]
                        mem[mem[64]] = v + -mem[64] - 32
                        mem[64] = v
                        if not -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1486 % 3) + 73:
                            revert with 0, 18
                        if sha3(mem[_1824 + 32 len mem[_1824]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1486 % 3) + 73 > !((_1486 % 3) + 73):
                            revert with 0, 17
                        mem[v] = (sha3(mem[_1824 + 32 len mem[_1824]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1486 % 3) + 73) + (_1486 % 3) + 73
                    else:
                        if mem[u + ceil32(return_data.size) + 64] < 500000:
                            _1068 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1093 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + 160
                            u = mem[64] + (32 * _1093) + 160
                            while idx < _1093:
                                mem[t] = u + -_1068 - 160
                                _1411 = mem[s]
                                _1479 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _1479:
                                    mem[v + u + 32] = mem[v + _1411 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1479) > _1479:
                                    mem[_1479 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_1479) + u + 32
                                continue 
                            _1476 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            _1478 = sha3(mem[_1476 + 32 len mem[_1476]])
                            if sha3(mem[_1476 + 32 len mem[_1476]]) % 5 > -2:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1476 + 32 len mem[_1476]]) % 5) + 1):
                                revert with 0, 17
                            if 145 < _571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                                revert with 0, 17
                            if -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1476 + 32 len mem[_1476]]) % 5) + 71:
                                revert with 0, 17
                            if 1 > !(-(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1476 + 32 len mem[_1476]]) % 5) + 74):
                                revert with 0, 17
                            mem[u + 32] = block.difficulty
                            mem[u + 64] = block.timestamp
                            mem[u + 96] = 96
                            _1551 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = u + 160
                            v = u + (32 * _1551) + 160
                            while idx < _1551:
                                mem[t] = v + -u - 160
                                _1746 = mem[s]
                                _1819 = mem[mem[s]]
                                mem[v] = mem[mem[s]]
                                u = 0
                                while u < _1819:
                                    mem[u + v + 32] = mem[u + _1746 + 32]
                                    u = u + 32
                                    continue 
                                if ceil32(_1819) > _1819:
                                    mem[_1819 + v + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                v = ceil32(_1819) + v + 32
                                continue 
                            _1816 = mem[64]
                            mem[mem[64]] = v + -mem[64] - 32
                            mem[64] = v
                            if not -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1478 % 5) + 75:
                                revert with 0, 18
                            if sha3(mem[_1816 + 32 len mem[_1816]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1478 % 5) + 75 > !((_1478 % 5) + 71):
                                revert with 0, 17
                            mem[v] = (sha3(mem[_1816 + 32 len mem[_1816]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1478 % 5) + 75) + (_1478 % 5) + 71
                        else:
                            _1069 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1094 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + 160
                            u = mem[64] + (32 * _1094) + 160
                            while idx < _1094:
                                mem[t] = u + -_1069 - 160
                                _1412 = mem[s]
                                _1483 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _1483:
                                    mem[v + u + 32] = mem[v + _1412 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1483) > _1483:
                                    mem[_1483 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_1483) + u + 32
                                continue 
                            _1480 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            _1482 = sha3(mem[_1480 + 32 len mem[_1480]])
                            if sha3(mem[_1480 + 32 len mem[_1480]]) % 4 > -3:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1480 + 32 len mem[_1480]]) % 4) + 2):
                                revert with 0, 17
                            if 145 < _571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                                revert with 0, 17
                            if -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_1480 + 32 len mem[_1480]]) % 4) + 72:
                                revert with 0, 17
                            if 1 > !(-(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_1480 + 32 len mem[_1480]]) % 4) + 73):
                                revert with 0, 17
                            mem[u + 32] = block.difficulty
                            mem[u + 64] = block.timestamp
                            mem[u + 96] = 96
                            _1552 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = u + 160
                            v = u + (32 * _1552) + 160
                            while idx < _1552:
                                mem[t] = v + -u - 160
                                _1748 = mem[s]
                                _1823 = mem[mem[s]]
                                mem[v] = mem[mem[s]]
                                u = 0
                                while u < _1823:
                                    mem[u + v + 32] = mem[u + _1748 + 32]
                                    u = u + 32
                                    continue 
                                if ceil32(_1823) > _1823:
                                    mem[_1823 + v + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                v = ceil32(_1823) + v + 32
                                continue 
                            _1820 = mem[64]
                            mem[mem[64]] = v + -mem[64] - 32
                            mem[64] = v
                            if not -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1482 % 4) + 74:
                                revert with 0, 18
                            if sha3(mem[_1820 + 32 len mem[_1820]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1482 % 4) + 74 > !((_1482 % 4) + 72):
                                revert with 0, 17
                            mem[v] = (sha3(mem[_1820 + 32 len mem[_1820]]) % -(_571 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_1482 % 4) + 74) + (_1482 % 4) + 72
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
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - 4) >> 32 + 224]
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
            _80 = mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
            s = 0
            t = (2 * ceil32(return_data.size)) + 256
            u = mem[64] + 160
            v = mem[64] + (32 * _80) + 160
            while s < _80:
                mem[u] = v + -_77 - 160
                _98 = mem[t]
                _104 = mem[mem[t]]
                mem[v] = mem[mem[t]]
                idx = 0
                while idx < _104:
                    mem[idx + v + 32] = mem[idx + _98 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_104) > _104:
                    mem[_104 + v + 32] = 0
                s = s + 1
                t = t + 32
                u = u + 32
                v = ceil32(_104) + v + 32
                continue 
            _101 = mem[64]
            mem[mem[64]] = v + -mem[64] - 32
            mem[64] = v
            if sha3(mem[_101 + 32 len mem[_101]]) % 5 > -2:
                revert with 0, 17
            if uint8((sha3(mem[_101 + 32 len mem[_101]]) % 5) + 1) and uint8(_72) > 255 / uint8((sha3(mem[_101 + 32 len mem[_101]]) % 5) + 1):
                revert with 0, 17
            if uint8(idx) >= 4:
                revert with 0, 50
            mem[(32 * uint8(idx)) + 96] = uint8(uint8(_72) * uint8((sha3(mem[_101 + 32 len mem[_101]]) % 5) + 1))
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
        t = mem[64] + 160
        u = mem[64] + (32 * _134) + 160
        while idx < _134:
            mem[t] = u + -_132 - 160
            _562 = mem[s]
            _567 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _567:
                mem[v + u + 32] = mem[v + _562 + 32]
                v = v + 32
                continue 
            if ceil32(_567) > _567:
                mem[_567 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_567) + u + 32
            continue 
        _564 = mem[64]
        mem[mem[64]] = u + -mem[64] - 32
        mem[64] = u
        _566 = sha3(mem[_564 + 32 len mem[_564]])
        if not -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
            revert with 0, 18
        mem[u] = 0x36dac2cc00000000000000000000000000000000000000000000000000000000
        mem[u + 4] = cd[4]
        require ext_code.size(stor1)
        staticcall stor1.0x36dac2cc with:
                gas gas_remaining wei
               args cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[u len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = u + ceil32(return_data.size)
        require return_data.size >= 32
        _588 = mem[u len 4], Mask(224, 32, cd[4]) >> 32
        require mem[u len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require return_data.size - mem[u len 4], Mask(224, 32, cd[4]) >> 32 >= 288
        if not bool(u + ceil32(return_data.size) + 288 <= test266151307()):
            revert with 0, 65
        mem[64] = u + ceil32(return_data.size) + 288
        _592 = mem[u + _588]
        require mem[u + _588] <= test266151307()
        require u + _588 + mem[u + _588] + 31 < u + return_data.size
        _594 = mem[u + _588 + mem[u + _588]]
        if mem[u + _588 + mem[u + _588]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[u + _588 + mem[u + _588]])) + 289 < 288 or u + ceil32(return_data.size) + ceil32(ceil32(mem[u + _588 + mem[u + _588]])) + 289 > test266151307():
            revert with 0, 65
        mem[64] = u + ceil32(return_data.size) + ceil32(ceil32(mem[u + _588 + mem[u + _588]])) + 289
        mem[u + ceil32(return_data.size) + 288] = _594
        require _588 + _592 + _594 + 32 <= return_data.size
        mem[u + ceil32(return_data.size) + 320 len ceil32(_594)] = mem[u + _588 + _592 + 32 len ceil32(_594)]
        if ceil32(_594) <= _594:
            mem[u + ceil32(return_data.size)] = u + ceil32(return_data.size) + 288
            mem[u + ceil32(return_data.size) + 32] = mem[u + _588 + 32]
            mem[u + ceil32(return_data.size) + 64] = mem[u + _588 + 64]
            mem[u + ceil32(return_data.size) + 96] = mem[u + _588 + 96]
            mem[u + ceil32(return_data.size) + 128] = mem[u + _588 + 128]
            mem[u + ceil32(return_data.size) + 160] = mem[u + _588 + 160]
            mem[u + ceil32(return_data.size) + 192] = mem[u + _588 + 192]
            require mem[u + _588 + 224] < 6
            mem[u + ceil32(return_data.size) + 224] = mem[u + _588 + 224]
            require mem[u + _588 + 256] < 6
            mem[u + ceil32(return_data.size) + 256] = mem[u + _588 + 256]
            if mem[u + ceil32(return_data.size) + 64] >= 10 * 10^6:
                _1036 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = 96
                _1041 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = mem[64] + 160
                u = mem[64] + (32 * _1041) + 160
                while idx < _1041:
                    mem[t] = u + -_1036 - 160
                    _1400 = mem[s]
                    _1435 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _1435:
                        mem[v + u + 32] = mem[v + _1400 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1435) > _1435:
                        mem[_1435 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_1435) + u + 32
                    continue 
                _1432 = mem[64]
                mem[mem[64]] = u + -mem[64] - 32
                mem[64] = u
                _1434 = sha3(mem[_1432 + 32 len mem[_1432]])
                if sha3(mem[_1432 + 32 len mem[_1432]]) % 1 > -6:
                    revert with 0, 17
                if 70 > !((sha3(mem[_1432 + 32 len mem[_1432]]) % 1) + 5):
                    revert with 0, 17
                if 145 < _566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                    revert with 0, 17
                if -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1432 + 32 len mem[_1432]]) % 1) + 75:
                    revert with 0, 17
                if 1 > !(-(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1432 + 32 len mem[_1432]]) % 1) + 70):
                    revert with 0, 17
                mem[u + 32] = block.difficulty
                mem[u + 64] = block.timestamp
                mem[u + 96] = 96
                _1540 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = u + 160
                v = u + (32 * _1540) + 160
                while idx < _1540:
                    mem[t] = v + -u - 160
                    _1724 = mem[s]
                    _1775 = mem[mem[s]]
                    mem[v] = mem[mem[s]]
                    u = 0
                    while u < _1775:
                        mem[u + v + 32] = mem[u + _1724 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_1775) > _1775:
                        mem[_1775 + v + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    v = ceil32(_1775) + v + 32
                    continue 
                _1772 = mem[64]
                mem[mem[64]] = v + -mem[64] - 32
                mem[64] = v
                if not -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1434 % 1) + 71:
                    revert with 0, 18
                if sha3(mem[_1772 + 32 len mem[_1772]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1434 % 1) + 71 > !((_1434 % 1) + 75):
                    revert with 0, 17
                mem[v] = (sha3(mem[_1772 + 32 len mem[_1772]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1434 % 1) + 71) + (_1434 % 1) + 75
            else:
                if mem[u + ceil32(return_data.size) + 64] >= 5 * 10^6:
                    _1040 = mem[64]
                    mem[mem[64] + 32] = block.difficulty
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 96
                    _1049 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = mem[64] + 160
                    u = mem[64] + (32 * _1049) + 160
                    while idx < _1049:
                        mem[t] = u + -_1040 - 160
                        _1399 = mem[s]
                        _1431 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1431:
                            mem[v + u + 32] = mem[v + _1399 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1431) > _1431:
                            mem[_1431 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1431) + u + 32
                        continue 
                    _1428 = mem[64]
                    mem[mem[64]] = u + -mem[64] - 32
                    mem[64] = u
                    _1430 = sha3(mem[_1428 + 32 len mem[_1428]])
                    if bool(sha3(mem[_1428 + 32 len mem[_1428]])) > -5:
                        revert with 0, 17
                    if 70 > !(bool(sha3(mem[_1428 + 32 len mem[_1428]])) + 4):
                        revert with 0, 17
                    if 145 < _566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                        revert with 0, 17
                    if -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < bool(sha3(mem[_1428 + 32 len mem[_1428]])) + 74:
                        revert with 0, 17
                    if 1 > !(-(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(sha3(mem[_1428 + 32 len mem[_1428]])) + 71):
                        revert with 0, 17
                    mem[u + 32] = block.difficulty
                    mem[u + 64] = block.timestamp
                    mem[u + 96] = 96
                    _1539 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = u + 160
                    v = u + (32 * _1539) + 160
                    while idx < _1539:
                        mem[t] = v + -u - 160
                        _1722 = mem[s]
                        _1771 = mem[mem[s]]
                        mem[v] = mem[mem[s]]
                        u = 0
                        while u < _1771:
                            mem[u + v + 32] = mem[u + _1722 + 32]
                            u = u + 32
                            continue 
                        if ceil32(_1771) > _1771:
                            mem[_1771 + v + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        v = ceil32(_1771) + v + 32
                        continue 
                    _1768 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    if not -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1430) + 72:
                        revert with 0, 18
                    if sha3(mem[_1768 + 32 len mem[_1768]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1430) + 72 > !(bool(_1430) + 74):
                        revert with 0, 17
                    mem[v] = (sha3(mem[_1768 + 32 len mem[_1768]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1430) + 72) + bool(_1430) + 74
                else:
                    if mem[u + ceil32(return_data.size) + 64] >= 10^6:
                        _1048 = mem[64]
                        mem[mem[64] + 32] = block.difficulty
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 96
                        _1058 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = mem[64] + 160
                        u = mem[64] + (32 * _1058) + 160
                        while idx < _1058:
                            mem[t] = u + -_1048 - 160
                            _1398 = mem[s]
                            _1427 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _1427:
                                mem[v + u + 32] = mem[v + _1398 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_1427) > _1427:
                                mem[_1427 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_1427) + u + 32
                            continue 
                        _1424 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        _1426 = sha3(mem[_1424 + 32 len mem[_1424]])
                        if sha3(mem[_1424 + 32 len mem[_1424]]) % 3 > -4:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_1424 + 32 len mem[_1424]]) % 3) + 3):
                            revert with 0, 17
                        if 145 < _566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                            revert with 0, 17
                        if -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1424 + 32 len mem[_1424]]) % 3) + 73:
                            revert with 0, 17
                        if 1 > !(-(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1424 + 32 len mem[_1424]]) % 3) + 72):
                            revert with 0, 17
                        mem[u + 32] = block.difficulty
                        mem[u + 64] = block.timestamp
                        mem[u + 96] = 96
                        _1538 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = u + 160
                        v = u + (32 * _1538) + 160
                        while idx < _1538:
                            mem[t] = v + -u - 160
                            _1720 = mem[s]
                            _1767 = mem[mem[s]]
                            mem[v] = mem[mem[s]]
                            u = 0
                            while u < _1767:
                                mem[u + v + 32] = mem[u + _1720 + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1767) > _1767:
                                mem[_1767 + v + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            v = ceil32(_1767) + v + 32
                            continue 
                        _1764 = mem[64]
                        mem[mem[64]] = v + -mem[64] - 32
                        mem[64] = v
                        if not -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1426 % 3) + 73:
                            revert with 0, 18
                        if sha3(mem[_1764 + 32 len mem[_1764]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1426 % 3) + 73 > !((_1426 % 3) + 73):
                            revert with 0, 17
                        mem[v] = (sha3(mem[_1764 + 32 len mem[_1764]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1426 % 3) + 73) + (_1426 % 3) + 73
                    else:
                        if mem[u + ceil32(return_data.size) + 64] < 500000:
                            _1056 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1072 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + 160
                            u = mem[64] + (32 * _1072) + 160
                            while idx < _1072:
                                mem[t] = u + -_1056 - 160
                                _1396 = mem[s]
                                _1419 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _1419:
                                    mem[v + u + 32] = mem[v + _1396 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1419) > _1419:
                                    mem[_1419 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_1419) + u + 32
                                continue 
                            _1416 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            _1418 = sha3(mem[_1416 + 32 len mem[_1416]])
                            if sha3(mem[_1416 + 32 len mem[_1416]]) % 5 > -2:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1416 + 32 len mem[_1416]]) % 5) + 1):
                                revert with 0, 17
                            if 145 < _566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                                revert with 0, 17
                            if -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1416 + 32 len mem[_1416]]) % 5) + 71:
                                revert with 0, 17
                            if 1 > !(-(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1416 + 32 len mem[_1416]]) % 5) + 74):
                                revert with 0, 17
                            mem[u + 32] = block.difficulty
                            mem[u + 64] = block.timestamp
                            mem[u + 96] = 96
                            _1536 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = u + 160
                            v = u + (32 * _1536) + 160
                            while idx < _1536:
                                mem[t] = v + -u - 160
                                _1716 = mem[s]
                                _1759 = mem[mem[s]]
                                mem[v] = mem[mem[s]]
                                u = 0
                                while u < _1759:
                                    mem[u + v + 32] = mem[u + _1716 + 32]
                                    u = u + 32
                                    continue 
                                if ceil32(_1759) > _1759:
                                    mem[_1759 + v + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                v = ceil32(_1759) + v + 32
                                continue 
                            _1756 = mem[64]
                            mem[mem[64]] = v + -mem[64] - 32
                            mem[64] = v
                            if not -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1418 % 5) + 75:
                                revert with 0, 18
                            if sha3(mem[_1756 + 32 len mem[_1756]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1418 % 5) + 75 > !((_1418 % 5) + 71):
                                revert with 0, 17
                            mem[v] = (sha3(mem[_1756 + 32 len mem[_1756]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1418 % 5) + 75) + (_1418 % 5) + 71
                        else:
                            _1057 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1073 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + 160
                            u = mem[64] + (32 * _1073) + 160
                            while idx < _1073:
                                mem[t] = u + -_1057 - 160
                                _1397 = mem[s]
                                _1423 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _1423:
                                    mem[v + u + 32] = mem[v + _1397 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1423) > _1423:
                                    mem[_1423 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_1423) + u + 32
                                continue 
                            _1420 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            _1422 = sha3(mem[_1420 + 32 len mem[_1420]])
                            if sha3(mem[_1420 + 32 len mem[_1420]]) % 4 > -3:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1420 + 32 len mem[_1420]]) % 4) + 2):
                                revert with 0, 17
                            if 145 < _566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                                revert with 0, 17
                            if -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1420 + 32 len mem[_1420]]) % 4) + 72:
                                revert with 0, 17
                            if 1 > !(-(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1420 + 32 len mem[_1420]]) % 4) + 73):
                                revert with 0, 17
                            mem[u + 32] = block.difficulty
                            mem[u + 64] = block.timestamp
                            mem[u + 96] = 96
                            _1537 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = u + 160
                            v = u + (32 * _1537) + 160
                            while idx < _1537:
                                mem[t] = v + -u - 160
                                _1718 = mem[s]
                                _1763 = mem[mem[s]]
                                mem[v] = mem[mem[s]]
                                u = 0
                                while u < _1763:
                                    mem[u + v + 32] = mem[u + _1718 + 32]
                                    u = u + 32
                                    continue 
                                if ceil32(_1763) > _1763:
                                    mem[_1763 + v + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                v = ceil32(_1763) + v + 32
                                continue 
                            _1760 = mem[64]
                            mem[mem[64]] = v + -mem[64] - 32
                            mem[64] = v
                            if not -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1422 % 4) + 74:
                                revert with 0, 18
                            if sha3(mem[_1760 + 32 len mem[_1760]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1422 % 4) + 74 > !((_1422 % 4) + 72):
                                revert with 0, 17
                            mem[v] = (sha3(mem[_1760 + 32 len mem[_1760]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1422 % 4) + 74) + (_1422 % 4) + 72
        else:
            mem[_594 + u + ceil32(return_data.size) + 320] = 0
            mem[u + ceil32(return_data.size)] = u + ceil32(return_data.size) + 288
            mem[u + ceil32(return_data.size) + 32] = mem[u + _588 + 32]
            mem[u + ceil32(return_data.size) + 64] = mem[u + _588 + 64]
            mem[u + ceil32(return_data.size) + 96] = mem[u + _588 + 96]
            mem[u + ceil32(return_data.size) + 128] = mem[u + _588 + 128]
            mem[u + ceil32(return_data.size) + 160] = mem[u + _588 + 160]
            mem[u + ceil32(return_data.size) + 192] = mem[u + _588 + 192]
            require mem[u + _588 + 224] < 6
            mem[u + ceil32(return_data.size) + 224] = mem[u + _588 + 224]
            require mem[u + _588 + 256] < 6
            mem[u + ceil32(return_data.size) + 256] = mem[u + _588 + 256]
            if mem[u + ceil32(return_data.size) + 64] >= 10 * 10^6:
                _1037 = mem[64]
                mem[mem[64] + 32] = block.difficulty
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = 96
                _1043 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = mem[64] + 160
                u = mem[64] + (32 * _1043) + 160
                while idx < _1043:
                    mem[t] = u + -_1037 - 160
                    _1405 = mem[s]
                    _1455 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _1455:
                        mem[v + u + 32] = mem[v + _1405 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1455) > _1455:
                        mem[_1455 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_1455) + u + 32
                    continue 
                _1452 = mem[64]
                mem[mem[64]] = u + -mem[64] - 32
                mem[64] = u
                _1454 = sha3(mem[_1452 + 32 len mem[_1452]])
                if sha3(mem[_1452 + 32 len mem[_1452]]) % 1 > -6:
                    revert with 0, 17
                if 70 > !((sha3(mem[_1452 + 32 len mem[_1452]]) % 1) + 5):
                    revert with 0, 17
                if 145 < _566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                    revert with 0, 17
                if -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1452 + 32 len mem[_1452]]) % 1) + 75:
                    revert with 0, 17
                if 1 > !(-(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1452 + 32 len mem[_1452]]) % 1) + 70):
                    revert with 0, 17
                mem[u + 32] = block.difficulty
                mem[u + 64] = block.timestamp
                mem[u + 96] = 96
                _1545 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = u + 160
                v = u + (32 * _1545) + 160
                while idx < _1545:
                    mem[t] = v + -u - 160
                    _1734 = mem[s]
                    _1795 = mem[mem[s]]
                    mem[v] = mem[mem[s]]
                    u = 0
                    while u < _1795:
                        mem[u + v + 32] = mem[u + _1734 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_1795) > _1795:
                        mem[_1795 + v + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    v = ceil32(_1795) + v + 32
                    continue 
                _1792 = mem[64]
                mem[mem[64]] = v + -mem[64] - 32
                mem[64] = v
                if not -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1454 % 1) + 71:
                    revert with 0, 18
                if sha3(mem[_1792 + 32 len mem[_1792]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1454 % 1) + 71 > !((_1454 % 1) + 75):
                    revert with 0, 17
                mem[v] = (sha3(mem[_1792 + 32 len mem[_1792]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1454 % 1) + 71) + (_1454 % 1) + 75
            else:
                if mem[u + ceil32(return_data.size) + 64] >= 5 * 10^6:
                    _1042 = mem[64]
                    mem[mem[64] + 32] = block.difficulty
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = 96
                    _1051 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = mem[64] + 160
                    u = mem[64] + (32 * _1051) + 160
                    while idx < _1051:
                        mem[t] = u + -_1042 - 160
                        _1404 = mem[s]
                        _1451 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _1451:
                            mem[v + u + 32] = mem[v + _1404 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1451) > _1451:
                            mem[_1451 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_1451) + u + 32
                        continue 
                    _1448 = mem[64]
                    mem[mem[64]] = u + -mem[64] - 32
                    mem[64] = u
                    _1450 = sha3(mem[_1448 + 32 len mem[_1448]])
                    if bool(sha3(mem[_1448 + 32 len mem[_1448]])) > -5:
                        revert with 0, 17
                    if 70 > !(bool(sha3(mem[_1448 + 32 len mem[_1448]])) + 4):
                        revert with 0, 17
                    if 145 < _566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                        revert with 0, 17
                    if -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < bool(sha3(mem[_1448 + 32 len mem[_1448]])) + 74:
                        revert with 0, 17
                    if 1 > !(-(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(sha3(mem[_1448 + 32 len mem[_1448]])) + 71):
                        revert with 0, 17
                    mem[u + 32] = block.difficulty
                    mem[u + 64] = block.timestamp
                    mem[u + 96] = 96
                    _1544 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = u + 160
                    v = u + (32 * _1544) + 160
                    while idx < _1544:
                        mem[t] = v + -u - 160
                        _1732 = mem[s]
                        _1791 = mem[mem[s]]
                        mem[v] = mem[mem[s]]
                        u = 0
                        while u < _1791:
                            mem[u + v + 32] = mem[u + _1732 + 32]
                            u = u + 32
                            continue 
                        if ceil32(_1791) > _1791:
                            mem[_1791 + v + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        v = ceil32(_1791) + v + 32
                        continue 
                    _1788 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    if not -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1450) + 72:
                        revert with 0, 18
                    if sha3(mem[_1788 + 32 len mem[_1788]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1450) + 72 > !(bool(_1450) + 74):
                        revert with 0, 17
                    mem[v] = (sha3(mem[_1788 + 32 len mem[_1788]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_1450) + 72) + bool(_1450) + 74
                else:
                    if mem[u + ceil32(return_data.size) + 64] >= 10^6:
                        _1050 = mem[64]
                        mem[mem[64] + 32] = block.difficulty
                        mem[mem[64] + 64] = block.timestamp
                        mem[mem[64] + 96] = 96
                        _1062 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = mem[64] + 160
                        u = mem[64] + (32 * _1062) + 160
                        while idx < _1062:
                            mem[t] = u + -_1050 - 160
                            _1403 = mem[s]
                            _1447 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _1447:
                                mem[v + u + 32] = mem[v + _1403 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_1447) > _1447:
                                mem[_1447 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_1447) + u + 32
                            continue 
                        _1444 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        _1446 = sha3(mem[_1444 + 32 len mem[_1444]])
                        if sha3(mem[_1444 + 32 len mem[_1444]]) % 3 > -4:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_1444 + 32 len mem[_1444]]) % 3) + 3):
                            revert with 0, 17
                        if 145 < _566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                            revert with 0, 17
                        if -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1444 + 32 len mem[_1444]]) % 3) + 73:
                            revert with 0, 17
                        if 1 > !(-(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1444 + 32 len mem[_1444]]) % 3) + 72):
                            revert with 0, 17
                        mem[u + 32] = block.difficulty
                        mem[u + 64] = block.timestamp
                        mem[u + 96] = 96
                        _1543 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = u + 160
                        v = u + (32 * _1543) + 160
                        while idx < _1543:
                            mem[t] = v + -u - 160
                            _1730 = mem[s]
                            _1787 = mem[mem[s]]
                            mem[v] = mem[mem[s]]
                            u = 0
                            while u < _1787:
                                mem[u + v + 32] = mem[u + _1730 + 32]
                                u = u + 32
                                continue 
                            if ceil32(_1787) > _1787:
                                mem[_1787 + v + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            v = ceil32(_1787) + v + 32
                            continue 
                        _1784 = mem[64]
                        mem[mem[64]] = v + -mem[64] - 32
                        mem[64] = v
                        if not -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1446 % 3) + 73:
                            revert with 0, 18
                        if sha3(mem[_1784 + 32 len mem[_1784]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1446 % 3) + 73 > !((_1446 % 3) + 73):
                            revert with 0, 17
                        mem[v] = (sha3(mem[_1784 + 32 len mem[_1784]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1446 % 3) + 73) + (_1446 % 3) + 73
                    else:
                        if mem[u + ceil32(return_data.size) + 64] < 500000:
                            _1060 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1079 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + 160
                            u = mem[64] + (32 * _1079) + 160
                            while idx < _1079:
                                mem[t] = u + -_1060 - 160
                                _1401 = mem[s]
                                _1439 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _1439:
                                    mem[v + u + 32] = mem[v + _1401 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1439) > _1439:
                                    mem[_1439 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_1439) + u + 32
                                continue 
                            _1436 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            _1438 = sha3(mem[_1436 + 32 len mem[_1436]])
                            if sha3(mem[_1436 + 32 len mem[_1436]]) % 5 > -2:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1436 + 32 len mem[_1436]]) % 5) + 1):
                                revert with 0, 17
                            if 145 < _566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                                revert with 0, 17
                            if -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1436 + 32 len mem[_1436]]) % 5) + 71:
                                revert with 0, 17
                            if 1 > !(-(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1436 + 32 len mem[_1436]]) % 5) + 74):
                                revert with 0, 17
                            mem[u + 32] = block.difficulty
                            mem[u + 64] = block.timestamp
                            mem[u + 96] = 96
                            _1541 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = u + 160
                            v = u + (32 * _1541) + 160
                            while idx < _1541:
                                mem[t] = v + -u - 160
                                _1726 = mem[s]
                                _1779 = mem[mem[s]]
                                mem[v] = mem[mem[s]]
                                u = 0
                                while u < _1779:
                                    mem[u + v + 32] = mem[u + _1726 + 32]
                                    u = u + 32
                                    continue 
                                if ceil32(_1779) > _1779:
                                    mem[_1779 + v + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                v = ceil32(_1779) + v + 32
                                continue 
                            _1776 = mem[64]
                            mem[mem[64]] = v + -mem[64] - 32
                            mem[64] = v
                            if not -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1438 % 5) + 75:
                                revert with 0, 18
                            if sha3(mem[_1776 + 32 len mem[_1776]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1438 % 5) + 75 > !((_1438 % 5) + 71):
                                revert with 0, 17
                            mem[v] = (sha3(mem[_1776 + 32 len mem[_1776]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1438 % 5) + 75) + (_1438 % 5) + 71
                        else:
                            _1061 = mem[64]
                            mem[mem[64] + 32] = block.difficulty
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = 96
                            _1080 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = mem[64] + 160
                            u = mem[64] + (32 * _1080) + 160
                            while idx < _1080:
                                mem[t] = u + -_1061 - 160
                                _1402 = mem[s]
                                _1443 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _1443:
                                    mem[v + u + 32] = mem[v + _1402 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1443) > _1443:
                                    mem[_1443 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_1443) + u + 32
                                continue 
                            _1440 = mem[64]
                            mem[mem[64]] = u + -mem[64] - 32
                            mem[64] = u
                            _1442 = sha3(mem[_1440 + 32 len mem[_1440]])
                            if sha3(mem[_1440 + 32 len mem[_1440]]) % 4 > -3:
                                revert with 0, 17
                            if 70 > !((sha3(mem[_1440 + 32 len mem[_1440]]) % 4) + 2):
                                revert with 0, 17
                            if 145 < _566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                                revert with 0, 17
                            if -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_1440 + 32 len mem[_1440]]) % 4) + 72:
                                revert with 0, 17
                            if 1 > !(-(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_1440 + 32 len mem[_1440]]) % 4) + 73):
                                revert with 0, 17
                            mem[u + 32] = block.difficulty
                            mem[u + 64] = block.timestamp
                            mem[u + 96] = 96
                            _1542 = mem[(2 * ceil32(return_data.size)) + 224]
                            mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 256
                            t = u + 160
                            v = u + (32 * _1542) + 160
                            while idx < _1542:
                                mem[t] = v + -u - 160
                                _1728 = mem[s]
                                _1783 = mem[mem[s]]
                                mem[v] = mem[mem[s]]
                                u = 0
                                while u < _1783:
                                    mem[u + v + 32] = mem[u + _1728 + 32]
                                    u = u + 32
                                    continue 
                                if ceil32(_1783) > _1783:
                                    mem[_1783 + v + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                v = ceil32(_1783) + v + 32
                                continue 
                            _1780 = mem[64]
                            mem[mem[64]] = v + -mem[64] - 32
                            mem[64] = v
                            if not -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1442 % 4) + 74:
                                revert with 0, 18
                            if sha3(mem[_1780 + 32 len mem[_1780]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1442 % 4) + 74 > !((_1442 % 4) + 72):
                                revert with 0, 17
                            mem[v] = (sha3(mem[_1780 + 32 len mem[_1780]]) % -(_566 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_1442 % 4) + 74) + (_1442 % 4) + 72
    return memory
      from v
       len 32
}



}
