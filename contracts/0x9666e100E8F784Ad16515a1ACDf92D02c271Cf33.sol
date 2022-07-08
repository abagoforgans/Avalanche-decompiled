contract main {




// =====================  Runtime code  =====================


#
#  - sub_a633b2f2(?)
#
address owner;
address stor1;
address stor2;
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

function sub_71f02764(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
    stor2 = address(arg2)
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

function sub_54ab5ba7(?) payable {
    mem[0] = msg.sender
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'Not allowed'
    require ext_code.size(stor1)
    staticcall stor1.getCurrentTokenId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 5:
        mem[ceil32(return_data.size) + 96] = 0xcc72ba0f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = 1
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        staticcall stor2.0xcc72ba0f with:
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
        require ext_code.size(stor2)
        staticcall stor2.0xcc72ba0f with:
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
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'Not allowed'
    require ext_code.size(stor1)
    staticcall stor1.getCurrentTokenId() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 5:
        mem[ceil32(return_data.size) + 96] = 0xcc72ba0f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = 1
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        staticcall stor2.0xcc72ba0f with:
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
        require ext_code.size(stor2)
        staticcall stor2.0xcc72ba0f with:
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
    if arg2 > 1:
        revert with 0, 33
    mem[96] = 0x36dac2cc00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor1)
    staticcall stor1.getMeta(uint256 arg1) with:
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
            require ext_code.size(stor1)
            if 0 == arg2:
                staticcall stor1.0x146daff4 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_139]
            else:
                staticcall stor1.0xe5d76232 with:
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
            require ext_code.size(stor1)
            if mem[ceil32(return_data.size) + 352] != 4:
                if 0 == arg2:
                    staticcall stor1.0x6f8f1ceb with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _151 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_151]
                else:
                    staticcall stor1.0xae55ae5 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _152 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_152]
            else:
                if 0 == arg2:
                    staticcall stor1.0x19a41ea9 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _153 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_153]
                else:
                    staticcall stor1.0x1ec4a4a8 with:
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
            require ext_code.size(stor1)
            if 0 == arg2:
                staticcall stor1.0x146daff4 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _149 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = mem[_149]
            else:
                staticcall stor1.0xe5d76232 with:
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
            require ext_code.size(stor1)
            if mem[ceil32(return_data.size) + 352] != 4:
                if 0 == arg2:
                    staticcall stor1.0x6f8f1ceb with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_157]
                else:
                    staticcall stor1.0xae55ae5 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _158 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_158]
            else:
                if 0 == arg2:
                    staticcall stor1.0x19a41ea9 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = mem[_159]
                else:
                    staticcall stor1.0x1ec4a4a8 with:
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
    staticcall stor1.getCurrentTokenId() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 5:
        mem[ceil32(return_data.size) + 224] = 0xcc72ba0f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = 1
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        require ext_code.size(stor2)
        staticcall stor2.0xcc72ba0f with:
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
                    _345 = mem[(32 * uint8(idx)) + 96]
                    if uint8(s) >= 4:
                        revert with 0, 50
                    if uint8(idx) >= 4:
                        revert with 0, 50
                    mem[(32 * uint8(idx)) + 96] = mem[(32 * uint8(s)) + 127 len 1]
                    if uint8(s) >= 4:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 96] = uint8(_345)
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
            _329 = mem[s]
            _338 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _338:
                mem[v + u + 32] = mem[v + _329 + 32]
                v = v + 32
                continue 
            if ceil32(_338) > _338:
                mem[_338 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_338) + u + 32
            continue 
        _335 = mem[64]
        mem[mem[64]] = u + -mem[64] - 32
        mem[64] = u
        _337 = sha3(mem[_335 + 32 len mem[_335]])
        if not -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
            revert with 0, 18
        mem[u + 32] = block.difficulty
        mem[u + 64] = block.timestamp
        mem[u + 96] = 96
        if cd[4] >= 10 * 10^6:
            _353 = mem[(2 * ceil32(return_data.size)) + 224]
            mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 256
            t = u + 160
            v = u + (32 * _353) + 160
            while idx < _353:
                mem[t] = v + -u - 160
                _538 = mem[s]
                _579 = mem[mem[s]]
                mem[v] = mem[mem[s]]
                u = 0
                while u < _579:
                    mem[u + v + 32] = mem[u + _538 + 32]
                    u = u + 32
                    continue 
                if ceil32(_579) > _579:
                    mem[_579 + v + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                v = ceil32(_579) + v + 32
                continue 
            _576 = mem[64]
            mem[mem[64]] = v + -mem[64] - 32
            mem[64] = v
            _578 = sha3(mem[_576 + 32 len mem[_576]])
            if sha3(mem[_576 + 32 len mem[_576]]) % 1 > -6:
                revert with 0, 17
            if 70 > !((sha3(mem[_576 + 32 len mem[_576]]) % 1) + 5):
                revert with 0, 17
            if 145 < _337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                revert with 0, 17
            if -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_576 + 32 len mem[_576]]) % 1) + 75:
                revert with 0, 17
            if 1 > !(-(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_576 + 32 len mem[_576]]) % 1) + 70):
                revert with 0, 17
            mem[v + 32] = block.difficulty
            mem[v + 64] = block.timestamp
            mem[v + 96] = 96
            _609 = mem[(2 * ceil32(return_data.size)) + 224]
            mem[v + 128] = mem[(2 * ceil32(return_data.size)) + 224]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 256
            t = v + 160
            u = v + (32 * _609) + 160
            while idx < _609:
                mem[t] = u + -v - 160
                _708 = mem[s]
                _749 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _749:
                    mem[v + u + 32] = mem[v + _708 + 32]
                    v = v + 32
                    continue 
                if ceil32(_749) > _749:
                    mem[_749 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_749) + u + 32
                continue 
            _746 = mem[64]
            mem[mem[64]] = u + -mem[64] - 32
            mem[64] = u
            if not -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_578 % 1) + 71:
                revert with 0, 18
            if sha3(mem[_746 + 32 len mem[_746]]) % -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_578 % 1) + 71 > !((_578 % 1) + 75):
                revert with 0, 17
            mem[u] = (sha3(mem[_746 + 32 len mem[_746]]) % -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_578 % 1) + 71) + (_578 % 1) + 75
        else:
            if cd[4] >= 5 * 10^6:
                _357 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = u + 160
                v = u + (32 * _357) + 160
                while idx < _357:
                    mem[t] = v + -u - 160
                    _537 = mem[s]
                    _575 = mem[mem[s]]
                    mem[v] = mem[mem[s]]
                    u = 0
                    while u < _575:
                        mem[u + v + 32] = mem[u + _537 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_575) > _575:
                        mem[_575 + v + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    v = ceil32(_575) + v + 32
                    continue 
                _572 = mem[64]
                mem[mem[64]] = v + -mem[64] - 32
                mem[64] = v
                _574 = sha3(mem[_572 + 32 len mem[_572]])
                if bool(sha3(mem[_572 + 32 len mem[_572]])) > -5:
                    revert with 0, 17
                if 70 > !(bool(sha3(mem[_572 + 32 len mem[_572]])) + 4):
                    revert with 0, 17
                if 145 < _337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                    revert with 0, 17
                if -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < bool(sha3(mem[_572 + 32 len mem[_572]])) + 74:
                    revert with 0, 17
                if 1 > !(-(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(sha3(mem[_572 + 32 len mem[_572]])) + 71):
                    revert with 0, 17
                mem[v + 32] = block.difficulty
                mem[v + 64] = block.timestamp
                mem[v + 96] = 96
                _608 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[v + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = v + 160
                u = v + (32 * _608) + 160
                while idx < _608:
                    mem[t] = u + -v - 160
                    _706 = mem[s]
                    _745 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _745:
                        mem[v + u + 32] = mem[v + _706 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_745) > _745:
                        mem[_745 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_745) + u + 32
                    continue 
                _742 = mem[64]
                mem[mem[64]] = u + -mem[64] - 32
                mem[64] = u
                if not -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_574) + 72:
                    revert with 0, 18
                if sha3(mem[_742 + 32 len mem[_742]]) % -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_574) + 72 > !(bool(_574) + 74):
                    revert with 0, 17
                mem[u] = (sha3(mem[_742 + 32 len mem[_742]]) % -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -bool(_574) + 72) + bool(_574) + 74
            else:
                if cd[4] >= 10^6:
                    _364 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = u + 160
                    v = u + (32 * _364) + 160
                    while idx < _364:
                        mem[t] = v + -u - 160
                        _536 = mem[s]
                        _571 = mem[mem[s]]
                        mem[v] = mem[mem[s]]
                        u = 0
                        while u < _571:
                            mem[u + v + 32] = mem[u + _536 + 32]
                            u = u + 32
                            continue 
                        if ceil32(_571) > _571:
                            mem[_571 + v + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        v = ceil32(_571) + v + 32
                        continue 
                    _568 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    _570 = sha3(mem[_568 + 32 len mem[_568]])
                    if sha3(mem[_568 + 32 len mem[_568]]) % 3 > -4:
                        revert with 0, 17
                    if 70 > !((sha3(mem[_568 + 32 len mem[_568]]) % 3) + 3):
                        revert with 0, 17
                    if 145 < _337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                        revert with 0, 17
                    if -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_568 + 32 len mem[_568]]) % 3) + 73:
                        revert with 0, 17
                    if 1 > !(-(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_568 + 32 len mem[_568]]) % 3) + 72):
                        revert with 0, 17
                    mem[v + 32] = block.difficulty
                    mem[v + 64] = block.timestamp
                    mem[v + 96] = 96
                    _607 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[v + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = v + 160
                    u = v + (32 * _607) + 160
                    while idx < _607:
                        mem[t] = u + -v - 160
                        _704 = mem[s]
                        _741 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _741:
                            mem[v + u + 32] = mem[v + _704 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_741) > _741:
                            mem[_741 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_741) + u + 32
                        continue 
                    _738 = mem[64]
                    mem[mem[64]] = u + -mem[64] - 32
                    mem[64] = u
                    if not -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_570 % 3) + 73:
                        revert with 0, 18
                    if sha3(mem[_738 + 32 len mem[_738]]) % -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_570 % 3) + 73 > !((_570 % 3) + 73):
                        revert with 0, 17
                    mem[u] = (sha3(mem[_738 + 32 len mem[_738]]) % -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_570 % 3) + 73) + (_570 % 3) + 73
                else:
                    if cd[4] < 500000:
                        _373 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = u + 160
                        v = u + (32 * _373) + 160
                        while idx < _373:
                            mem[t] = v + -u - 160
                            _534 = mem[s]
                            _563 = mem[mem[s]]
                            mem[v] = mem[mem[s]]
                            u = 0
                            while u < _563:
                                mem[u + v + 32] = mem[u + _534 + 32]
                                u = u + 32
                                continue 
                            if ceil32(_563) > _563:
                                mem[_563 + v + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            v = ceil32(_563) + v + 32
                            continue 
                        _560 = mem[64]
                        mem[mem[64]] = v + -mem[64] - 32
                        mem[64] = v
                        _562 = sha3(mem[_560 + 32 len mem[_560]])
                        if sha3(mem[_560 + 32 len mem[_560]]) % 5 > -2:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_560 + 32 len mem[_560]]) % 5) + 1):
                            revert with 0, 17
                        if 145 < _337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                            revert with 0, 17
                        if -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_560 + 32 len mem[_560]]) % 5) + 71:
                            revert with 0, 17
                        if 1 > !(-(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_560 + 32 len mem[_560]]) % 5) + 74):
                            revert with 0, 17
                        mem[v + 32] = block.difficulty
                        mem[v + 64] = block.timestamp
                        mem[v + 96] = 96
                        _605 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[v + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = v + 160
                        u = v + (32 * _605) + 160
                        while idx < _605:
                            mem[t] = u + -v - 160
                            _700 = mem[s]
                            _733 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _733:
                                mem[v + u + 32] = mem[v + _700 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_733) > _733:
                                mem[_733 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_733) + u + 32
                            continue 
                        _730 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        if not -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_562 % 5) + 75:
                            revert with 0, 18
                        if sha3(mem[_730 + 32 len mem[_730]]) % -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_562 % 5) + 75 > !((_562 % 5) + 71):
                            revert with 0, 17
                        mem[u] = (sha3(mem[_730 + 32 len mem[_730]]) % -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_562 % 5) + 75) + (_562 % 5) + 71
                    else:
                        _374 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = u + 160
                        v = u + (32 * _374) + 160
                        while idx < _374:
                            mem[t] = v + -u - 160
                            _535 = mem[s]
                            _567 = mem[mem[s]]
                            mem[v] = mem[mem[s]]
                            u = 0
                            while u < _567:
                                mem[u + v + 32] = mem[u + _535 + 32]
                                u = u + 32
                                continue 
                            if ceil32(_567) > _567:
                                mem[_567 + v + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            v = ceil32(_567) + v + 32
                            continue 
                        _564 = mem[64]
                        mem[mem[64]] = v + -mem[64] - 32
                        mem[64] = v
                        _566 = sha3(mem[_564 + 32 len mem[_564]])
                        if sha3(mem[_564 + 32 len mem[_564]]) % 4 > -3:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_564 + 32 len mem[_564]]) % 4) + 2):
                            revert with 0, 17
                        if 145 < _337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31:
                            revert with 0, 17
                        if -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + 145 < (sha3(mem[_564 + 32 len mem[_564]]) % 4) + 72:
                            revert with 0, 17
                        if 1 > !(-(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(sha3(mem[_564 + 32 len mem[_564]]) % 4) + 73):
                            revert with 0, 17
                        mem[v + 32] = block.difficulty
                        mem[v + 64] = block.timestamp
                        mem[v + 96] = 96
                        _606 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[v + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = v + 160
                        u = v + (32 * _606) + 160
                        while idx < _606:
                            mem[t] = u + -v - 160
                            _702 = mem[s]
                            _737 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _737:
                                mem[v + u + 32] = mem[v + _702 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_737) > _737:
                                mem[_737 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_737) + u + 32
                            continue 
                        _734 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        if not -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_566 % 4) + 74:
                            revert with 0, 18
                        if sha3(mem[_734 + 32 len mem[_734]]) % -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_566 % 4) + 74 > !((_566 % 4) + 72):
                            revert with 0, 17
                        mem[u] = (sha3(mem[_734 + 32 len mem[_734]]) % -(_337 % -(uint8(uint8(_121) + uint8(_122)) / 2) + 31) + -(_566 % 4) + 74) + (_566 % 4) + 72
    else:
        if ext_call.return_data[0] < 5:
            revert with 0, 17
        if 1 > !(ext_call.return_data[0] - 5):
            revert with 0, 17
        mem[ceil32(return_data.size) + 224] = 0xcc72ba0f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = ext_call.return_data[0] - 4
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        require ext_code.size(stor2)
        staticcall stor2.0xcc72ba0f with:
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
                    _343 = mem[(32 * uint8(idx)) + 96]
                    if uint8(s) >= 4:
                        revert with 0, 50
                    if uint8(idx) >= 4:
                        revert with 0, 50
                    mem[(32 * uint8(idx)) + 96] = mem[(32 * uint8(s)) + 127 len 1]
                    if uint8(s) >= 4:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 96] = uint8(_343)
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
            _328 = mem[s]
            _333 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _333:
                mem[v + u + 32] = mem[v + _328 + 32]
                v = v + 32
                continue 
            if ceil32(_333) > _333:
                mem[_333 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_333) + u + 32
            continue 
        _330 = mem[64]
        mem[mem[64]] = u + -mem[64] - 32
        mem[64] = u
        _332 = sha3(mem[_330 + 32 len mem[_330]])
        if not -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
            revert with 0, 18
        mem[u + 32] = block.difficulty
        mem[u + 64] = block.timestamp
        mem[u + 96] = 96
        if cd[4] >= 10 * 10^6:
            _351 = mem[(2 * ceil32(return_data.size)) + 224]
            mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 256
            t = u + 160
            v = u + (32 * _351) + 160
            while idx < _351:
                mem[t] = v + -u - 160
                _532 = mem[s]
                _559 = mem[mem[s]]
                mem[v] = mem[mem[s]]
                u = 0
                while u < _559:
                    mem[u + v + 32] = mem[u + _532 + 32]
                    u = u + 32
                    continue 
                if ceil32(_559) > _559:
                    mem[_559 + v + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                v = ceil32(_559) + v + 32
                continue 
            _556 = mem[64]
            mem[mem[64]] = v + -mem[64] - 32
            mem[64] = v
            _558 = sha3(mem[_556 + 32 len mem[_556]])
            if sha3(mem[_556 + 32 len mem[_556]]) % 1 > -6:
                revert with 0, 17
            if 70 > !((sha3(mem[_556 + 32 len mem[_556]]) % 1) + 5):
                revert with 0, 17
            if 145 < _332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                revert with 0, 17
            if -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_556 + 32 len mem[_556]]) % 1) + 75:
                revert with 0, 17
            if 1 > !(-(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_556 + 32 len mem[_556]]) % 1) + 70):
                revert with 0, 17
            mem[v + 32] = block.difficulty
            mem[v + 64] = block.timestamp
            mem[v + 96] = 96
            _604 = mem[(2 * ceil32(return_data.size)) + 224]
            mem[v + 128] = mem[(2 * ceil32(return_data.size)) + 224]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 256
            t = v + 160
            u = v + (32 * _604) + 160
            while idx < _604:
                mem[t] = u + -v - 160
                _698 = mem[s]
                _729 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _729:
                    mem[v + u + 32] = mem[v + _698 + 32]
                    v = v + 32
                    continue 
                if ceil32(_729) > _729:
                    mem[_729 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_729) + u + 32
                continue 
            _726 = mem[64]
            mem[mem[64]] = u + -mem[64] - 32
            mem[64] = u
            if not -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_558 % 1) + 71:
                revert with 0, 18
            if sha3(mem[_726 + 32 len mem[_726]]) % -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_558 % 1) + 71 > !((_558 % 1) + 75):
                revert with 0, 17
            mem[u] = (sha3(mem[_726 + 32 len mem[_726]]) % -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_558 % 1) + 71) + (_558 % 1) + 75
        else:
            if cd[4] >= 5 * 10^6:
                _355 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = u + 160
                v = u + (32 * _355) + 160
                while idx < _355:
                    mem[t] = v + -u - 160
                    _531 = mem[s]
                    _555 = mem[mem[s]]
                    mem[v] = mem[mem[s]]
                    u = 0
                    while u < _555:
                        mem[u + v + 32] = mem[u + _531 + 32]
                        u = u + 32
                        continue 
                    if ceil32(_555) > _555:
                        mem[_555 + v + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    v = ceil32(_555) + v + 32
                    continue 
                _552 = mem[64]
                mem[mem[64]] = v + -mem[64] - 32
                mem[64] = v
                _554 = sha3(mem[_552 + 32 len mem[_552]])
                if bool(sha3(mem[_552 + 32 len mem[_552]])) > -5:
                    revert with 0, 17
                if 70 > !(bool(sha3(mem[_552 + 32 len mem[_552]])) + 4):
                    revert with 0, 17
                if 145 < _332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                    revert with 0, 17
                if -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < bool(sha3(mem[_552 + 32 len mem[_552]])) + 74:
                    revert with 0, 17
                if 1 > !(-(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(sha3(mem[_552 + 32 len mem[_552]])) + 71):
                    revert with 0, 17
                mem[v + 32] = block.difficulty
                mem[v + 64] = block.timestamp
                mem[v + 96] = 96
                _603 = mem[(2 * ceil32(return_data.size)) + 224]
                mem[v + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 256
                t = v + 160
                u = v + (32 * _603) + 160
                while idx < _603:
                    mem[t] = u + -v - 160
                    _696 = mem[s]
                    _725 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _725:
                        mem[v + u + 32] = mem[v + _696 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_725) > _725:
                        mem[_725 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_725) + u + 32
                    continue 
                _722 = mem[64]
                mem[mem[64]] = u + -mem[64] - 32
                mem[64] = u
                if not -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_554) + 72:
                    revert with 0, 18
                if sha3(mem[_722 + 32 len mem[_722]]) % -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_554) + 72 > !(bool(_554) + 74):
                    revert with 0, 17
                mem[u] = (sha3(mem[_722 + 32 len mem[_722]]) % -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -bool(_554) + 72) + bool(_554) + 74
            else:
                if cd[4] >= 10^6:
                    _360 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = u + 160
                    v = u + (32 * _360) + 160
                    while idx < _360:
                        mem[t] = v + -u - 160
                        _530 = mem[s]
                        _551 = mem[mem[s]]
                        mem[v] = mem[mem[s]]
                        u = 0
                        while u < _551:
                            mem[u + v + 32] = mem[u + _530 + 32]
                            u = u + 32
                            continue 
                        if ceil32(_551) > _551:
                            mem[_551 + v + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        v = ceil32(_551) + v + 32
                        continue 
                    _548 = mem[64]
                    mem[mem[64]] = v + -mem[64] - 32
                    mem[64] = v
                    _550 = sha3(mem[_548 + 32 len mem[_548]])
                    if sha3(mem[_548 + 32 len mem[_548]]) % 3 > -4:
                        revert with 0, 17
                    if 70 > !((sha3(mem[_548 + 32 len mem[_548]]) % 3) + 3):
                        revert with 0, 17
                    if 145 < _332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                        revert with 0, 17
                    if -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_548 + 32 len mem[_548]]) % 3) + 73:
                        revert with 0, 17
                    if 1 > !(-(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_548 + 32 len mem[_548]]) % 3) + 72):
                        revert with 0, 17
                    mem[v + 32] = block.difficulty
                    mem[v + 64] = block.timestamp
                    mem[v + 96] = 96
                    _602 = mem[(2 * ceil32(return_data.size)) + 224]
                    mem[v + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 256
                    t = v + 160
                    u = v + (32 * _602) + 160
                    while idx < _602:
                        mem[t] = u + -v - 160
                        _694 = mem[s]
                        _721 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        while v < _721:
                            mem[v + u + 32] = mem[v + _694 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_721) > _721:
                            mem[_721 + u + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = ceil32(_721) + u + 32
                        continue 
                    _718 = mem[64]
                    mem[mem[64]] = u + -mem[64] - 32
                    mem[64] = u
                    if not -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_550 % 3) + 73:
                        revert with 0, 18
                    if sha3(mem[_718 + 32 len mem[_718]]) % -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_550 % 3) + 73 > !((_550 % 3) + 73):
                        revert with 0, 17
                    mem[u] = (sha3(mem[_718 + 32 len mem[_718]]) % -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_550 % 3) + 73) + (_550 % 3) + 73
                else:
                    if cd[4] < 500000:
                        _366 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = u + 160
                        v = u + (32 * _366) + 160
                        while idx < _366:
                            mem[t] = v + -u - 160
                            _528 = mem[s]
                            _543 = mem[mem[s]]
                            mem[v] = mem[mem[s]]
                            u = 0
                            while u < _543:
                                mem[u + v + 32] = mem[u + _528 + 32]
                                u = u + 32
                                continue 
                            if ceil32(_543) > _543:
                                mem[_543 + v + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            v = ceil32(_543) + v + 32
                            continue 
                        _540 = mem[64]
                        mem[mem[64]] = v + -mem[64] - 32
                        mem[64] = v
                        _542 = sha3(mem[_540 + 32 len mem[_540]])
                        if sha3(mem[_540 + 32 len mem[_540]]) % 5 > -2:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_540 + 32 len mem[_540]]) % 5) + 1):
                            revert with 0, 17
                        if 145 < _332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                            revert with 0, 17
                        if -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_540 + 32 len mem[_540]]) % 5) + 71:
                            revert with 0, 17
                        if 1 > !(-(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_540 + 32 len mem[_540]]) % 5) + 74):
                            revert with 0, 17
                        mem[v + 32] = block.difficulty
                        mem[v + 64] = block.timestamp
                        mem[v + 96] = 96
                        _600 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[v + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = v + 160
                        u = v + (32 * _600) + 160
                        while idx < _600:
                            mem[t] = u + -v - 160
                            _690 = mem[s]
                            _713 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _713:
                                mem[v + u + 32] = mem[v + _690 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_713) > _713:
                                mem[_713 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_713) + u + 32
                            continue 
                        _710 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        if not -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_542 % 5) + 75:
                            revert with 0, 18
                        if sha3(mem[_710 + 32 len mem[_710]]) % -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_542 % 5) + 75 > !((_542 % 5) + 71):
                            revert with 0, 17
                        mem[u] = (sha3(mem[_710 + 32 len mem[_710]]) % -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_542 % 5) + 75) + (_542 % 5) + 71
                    else:
                        _367 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[u + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = u + 160
                        v = u + (32 * _367) + 160
                        while idx < _367:
                            mem[t] = v + -u - 160
                            _529 = mem[s]
                            _547 = mem[mem[s]]
                            mem[v] = mem[mem[s]]
                            u = 0
                            while u < _547:
                                mem[u + v + 32] = mem[u + _529 + 32]
                                u = u + 32
                                continue 
                            if ceil32(_547) > _547:
                                mem[_547 + v + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            v = ceil32(_547) + v + 32
                            continue 
                        _544 = mem[64]
                        mem[mem[64]] = v + -mem[64] - 32
                        mem[64] = v
                        _546 = sha3(mem[_544 + 32 len mem[_544]])
                        if sha3(mem[_544 + 32 len mem[_544]]) % 4 > -3:
                            revert with 0, 17
                        if 70 > !((sha3(mem[_544 + 32 len mem[_544]]) % 4) + 2):
                            revert with 0, 17
                        if 145 < _332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31:
                            revert with 0, 17
                        if -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + 145 < (sha3(mem[_544 + 32 len mem[_544]]) % 4) + 72:
                            revert with 0, 17
                        if 1 > !(-(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(sha3(mem[_544 + 32 len mem[_544]]) % 4) + 73):
                            revert with 0, 17
                        mem[v + 32] = block.difficulty
                        mem[v + 64] = block.timestamp
                        mem[v + 96] = 96
                        _601 = mem[(2 * ceil32(return_data.size)) + 224]
                        mem[v + 128] = mem[(2 * ceil32(return_data.size)) + 224]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 256
                        t = v + 160
                        u = v + (32 * _601) + 160
                        while idx < _601:
                            mem[t] = u + -v - 160
                            _692 = mem[s]
                            _717 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            while v < _717:
                                mem[v + u + 32] = mem[v + _692 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_717) > _717:
                                mem[_717 + u + 32] = 0
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_717) + u + 32
                            continue 
                        _714 = mem[64]
                        mem[mem[64]] = u + -mem[64] - 32
                        mem[64] = u
                        if not -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_546 % 4) + 74:
                            revert with 0, 18
                        if sha3(mem[_714 + 32 len mem[_714]]) % -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_546 % 4) + 74 > !((_546 % 4) + 72):
                            revert with 0, 17
                        mem[u] = (sha3(mem[_714 + 32 len mem[_714]]) % -(_332 % -(uint8(uint8(_118) + uint8(_119)) / 2) + 31) + -(_546 % 4) + 74) + (_546 % 4) + 72
    return memory
      from u
       len 32
}



}
