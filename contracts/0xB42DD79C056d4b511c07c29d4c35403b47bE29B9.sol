contract main {




// =====================  Runtime code  =====================


#
#  - privateExit(address arg1, uint256 arg2)
#
uint256 stor0;
array of struct sub_979d9513;
mapping of uint256 sub_3c0f968d;

function sub_3c0f968d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3c0f968d[arg1]
}

function sub_979d9513(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(uint8(sub_979d9513[arg1][arg2].field_0)), 
           sub_979d9513[arg1][arg2].field_0,
           uint256(sub_979d9513[arg1][arg2].field_256),
           uint256(sub_979d9513[arg1][arg2].field_512)
}

function sub_9a3fab74(?) {
    require calldata.size - 4 >= 32
    if bool(uint8(sub_979d9513[msg.sender][arg1].field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PrivateExitModule: Already Disabled'
    uint8(sub_979d9513[msg.sender][arg1].field_0) = 0
    return 1
}

function sub_94f9e86e(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    s = cd[100] + 36
    t = 128
    idx = 0
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 98 < 97 or ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 100).length) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = ceil32(32 * ('cd', 100).length) + 129
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length != ('cd', 132).length:
        revert with 0, 'PrivateExitModule: Invalid Tokens'
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98] = 1
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130] = address(cd[4])
    uint8(sub_979d9513[msg.sender][stor2[msg.sender]].field_0) = 1
    sub_979d9513[msg.sender][stor2[msg.sender]].field_8 = address(cd[4])
    Mask(88, 0, sub_979d9513[msg.sender][stor2[msg.sender]].field_168) = 0
    uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_256) = cd[36]
    uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_512) = cd[68]
    uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_768) = ('cd', 100).length
    if not ('cd', 100).length:
        idx = 0
        while uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_768) > idx:
            uint256(sub_979d9513[msg.sender][stor2[msg.sender]][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 100).length) + 128 > idx:
            sub_979d9513[msg.sender][stor2[msg.sender]][s + 3].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
        while uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_768) > idx:
            uint256(sub_979d9513[msg.sender][stor2[msg.sender]][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_1024) = ('cd', 132).length
    if not ('cd', 132).length:
        idx = 0
        while uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_1024) > idx:
            uint256(sub_979d9513[msg.sender][stor2[msg.sender]][idx + 4].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(32 * ('cd', 100).length) + 129
        while ceil32(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 129 > idx:
            uint256(sub_979d9513[msg.sender][stor2[msg.sender]][s + 4].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
        while uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_1024) > idx:
            uint256(sub_979d9513[msg.sender][stor2[msg.sender]][idx + 4].field_0) = 0
            idx = idx + 1
            continue 
    if sub_3c0f968d[msg.sender] == -1:
        revert with 0, 17
    sub_3c0f968d[msg.sender]++
    return 1
}

function getOffers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    if sub_3c0f968d[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = sub_3c0f968d[address(arg1)]
    mem[64] = (32 * sub_3c0f968d[address(arg1)]) + 128
    if not sub_3c0f968d[address(arg1)]:
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3c0f968d[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 1)
            _54 = mem[64]
            mem[64] = mem[64] + 192
            mem[_54] = bool(uint8(sub_979d9513[address(arg1)][idx].field_0))
            mem[_54 + 32] = sub_979d9513[address(arg1)][idx].field_8
            mem[_54 + 64] = uint256(sub_979d9513[address(arg1)][idx].field_256)
            mem[_54 + 96] = uint256(sub_979d9513[address(arg1)][idx].field_512)
            _55 = mem[64]
            mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) + 32
            mem[_55] = uint256(sub_979d9513[address(arg1)][idx].field_768)
            if not uint256(sub_979d9513[address(arg1)][idx].field_768):
                mem[_54 + 128] = _55
                _57 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_57] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_57 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _57 + 32
                    t = sha3(mem[0])
                    while _57 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_54 + 160] = _57
            else:
                mem[0] = sha3(idx, sha3(address(arg1), 1)) + 3
                mem[_55 + 32] = sub_979d9513[address(arg1)][idx][3].field_0
                s = _55 + 32
                t = sha3(mem[0])
                while _55 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) > s:
                    mem[0] = arg1
                    mem[32] = 2
                    mem[s + 32] = sub_979d9513[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_54 + 128] = _55
                _158 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_158] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_158 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _158 + 32
                    t = sha3(mem[0])
                    while _158 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_54 + 160] = _158
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _54
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        _56 = mem[64]
        mem[mem[64]] = 32
        _60 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _60:
            mem[u] = t + -_56 - 64
            _98 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_98 + 44 len 20]
            mem[t + 64] = mem[_98 + 64]
            mem[t + 96] = mem[_98 + 96]
            _103 = mem[_98 + 128]
            mem[t + 128] = 192
            _106 = mem[_103]
            mem[t + 192] = mem[_103]
            v = 0
            w = _103 + 32
            x = t + 224
            while v < _106:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _168 = mem[_98 + 160]
            mem[t + 160] = (32 * _106) + 224
            _169 = mem[_168]
            mem[t + (32 * _106) + 224] = mem[_168]
            w = t + (32 * _106) + 256
            v = 0
            x = _168 + 32
            while v < _169:
                mem[w] = mem[x]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _106) + (32 * _169) + 256
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_3c0f968d[address(arg1)]) + 320
    mem[(32 * sub_3c0f968d[address(arg1)]) + 128] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 160] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 192] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 224] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 256] = 96
    mem[(32 * sub_3c0f968d[address(arg1)]) + 288] = 96
    mem[var16002] = var16001
    if not var16003 - 1:
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3c0f968d[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 1)
            _166 = mem[64]
            mem[64] = mem[64] + 192
            mem[_166] = bool(uint8(sub_979d9513[address(arg1)][idx].field_0))
            mem[_166 + 32] = sub_979d9513[address(arg1)][idx].field_8
            mem[_166 + 64] = uint256(sub_979d9513[address(arg1)][idx].field_256)
            mem[_166 + 96] = uint256(sub_979d9513[address(arg1)][idx].field_512)
            _167 = mem[64]
            mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) + 32
            mem[_167] = uint256(sub_979d9513[address(arg1)][idx].field_768)
            if not uint256(sub_979d9513[address(arg1)][idx].field_768):
                mem[_166 + 128] = _167
                _172 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_172] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_172 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _172 + 32
                    t = sha3(mem[0])
                    while _172 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_166 + 160] = _172
            else:
                mem[0] = sha3(idx, sha3(address(arg1), 1)) + 3
                mem[_167 + 32] = sub_979d9513[address(arg1)][idx][3].field_0
                s = _167 + 32
                t = sha3(mem[0])
                while _167 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) > s:
                    mem[0] = arg1
                    mem[32] = 2
                    mem[s + 32] = sub_979d9513[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_166 + 128] = _167
                _277 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_277] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_277 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _277 + 32
                    t = sha3(mem[0])
                    while _277 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_166 + 160] = _277
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _166
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        _171 = mem[64]
        mem[mem[64]] = 32
        _174 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _174:
            mem[u] = t + -_171 - 64
            _215 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_215 + 44 len 20]
            mem[t + 64] = mem[_215 + 64]
            mem[t + 96] = mem[_215 + 96]
            _220 = mem[_215 + 128]
            mem[t + 128] = 192
            _222 = mem[_220]
            mem[t + 192] = mem[_220]
            v = 0
            w = _220 + 32
            x = t + 224
            while v < _222:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _289 = mem[_215 + 160]
            mem[t + 160] = (32 * _222) + 224
            _290 = mem[_289]
            mem[t + (32 * _222) + 224] = mem[_289]
            w = t + (32 * _222) + 256
            v = 0
            x = _289 + 32
            while v < _290:
                mem[w] = mem[x]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _222) + (32 * _290) + 256
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_3c0f968d[address(arg1)]) + 512
    mem[(32 * sub_3c0f968d[address(arg1)]) + 320] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 352] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 384] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 416] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 448] = 96
    mem[(32 * sub_3c0f968d[address(arg1)]) + 480] = 96
    mem[var20002] = var20001
    if not var20003 - 1:
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3c0f968d[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 1)
            _280 = mem[64]
            mem[64] = mem[64] + 192
            mem[_280] = bool(uint8(sub_979d9513[address(arg1)][idx].field_0))
            mem[_280 + 32] = sub_979d9513[address(arg1)][idx].field_8
            mem[_280 + 64] = uint256(sub_979d9513[address(arg1)][idx].field_256)
            mem[_280 + 96] = uint256(sub_979d9513[address(arg1)][idx].field_512)
            _281 = mem[64]
            mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) + 32
            mem[_281] = uint256(sub_979d9513[address(arg1)][idx].field_768)
            if not uint256(sub_979d9513[address(arg1)][idx].field_768):
                mem[_280 + 128] = _281
                _287 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_287] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_287 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _287 + 32
                    t = sha3(mem[0])
                    while _287 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_280 + 160] = _287
            else:
                mem[0] = sha3(idx, sha3(address(arg1), 1)) + 3
                mem[_281 + 32] = sub_979d9513[address(arg1)][idx][3].field_0
                s = _281 + 32
                t = sha3(mem[0])
                while _281 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) > s:
                    mem[0] = arg1
                    mem[32] = 2
                    mem[s + 32] = sub_979d9513[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_280 + 128] = _281
                _393 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_393] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_393 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _393 + 32
                    t = sha3(mem[0])
                    while _393 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_280 + 160] = _393
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _280
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        _286 = mem[64]
        mem[mem[64]] = 32
        _291 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _291:
            mem[u] = t + -_286 - 64
            _331 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_331 + 44 len 20]
            mem[t + 64] = mem[_331 + 64]
            mem[t + 96] = mem[_331 + 96]
            _336 = mem[_331 + 128]
            mem[t + 128] = 192
            _339 = mem[_336]
            mem[t + 192] = mem[_336]
            v = 0
            w = _336 + 32
            x = t + 224
            while v < _339:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _406 = mem[_331 + 160]
            mem[t + 160] = (32 * _339) + 224
            _407 = mem[_406]
            mem[t + (32 * _339) + 224] = mem[_406]
            w = t + (32 * _339) + 256
            v = 0
            x = _406 + 32
            while v < _407:
                mem[w] = mem[x]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _339) + (32 * _407) + 256
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_3c0f968d[address(arg1)]) + 704
    mem[(32 * sub_3c0f968d[address(arg1)]) + 512] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 544] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 576] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 608] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 640] = 96
    mem[(32 * sub_3c0f968d[address(arg1)]) + 672] = 96
    mem[var24002] = var24001
    if not var24003 - 1:
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3c0f968d[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 1)
            _397 = mem[64]
            mem[64] = mem[64] + 192
            mem[_397] = bool(uint8(sub_979d9513[address(arg1)][idx].field_0))
            mem[_397 + 32] = sub_979d9513[address(arg1)][idx].field_8
            mem[_397 + 64] = uint256(sub_979d9513[address(arg1)][idx].field_256)
            mem[_397 + 96] = uint256(sub_979d9513[address(arg1)][idx].field_512)
            _398 = mem[64]
            mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) + 32
            mem[_398] = uint256(sub_979d9513[address(arg1)][idx].field_768)
            if not uint256(sub_979d9513[address(arg1)][idx].field_768):
                mem[_397 + 128] = _398
                _404 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_404] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_404 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _404 + 32
                    t = sha3(mem[0])
                    while _404 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_397 + 160] = _404
            else:
                mem[0] = sha3(idx, sha3(address(arg1), 1)) + 3
                mem[_398 + 32] = sub_979d9513[address(arg1)][idx][3].field_0
                s = _398 + 32
                t = sha3(mem[0])
                while _398 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) > s:
                    mem[0] = arg1
                    mem[32] = 2
                    mem[s + 32] = sub_979d9513[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_397 + 128] = _398
                _510 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_510] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_510 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _510 + 32
                    t = sha3(mem[0])
                    while _510 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_397 + 160] = _510
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _397
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        _403 = mem[64]
        mem[mem[64]] = 32
        _408 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _408:
            mem[u] = t + -_403 - 64
            _448 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_448 + 44 len 20]
            mem[t + 64] = mem[_448 + 64]
            mem[t + 96] = mem[_448 + 96]
            _453 = mem[_448 + 128]
            mem[t + 128] = 192
            _456 = mem[_453]
            mem[t + 192] = mem[_453]
            v = 0
            w = _453 + 32
            x = t + 224
            while v < _456:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _523 = mem[_448 + 160]
            mem[t + 160] = (32 * _456) + 224
            _524 = mem[_523]
            mem[t + (32 * _456) + 224] = mem[_523]
            w = t + (32 * _456) + 256
            v = 0
            x = _523 + 32
            while v < _524:
                mem[w] = mem[x]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _456) + (32 * _524) + 256
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_3c0f968d[address(arg1)]) + 896
    mem[(32 * sub_3c0f968d[address(arg1)]) + 704] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 736] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 768] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 800] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 832] = 96
    mem[(32 * sub_3c0f968d[address(arg1)]) + 864] = 96
    mem[var28002] = var28001
    if not var28003 - 1:
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3c0f968d[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 1)
            _514 = mem[64]
            mem[64] = mem[64] + 192
            mem[_514] = bool(uint8(sub_979d9513[address(arg1)][idx].field_0))
            mem[_514 + 32] = sub_979d9513[address(arg1)][idx].field_8
            mem[_514 + 64] = uint256(sub_979d9513[address(arg1)][idx].field_256)
            mem[_514 + 96] = uint256(sub_979d9513[address(arg1)][idx].field_512)
            _515 = mem[64]
            mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) + 32
            mem[_515] = uint256(sub_979d9513[address(arg1)][idx].field_768)
            if not uint256(sub_979d9513[address(arg1)][idx].field_768):
                mem[_514 + 128] = _515
                _521 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_521] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_521 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _521 + 32
                    t = sha3(mem[0])
                    while _521 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_514 + 160] = _521
            else:
                mem[0] = sha3(idx, sha3(address(arg1), 1)) + 3
                mem[_515 + 32] = sub_979d9513[address(arg1)][idx][3].field_0
                s = _515 + 32
                t = sha3(mem[0])
                while _515 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) > s:
                    mem[0] = arg1
                    mem[32] = 2
                    mem[s + 32] = sub_979d9513[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_514 + 128] = _515
                _627 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_627] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_627 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _627 + 32
                    t = sha3(mem[0])
                    while _627 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_514 + 160] = _627
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _514
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        _520 = mem[64]
        mem[mem[64]] = 32
        _525 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _525:
            mem[u] = t + -_520 - 64
            _565 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_565 + 44 len 20]
            mem[t + 64] = mem[_565 + 64]
            mem[t + 96] = mem[_565 + 96]
            _570 = mem[_565 + 128]
            mem[t + 128] = 192
            _573 = mem[_570]
            mem[t + 192] = mem[_570]
            v = 0
            w = _570 + 32
            x = t + 224
            while v < _573:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _640 = mem[_565 + 160]
            mem[t + 160] = (32 * _573) + 224
            _641 = mem[_640]
            mem[t + (32 * _573) + 224] = mem[_640]
            w = t + (32 * _573) + 256
            v = 0
            x = _640 + 32
            while v < _641:
                mem[w] = mem[x]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _573) + (32 * _641) + 256
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_3c0f968d[address(arg1)]) + 1088
    mem[(32 * sub_3c0f968d[address(arg1)]) + 896] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 928] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 960] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 992] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1024] = 96
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1056] = 96
    mem[var32002] = var32001
    if not var32003 - 1:
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3c0f968d[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 1)
            _631 = mem[64]
            mem[64] = mem[64] + 192
            mem[_631] = bool(uint8(sub_979d9513[address(arg1)][idx].field_0))
            mem[_631 + 32] = sub_979d9513[address(arg1)][idx].field_8
            mem[_631 + 64] = uint256(sub_979d9513[address(arg1)][idx].field_256)
            mem[_631 + 96] = uint256(sub_979d9513[address(arg1)][idx].field_512)
            _632 = mem[64]
            mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) + 32
            mem[_632] = uint256(sub_979d9513[address(arg1)][idx].field_768)
            if not uint256(sub_979d9513[address(arg1)][idx].field_768):
                mem[_631 + 128] = _632
                _638 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_638] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_638 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _638 + 32
                    t = sha3(mem[0])
                    while _638 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_631 + 160] = _638
            else:
                mem[0] = sha3(idx, sha3(address(arg1), 1)) + 3
                mem[_632 + 32] = sub_979d9513[address(arg1)][idx][3].field_0
                s = _632 + 32
                t = sha3(mem[0])
                while _632 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) > s:
                    mem[0] = arg1
                    mem[32] = 2
                    mem[s + 32] = sub_979d9513[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_631 + 128] = _632
                _744 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_744] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_744 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _744 + 32
                    t = sha3(mem[0])
                    while _744 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_631 + 160] = _744
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _631
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        _637 = mem[64]
        mem[mem[64]] = 32
        _642 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _642:
            mem[u] = t + -_637 - 64
            _682 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_682 + 44 len 20]
            mem[t + 64] = mem[_682 + 64]
            mem[t + 96] = mem[_682 + 96]
            _687 = mem[_682 + 128]
            mem[t + 128] = 192
            _690 = mem[_687]
            mem[t + 192] = mem[_687]
            v = 0
            w = _687 + 32
            x = t + 224
            while v < _690:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _757 = mem[_682 + 160]
            mem[t + 160] = (32 * _690) + 224
            _758 = mem[_757]
            mem[t + (32 * _690) + 224] = mem[_757]
            w = t + (32 * _690) + 256
            v = 0
            x = _757 + 32
            while v < _758:
                mem[w] = mem[x]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _690) + (32 * _758) + 256
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_3c0f968d[address(arg1)]) + 1280
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1088] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1120] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1152] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1184] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1216] = 96
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1248] = 96
    mem[var36002] = var36001
    if not var36003 - 1:
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3c0f968d[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 1)
            _748 = mem[64]
            mem[64] = mem[64] + 192
            mem[_748] = bool(uint8(sub_979d9513[address(arg1)][idx].field_0))
            mem[_748 + 32] = sub_979d9513[address(arg1)][idx].field_8
            mem[_748 + 64] = uint256(sub_979d9513[address(arg1)][idx].field_256)
            mem[_748 + 96] = uint256(sub_979d9513[address(arg1)][idx].field_512)
            _749 = mem[64]
            mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) + 32
            mem[_749] = uint256(sub_979d9513[address(arg1)][idx].field_768)
            if not uint256(sub_979d9513[address(arg1)][idx].field_768):
                mem[_748 + 128] = _749
                _755 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_755] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_755 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _755 + 32
                    t = sha3(mem[0])
                    while _755 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_748 + 160] = _755
            else:
                mem[0] = sha3(idx, sha3(address(arg1), 1)) + 3
                mem[_749 + 32] = sub_979d9513[address(arg1)][idx][3].field_0
                s = _749 + 32
                t = sha3(mem[0])
                while _749 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) > s:
                    mem[0] = arg1
                    mem[32] = 2
                    mem[s + 32] = sub_979d9513[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_748 + 128] = _749
                _861 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_861] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_861 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _861 + 32
                    t = sha3(mem[0])
                    while _861 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_748 + 160] = _861
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _748
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        _754 = mem[64]
        mem[mem[64]] = 32
        _759 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _759:
            mem[u] = t + -_754 - 64
            _799 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_799 + 44 len 20]
            mem[t + 64] = mem[_799 + 64]
            mem[t + 96] = mem[_799 + 96]
            _804 = mem[_799 + 128]
            mem[t + 128] = 192
            _807 = mem[_804]
            mem[t + 192] = mem[_804]
            v = 0
            w = _804 + 32
            x = t + 224
            while v < _807:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _874 = mem[_799 + 160]
            mem[t + 160] = (32 * _807) + 224
            _875 = mem[_874]
            mem[t + (32 * _807) + 224] = mem[_874]
            w = t + (32 * _807) + 256
            v = 0
            x = _874 + 32
            while v < _875:
                mem[w] = mem[x]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _807) + (32 * _875) + 256
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_3c0f968d[address(arg1)]) + 1472
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1280] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1312] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1344] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1376] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1408] = 96
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1440] = 96
    mem[var40002] = var40001
    if not var40003 - 1:
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3c0f968d[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 1)
            _865 = mem[64]
            mem[64] = mem[64] + 192
            mem[_865] = bool(uint8(sub_979d9513[address(arg1)][idx].field_0))
            mem[_865 + 32] = sub_979d9513[address(arg1)][idx].field_8
            mem[_865 + 64] = uint256(sub_979d9513[address(arg1)][idx].field_256)
            mem[_865 + 96] = uint256(sub_979d9513[address(arg1)][idx].field_512)
            _866 = mem[64]
            mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) + 32
            mem[_866] = uint256(sub_979d9513[address(arg1)][idx].field_768)
            if not uint256(sub_979d9513[address(arg1)][idx].field_768):
                mem[_865 + 128] = _866
                _872 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_872] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_872 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _872 + 32
                    t = sha3(mem[0])
                    while _872 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_865 + 160] = _872
            else:
                mem[0] = sha3(idx, sha3(address(arg1), 1)) + 3
                mem[_866 + 32] = sub_979d9513[address(arg1)][idx][3].field_0
                s = _866 + 32
                t = sha3(mem[0])
                while _866 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) > s:
                    mem[0] = arg1
                    mem[32] = 2
                    mem[s + 32] = sub_979d9513[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_865 + 128] = _866
                _978 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_978] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_978 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _978 + 32
                    t = sha3(mem[0])
                    while _978 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_865 + 160] = _978
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _865
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 2
            idx = idx + 1
            continue 
        _871 = mem[64]
        mem[mem[64]] = 32
        _876 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _876:
            mem[u] = t + -_871 - 64
            _916 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_916 + 44 len 20]
            mem[t + 64] = mem[_916 + 64]
            mem[t + 96] = mem[_916 + 96]
            _921 = mem[_916 + 128]
            mem[t + 128] = 192
            _924 = mem[_921]
            mem[t + 192] = mem[_921]
            v = 0
            w = _921 + 32
            x = t + 224
            while v < _924:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _991 = mem[_916 + 160]
            mem[t + 160] = (32 * _924) + 224
            _992 = mem[_991]
            mem[t + (32 * _924) + 224] = mem[_991]
            w = t + (32 * _924) + 256
            v = 0
            x = _991 + 32
            while v < _992:
                mem[w] = mem[x]
                w = w + 32
                v = v + 1
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _924) + (32 * _992) + 256
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_3c0f968d[address(arg1)]) + 1664
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1472] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1504] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1536] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1568] = 0
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1600] = 96
    mem[(32 * sub_3c0f968d[address(arg1)]) + 1632] = 96
    mem[var44002] = var44001
    if var44003 - 1:
        mem[64] = (32 * sub_3c0f968d[address(arg1)]) + 1856
        mem[var48002] = var48001
        if not var48003 - 1:
            idx = 0
            while idx < sub_3c0f968d[address(arg1)]:
                mem[0] = idx
                mem[32] = sha3(address(arg1), 1)
                _1099 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1099] = bool(uint8(sub_979d9513[address(arg1)][idx].field_0))
                mem[_1099 + 32] = sub_979d9513[address(arg1)][idx].field_8
                mem[_1099 + 64] = uint256(sub_979d9513[address(arg1)][idx].field_256)
                mem[_1099 + 96] = uint256(sub_979d9513[address(arg1)][idx].field_512)
                _1100 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) + 32
                mem[_1100] = uint256(sub_979d9513[address(arg1)][idx].field_768)
                if uint256(sub_979d9513[address(arg1)][idx].field_768):
                    # nil
                else:
                    mem[_1099 + 128] = _1100
                    _1106 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                    mem[_1106] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                    if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                        # nil
                    else:
                        mem[_1099 + 160] = _1106
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1099
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 2
                        idx = idx + 1
                        continue 
        # nil
    else:
        mem[0] = arg1
        mem[32] = 2
        idx = 0
        while idx < sub_3c0f968d[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 1)
            _982 = mem[64]
            mem[64] = mem[64] + 192
            mem[_982] = bool(uint8(sub_979d9513[address(arg1)][idx].field_0))
            mem[_982 + 32] = sub_979d9513[address(arg1)][idx].field_8
            mem[_982 + 64] = uint256(sub_979d9513[address(arg1)][idx].field_256)
            mem[_982 + 96] = uint256(sub_979d9513[address(arg1)][idx].field_512)
            _983 = mem[64]
            mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) + 32
            mem[_983] = uint256(sub_979d9513[address(arg1)][idx].field_768)
            if not uint256(sub_979d9513[address(arg1)][idx].field_768):
                mem[_982 + 128] = _983
                _989 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
                mem[_989] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
                if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                    mem[0] = sha3(idx, sha3(address(arg1), 1)) + 4
                    mem[_989 + 32] = uint256(sub_979d9513[address(arg1)][idx][4].field_0)
                    s = _989 + 32
                    t = sha3(mem[0])
                    while _989 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) > s:
                        mem[0] = arg1
                        mem[32] = 2
                        mem[s + 32] = uint256(sub_979d9513[t].field_0)
                        s = s + 32
                        t = t + 1
                        continue 
                mem[_982 + 160] = _989
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _982
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
            mem[0] = sha3(idx, sha3(address(arg1), 1)) + 3
            mem[_983 + 32] = sub_979d9513[address(arg1)][idx][3].field_0
            s = _983 + 32
            t = sha3(mem[0])
            while _983 + (32 * uint256(sub_979d9513[address(arg1)][idx].field_768)) > s:
                mem[0] = arg1
                mem[32] = 2
                mem[s + 32] = sub_979d9513[t].field_0
                s = s + 32
                t = t + 1
                continue 
            mem[_982 + 128] = _983
            _1095 = mem[64]
            mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(arg1)][idx].field_1024)) + 32
            mem[_1095] = uint256(sub_979d9513[address(arg1)][idx].field_1024)
            if uint256(sub_979d9513[address(arg1)][idx].field_1024):
                # nil
            else:
                mem[_982 + 160] = _1095
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _982
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 2
                idx = idx + 1
                continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        if var59001 >= mem[96]:
            return memory
              from mem[64]
               len var59004 - mem[64]
        mem[var59006] = var59004 + -mem[64] - 64
        _1033 = mem[var59003]
        mem[var59004] = bool(mem[mem[var59003]])
        mem[var59004 + 32] = mem[_1033 + 44 len 20]
        mem[var59004 + 64] = mem[_1033 + 64]
        mem[var59004 + 96] = mem[_1033 + 96]
        _1038 = mem[_1033 + 128]
        mem[var59004 + 128] = 192
        _1041 = mem[_1038]
        mem[var59004 + 192] = mem[_1038]
        idx = 0
        s = _1038 + 32
        t = var59004 + 224
        while idx < _1041:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        # nil
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if eth.balance(this.address) < msg.value:
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        emit Received(msg.value, msg.sender);
    if unknown_0x2d86c000(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require cd[4] == address(cd[4])
        mem[0] = address(cd[4])
        if sub_3c0f968d[address(cd[4])] > test266151307():
            revert with 0, 65
        mem[128] = sub_3c0f968d[address(cd[4])]
        mem[64] = (32 * sub_3c0f968d[address(cd[4])]) + 160
        if not sub_3c0f968d[address(cd[4])]:
            mem[0] = address(cd[4])
            mem[32] = 2
            idx = 0
            while idx < sub_3c0f968d[address(cd[4])]:
                mem[0] = idx
                mem[32] = sha3(address(cd[4]), 1)
                _3382 = mem[64]
                mem[64] = mem[64] + 192
                mem[_3382] = bool(uint8(sub_979d9513[address(cd[4])][idx].field_0))
                mem[_3382 + 32] = sub_979d9513[address(cd[4])][idx].field_8
                mem[_3382 + 64] = uint256(sub_979d9513[address(cd[4])][idx].field_256)
                mem[_3382 + 96] = uint256(sub_979d9513[address(cd[4])][idx].field_512)
                _3383 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) + 32
                mem[_3383] = uint256(sub_979d9513[address(cd[4])][idx].field_768)
                if not uint256(sub_979d9513[address(cd[4])][idx].field_768):
                    mem[_3382 + 128] = _3383
                    _3388 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_3388] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_3388 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _3388 + 32
                        t = sha3(mem[0])
                        while _3388 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_3382 + 160] = _3388
                else:
                    mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 3
                    mem[_3383 + 32] = sub_979d9513[address(cd[4])][idx][3].field_0
                    s = _3383 + 32
                    t = sha3(mem[0])
                    while _3383 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) > s:
                        mem[0] = address(cd[4])
                        mem[32] = 2
                        mem[s + 32] = sub_979d9513[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_3382 + 128] = _3383
                    _9784 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_9784] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_9784 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _9784 + 32
                        t = sha3(mem[0])
                        while _9784 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_3382 + 160] = _9784
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _3382
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(cd[4])
                mem[32] = 2
                idx = idx + 1
                continue 
            _3387 = mem[64]
            mem[mem[64]] = 32
            _3391 = mem[128]
            mem[mem[64] + 32] = mem[128]
            idx = 0
            s = 160
            t = mem[64] + (32 * _3391) + 64
            u = mem[64] + 64
            while idx < _3391:
                mem[u] = t + -_3387 - 64
                _6678 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_6678 + 44 len 20]
                mem[t + 64] = mem[_6678 + 64]
                mem[t + 96] = mem[_6678 + 96]
                _6683 = mem[_6678 + 128]
                mem[t + 128] = 192
                _6712 = mem[_6683]
                mem[t + 192] = mem[_6683]
                v = 0
                w = _6683 + 32
                x = t + 224
                while v < _6712:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _9835 = mem[_6678 + 160]
                mem[t + 160] = (32 * _6712) + 224
                _9836 = mem[_9835]
                mem[t + (32 * _6712) + 224] = mem[_9835]
                w = t + (32 * _6712) + 256
                v = 0
                x = _9835 + 32
                while v < _9836:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _6712) + (32 * _9836) + 256
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (32 * sub_3c0f968d[address(cd[4])]) + 352
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 160] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 192] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 224] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 256] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 288] = 96
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 320] = 96
        mem[var18002] = var18001
        if not var18003 - 1:
            mem[0] = address(cd[4])
            mem[32] = 2
            idx = 0
            while idx < sub_3c0f968d[address(cd[4])]:
                mem[0] = idx
                mem[32] = sha3(address(cd[4]), 1)
                _9792 = mem[64]
                mem[64] = mem[64] + 192
                mem[_9792] = bool(uint8(sub_979d9513[address(cd[4])][idx].field_0))
                mem[_9792 + 32] = sub_979d9513[address(cd[4])][idx].field_8
                mem[_9792 + 64] = uint256(sub_979d9513[address(cd[4])][idx].field_256)
                mem[_9792 + 96] = uint256(sub_979d9513[address(cd[4])][idx].field_512)
                _9793 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) + 32
                mem[_9793] = uint256(sub_979d9513[address(cd[4])][idx].field_768)
                if not uint256(sub_979d9513[address(cd[4])][idx].field_768):
                    mem[_9792 + 128] = _9793
                    _9839 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_9839] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_9839 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _9839 + 32
                        t = sha3(mem[0])
                        while _9839 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_9792 + 160] = _9839
                else:
                    mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 3
                    mem[_9793 + 32] = sub_979d9513[address(cd[4])][idx][3].field_0
                    s = _9793 + 32
                    t = sha3(mem[0])
                    while _9793 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) > s:
                        mem[0] = address(cd[4])
                        mem[32] = 2
                        mem[s + 32] = sub_979d9513[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_9792 + 128] = _9793
                    _15405 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_15405] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_15405 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _15405 + 32
                        t = sha3(mem[0])
                        while _15405 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_9792 + 160] = _15405
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _9792
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(cd[4])
                mem[32] = 2
                idx = idx + 1
                continue 
            _9838 = mem[64]
            mem[mem[64]] = 32
            _9841 = mem[128]
            mem[mem[64] + 32] = mem[128]
            idx = 0
            s = 160
            t = mem[64] + (32 * _9841) + 64
            u = mem[64] + 64
            while idx < _9841:
                mem[u] = t + -_9838 - 64
                _12638 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_12638 + 44 len 20]
                mem[t + 64] = mem[_12638 + 64]
                mem[t + 96] = mem[_12638 + 96]
                _12643 = mem[_12638 + 128]
                mem[t + 128] = 192
                _12678 = mem[_12643]
                mem[t + 192] = mem[_12643]
                v = 0
                w = _12643 + 32
                x = t + 224
                while v < _12678:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _15434 = mem[_12638 + 160]
                mem[t + 160] = (32 * _12678) + 224
                _15435 = mem[_15434]
                mem[t + (32 * _12678) + 224] = mem[_15434]
                w = t + (32 * _12678) + 256
                v = 0
                x = _15434 + 32
                while v < _15435:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _12678) + (32 * _15435) + 256
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (32 * sub_3c0f968d[address(cd[4])]) + 544
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 352] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 384] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 416] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 448] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 480] = 96
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 512] = 96
        mem[var22002] = var22001
        if not var22003 - 1:
            mem[0] = address(cd[4])
            mem[32] = 2
            idx = 0
            while idx < sub_3c0f968d[address(cd[4])]:
                mem[0] = idx
                mem[32] = sha3(address(cd[4]), 1)
                _15408 = mem[64]
                mem[64] = mem[64] + 192
                mem[_15408] = bool(uint8(sub_979d9513[address(cd[4])][idx].field_0))
                mem[_15408 + 32] = sub_979d9513[address(cd[4])][idx].field_8
                mem[_15408 + 64] = uint256(sub_979d9513[address(cd[4])][idx].field_256)
                mem[_15408 + 96] = uint256(sub_979d9513[address(cd[4])][idx].field_512)
                _15409 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) + 32
                mem[_15409] = uint256(sub_979d9513[address(cd[4])][idx].field_768)
                if not uint256(sub_979d9513[address(cd[4])][idx].field_768):
                    mem[_15408 + 128] = _15409
                    _15432 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_15432] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_15432 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _15432 + 32
                        t = sha3(mem[0])
                        while _15432 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_15408 + 160] = _15432
                else:
                    mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 3
                    mem[_15409 + 32] = sub_979d9513[address(cd[4])][idx][3].field_0
                    s = _15409 + 32
                    t = sha3(mem[0])
                    while _15409 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) > s:
                        mem[0] = address(cd[4])
                        mem[32] = 2
                        mem[s + 32] = sub_979d9513[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_15408 + 128] = _15409
                    _20238 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_20238] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_20238 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _20238 + 32
                        t = sha3(mem[0])
                        while _20238 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_15408 + 160] = _20238
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _15408
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(cd[4])
                mem[32] = 2
                idx = idx + 1
                continue 
            _15431 = mem[64]
            mem[mem[64]] = 32
            _15484 = mem[128]
            mem[mem[64] + 32] = mem[128]
            idx = 0
            s = 160
            t = mem[64] + (32 * _15484) + 64
            u = mem[64] + 64
            while idx < _15484:
                mem[u] = t + -_15431 - 64
                _18061 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_18061 + 44 len 20]
                mem[t + 64] = mem[_18061 + 64]
                mem[t + 96] = mem[_18061 + 96]
                _18066 = mem[_18061 + 128]
                mem[t + 128] = 192
                _18149 = mem[_18066]
                mem[t + 192] = mem[_18066]
                v = 0
                w = _18066 + 32
                x = t + 224
                while v < _18149:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _20395 = mem[_18061 + 160]
                mem[t + 160] = (32 * _18149) + 224
                _20396 = mem[_20395]
                mem[t + (32 * _18149) + 224] = mem[_20395]
                w = t + (32 * _18149) + 256
                v = 0
                x = _20395 + 32
                while v < _20396:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _18149) + (32 * _20396) + 256
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (32 * sub_3c0f968d[address(cd[4])]) + 736
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 544] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 576] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 608] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 640] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 672] = 96
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 704] = 96
        mem[var26002] = var26001
        if not var26003 - 1:
            mem[0] = address(cd[4])
            mem[32] = 2
            idx = 0
            while idx < sub_3c0f968d[address(cd[4])]:
                mem[0] = idx
                mem[32] = sha3(address(cd[4]), 1)
                _20242 = mem[64]
                mem[64] = mem[64] + 192
                mem[_20242] = bool(uint8(sub_979d9513[address(cd[4])][idx].field_0))
                mem[_20242 + 32] = sub_979d9513[address(cd[4])][idx].field_8
                mem[_20242 + 64] = uint256(sub_979d9513[address(cd[4])][idx].field_256)
                mem[_20242 + 96] = uint256(sub_979d9513[address(cd[4])][idx].field_512)
                _20243 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) + 32
                mem[_20243] = uint256(sub_979d9513[address(cd[4])][idx].field_768)
                if not uint256(sub_979d9513[address(cd[4])][idx].field_768):
                    mem[_20242 + 128] = _20243
                    _20393 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_20393] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_20393 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _20393 + 32
                        t = sha3(mem[0])
                        while _20393 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_20242 + 160] = _20393
                else:
                    mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 3
                    mem[_20243 + 32] = sub_979d9513[address(cd[4])][idx][3].field_0
                    s = _20243 + 32
                    t = sha3(mem[0])
                    while _20243 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) > s:
                        mem[0] = address(cd[4])
                        mem[32] = 2
                        mem[s + 32] = sub_979d9513[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_20242 + 128] = _20243
                    _22099 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_22099] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_22099 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _22099 + 32
                        t = sha3(mem[0])
                        while _22099 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_20242 + 160] = _22099
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _20242
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(cd[4])
                mem[32] = 2
                idx = idx + 1
                continue 
            _20392 = mem[64]
            mem[mem[64]] = 32
            _20429 = mem[128]
            mem[mem[64] + 32] = mem[128]
            idx = 0
            s = 160
            t = mem[64] + (32 * _20429) + 64
            u = mem[64] + 64
            while idx < _20429:
                mem[u] = t + -_20392 - 64
                _21493 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_21493 + 44 len 20]
                mem[t + 64] = mem[_21493 + 64]
                mem[t + 96] = mem[_21493 + 96]
                _21498 = mem[_21493 + 128]
                mem[t + 128] = 192
                _21565 = mem[_21498]
                mem[t + 192] = mem[_21498]
                v = 0
                w = _21498 + 32
                x = t + 224
                while v < _21565:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _22112 = mem[_21493 + 160]
                mem[t + 160] = (32 * _21565) + 224
                _22113 = mem[_22112]
                mem[t + (32 * _21565) + 224] = mem[_22112]
                w = t + (32 * _21565) + 256
                v = 0
                x = _22112 + 32
                while v < _22113:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _21565) + (32 * _22113) + 256
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (32 * sub_3c0f968d[address(cd[4])]) + 928
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 736] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 768] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 800] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 832] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 864] = 96
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 896] = 96
        mem[var30002] = var30001
        if not var30003 - 1:
            mem[0] = address(cd[4])
            mem[32] = 2
            idx = 0
            while idx < sub_3c0f968d[address(cd[4])]:
                mem[0] = idx
                mem[32] = sha3(address(cd[4]), 1)
                _22103 = mem[64]
                mem[64] = mem[64] + 192
                mem[_22103] = bool(uint8(sub_979d9513[address(cd[4])][idx].field_0))
                mem[_22103 + 32] = sub_979d9513[address(cd[4])][idx].field_8
                mem[_22103 + 64] = uint256(sub_979d9513[address(cd[4])][idx].field_256)
                mem[_22103 + 96] = uint256(sub_979d9513[address(cd[4])][idx].field_512)
                _22104 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) + 32
                mem[_22104] = uint256(sub_979d9513[address(cd[4])][idx].field_768)
                if not uint256(sub_979d9513[address(cd[4])][idx].field_768):
                    mem[_22103 + 128] = _22104
                    _22110 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_22110] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_22110 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _22110 + 32
                        t = sha3(mem[0])
                        while _22110 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_22103 + 160] = _22110
                else:
                    mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 3
                    mem[_22104 + 32] = sub_979d9513[address(cd[4])][idx][3].field_0
                    s = _22104 + 32
                    t = sha3(mem[0])
                    while _22104 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) > s:
                        mem[0] = address(cd[4])
                        mem[32] = 2
                        mem[s + 32] = sub_979d9513[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_22103 + 128] = _22104
                    _22408 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_22408] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_22408 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _22408 + 32
                        t = sha3(mem[0])
                        while _22408 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_22103 + 160] = _22408
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _22103
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(cd[4])
                mem[32] = 2
                idx = idx + 1
                continue 
            _22109 = mem[64]
            mem[mem[64]] = 32
            _22178 = mem[128]
            mem[mem[64] + 32] = mem[128]
            idx = 0
            s = 160
            t = mem[64] + (32 * _22178) + 64
            u = mem[64] + 64
            while idx < _22178:
                mem[u] = t + -_22109 - 64
                _22346 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_22346 + 44 len 20]
                mem[t + 64] = mem[_22346 + 64]
                mem[t + 96] = mem[_22346 + 96]
                _22351 = mem[_22346 + 128]
                mem[t + 128] = 192
                _22354 = mem[_22351]
                mem[t + 192] = mem[_22351]
                v = 0
                w = _22351 + 32
                x = t + 224
                while v < _22354:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _22421 = mem[_22346 + 160]
                mem[t + 160] = (32 * _22354) + 224
                _22422 = mem[_22421]
                mem[t + (32 * _22354) + 224] = mem[_22421]
                w = t + (32 * _22354) + 256
                v = 0
                x = _22421 + 32
                while v < _22422:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _22354) + (32 * _22422) + 256
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (32 * sub_3c0f968d[address(cd[4])]) + 1120
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 928] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 960] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 992] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1024] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1056] = 96
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1088] = 96
        mem[var34002] = var34001
        if not var34003 - 1:
            mem[0] = address(cd[4])
            mem[32] = 2
            idx = 0
            while idx < sub_3c0f968d[address(cd[4])]:
                mem[0] = idx
                mem[32] = sha3(address(cd[4]), 1)
                _22412 = mem[64]
                mem[64] = mem[64] + 192
                mem[_22412] = bool(uint8(sub_979d9513[address(cd[4])][idx].field_0))
                mem[_22412 + 32] = sub_979d9513[address(cd[4])][idx].field_8
                mem[_22412 + 64] = uint256(sub_979d9513[address(cd[4])][idx].field_256)
                mem[_22412 + 96] = uint256(sub_979d9513[address(cd[4])][idx].field_512)
                _22413 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) + 32
                mem[_22413] = uint256(sub_979d9513[address(cd[4])][idx].field_768)
                if not uint256(sub_979d9513[address(cd[4])][idx].field_768):
                    mem[_22412 + 128] = _22413
                    _22419 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_22419] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_22419 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _22419 + 32
                        t = sha3(mem[0])
                        while _22419 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_22412 + 160] = _22419
                else:
                    mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 3
                    mem[_22413 + 32] = sub_979d9513[address(cd[4])][idx][3].field_0
                    s = _22413 + 32
                    t = sha3(mem[0])
                    while _22413 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) > s:
                        mem[0] = address(cd[4])
                        mem[32] = 2
                        mem[s + 32] = sub_979d9513[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_22412 + 128] = _22413
                    _22525 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_22525] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_22525 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _22525 + 32
                        t = sha3(mem[0])
                        while _22525 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_22412 + 160] = _22525
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _22412
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(cd[4])
                mem[32] = 2
                idx = idx + 1
                continue 
            _22418 = mem[64]
            mem[mem[64]] = 32
            _22423 = mem[128]
            mem[mem[64] + 32] = mem[128]
            idx = 0
            s = 160
            t = mem[64] + (32 * _22423) + 64
            u = mem[64] + 64
            while idx < _22423:
                mem[u] = t + -_22418 - 64
                _22463 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_22463 + 44 len 20]
                mem[t + 64] = mem[_22463 + 64]
                mem[t + 96] = mem[_22463 + 96]
                _22468 = mem[_22463 + 128]
                mem[t + 128] = 192
                _22471 = mem[_22468]
                mem[t + 192] = mem[_22468]
                v = 0
                w = _22468 + 32
                x = t + 224
                while v < _22471:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _22538 = mem[_22463 + 160]
                mem[t + 160] = (32 * _22471) + 224
                _22539 = mem[_22538]
                mem[t + (32 * _22471) + 224] = mem[_22538]
                w = t + (32 * _22471) + 256
                v = 0
                x = _22538 + 32
                while v < _22539:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _22471) + (32 * _22539) + 256
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (32 * sub_3c0f968d[address(cd[4])]) + 1312
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1120] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1152] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1184] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1216] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1248] = 96
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1280] = 96
        mem[var38002] = var38001
        if not var38003 - 1:
            mem[0] = address(cd[4])
            mem[32] = 2
            idx = 0
            while idx < sub_3c0f968d[address(cd[4])]:
                mem[0] = idx
                mem[32] = sha3(address(cd[4]), 1)
                _22529 = mem[64]
                mem[64] = mem[64] + 192
                mem[_22529] = bool(uint8(sub_979d9513[address(cd[4])][idx].field_0))
                mem[_22529 + 32] = sub_979d9513[address(cd[4])][idx].field_8
                mem[_22529 + 64] = uint256(sub_979d9513[address(cd[4])][idx].field_256)
                mem[_22529 + 96] = uint256(sub_979d9513[address(cd[4])][idx].field_512)
                _22530 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) + 32
                mem[_22530] = uint256(sub_979d9513[address(cd[4])][idx].field_768)
                if not uint256(sub_979d9513[address(cd[4])][idx].field_768):
                    mem[_22529 + 128] = _22530
                    _22536 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_22536] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_22536 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _22536 + 32
                        t = sha3(mem[0])
                        while _22536 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_22529 + 160] = _22536
                else:
                    mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 3
                    mem[_22530 + 32] = sub_979d9513[address(cd[4])][idx][3].field_0
                    s = _22530 + 32
                    t = sha3(mem[0])
                    while _22530 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) > s:
                        mem[0] = address(cd[4])
                        mem[32] = 2
                        mem[s + 32] = sub_979d9513[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_22529 + 128] = _22530
                    _22642 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_22642] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_22642 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _22642 + 32
                        t = sha3(mem[0])
                        while _22642 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_22529 + 160] = _22642
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _22529
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(cd[4])
                mem[32] = 2
                idx = idx + 1
                continue 
            _22535 = mem[64]
            mem[mem[64]] = 32
            _22540 = mem[128]
            mem[mem[64] + 32] = mem[128]
            idx = 0
            s = 160
            t = mem[64] + (32 * _22540) + 64
            u = mem[64] + 64
            while idx < _22540:
                mem[u] = t + -_22535 - 64
                _22580 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_22580 + 44 len 20]
                mem[t + 64] = mem[_22580 + 64]
                mem[t + 96] = mem[_22580 + 96]
                _22585 = mem[_22580 + 128]
                mem[t + 128] = 192
                _22588 = mem[_22585]
                mem[t + 192] = mem[_22585]
                v = 0
                w = _22585 + 32
                x = t + 224
                while v < _22588:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _22655 = mem[_22580 + 160]
                mem[t + 160] = (32 * _22588) + 224
                _22656 = mem[_22655]
                mem[t + (32 * _22588) + 224] = mem[_22655]
                w = t + (32 * _22588) + 256
                v = 0
                x = _22655 + 32
                while v < _22656:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _22588) + (32 * _22656) + 256
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (32 * sub_3c0f968d[address(cd[4])]) + 1504
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1312] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1344] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1376] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1408] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1440] = 96
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1472] = 96
        mem[var42002] = var42001
        if not var42003 - 1:
            mem[0] = address(cd[4])
            mem[32] = 2
            idx = 0
            while idx < sub_3c0f968d[address(cd[4])]:
                mem[0] = idx
                mem[32] = sha3(address(cd[4]), 1)
                _22646 = mem[64]
                mem[64] = mem[64] + 192
                mem[_22646] = bool(uint8(sub_979d9513[address(cd[4])][idx].field_0))
                mem[_22646 + 32] = sub_979d9513[address(cd[4])][idx].field_8
                mem[_22646 + 64] = uint256(sub_979d9513[address(cd[4])][idx].field_256)
                mem[_22646 + 96] = uint256(sub_979d9513[address(cd[4])][idx].field_512)
                _22647 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) + 32
                mem[_22647] = uint256(sub_979d9513[address(cd[4])][idx].field_768)
                if not uint256(sub_979d9513[address(cd[4])][idx].field_768):
                    mem[_22646 + 128] = _22647
                    _22653 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_22653] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_22653 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _22653 + 32
                        t = sha3(mem[0])
                        while _22653 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_22646 + 160] = _22653
                else:
                    mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 3
                    mem[_22647 + 32] = sub_979d9513[address(cd[4])][idx][3].field_0
                    s = _22647 + 32
                    t = sha3(mem[0])
                    while _22647 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) > s:
                        mem[0] = address(cd[4])
                        mem[32] = 2
                        mem[s + 32] = sub_979d9513[t].field_0
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_22646 + 128] = _22647
                    _22759 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_22759] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_22759 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _22759 + 32
                        t = sha3(mem[0])
                        while _22759 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_22646 + 160] = _22759
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _22646
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(cd[4])
                mem[32] = 2
                idx = idx + 1
                continue 
            _22652 = mem[64]
            mem[mem[64]] = 32
            _22657 = mem[128]
            mem[mem[64] + 32] = mem[128]
            idx = 0
            s = 160
            t = mem[64] + (32 * _22657) + 64
            u = mem[64] + 64
            while idx < _22657:
                mem[u] = t + -_22652 - 64
                _22697 = mem[s]
                mem[t] = bool(mem[mem[s]])
                mem[t + 32] = mem[_22697 + 44 len 20]
                mem[t + 64] = mem[_22697 + 64]
                mem[t + 96] = mem[_22697 + 96]
                _22702 = mem[_22697 + 128]
                mem[t + 128] = 192
                _22705 = mem[_22702]
                mem[t + 192] = mem[_22702]
                v = 0
                w = _22702 + 32
                x = t + 224
                while v < _22705:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _22772 = mem[_22697 + 160]
                mem[t + 160] = (32 * _22705) + 224
                _22773 = mem[_22772]
                mem[t + (32 * _22705) + 224] = mem[_22772]
                w = t + (32 * _22705) + 256
                v = 0
                x = _22772 + 32
                while v < _22773:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _22705) + (32 * _22773) + 256
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[64] = (32 * sub_3c0f968d[address(cd[4])]) + 1696
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1504] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1536] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1568] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1600] = 0
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1632] = 96
        mem[(32 * sub_3c0f968d[address(cd[4])]) + 1664] = 96
        mem[var46002] = var46001
        if var46003 - 1:
            mem[64] = (32 * sub_3c0f968d[address(cd[4])]) + 1888
            mem[var50002] = var50001
            if not var50003 - 1:
                idx = 0
                while idx < sub_3c0f968d[address(cd[4])]:
                    mem[0] = idx
                    mem[32] = sha3(address(cd[4]), 1)
                    _22880 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_22880] = bool(uint8(sub_979d9513[address(cd[4])][idx].field_0))
                    mem[_22880 + 32] = sub_979d9513[address(cd[4])][idx].field_8
                    mem[_22880 + 64] = uint256(sub_979d9513[address(cd[4])][idx].field_256)
                    mem[_22880 + 96] = uint256(sub_979d9513[address(cd[4])][idx].field_512)
                    _22881 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) + 32
                    mem[_22881] = uint256(sub_979d9513[address(cd[4])][idx].field_768)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_768):
                        # nil
                    else:
                        mem[_22880 + 128] = _22881
                        _22887 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                        mem[_22887] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                        if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                            # nil
                        else:
                            mem[_22880 + 160] = _22887
                            if idx >= mem[128]:
                                revert with 0, 50
                            mem[(32 * idx) + 160] = _22880
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            idx = idx + 1
                            continue 
            # nil
        else:
            mem[0] = address(cd[4])
            mem[32] = 2
            idx = 0
            while idx < sub_3c0f968d[address(cd[4])]:
                mem[0] = idx
                mem[32] = sha3(address(cd[4]), 1)
                _22763 = mem[64]
                mem[64] = mem[64] + 192
                mem[_22763] = bool(uint8(sub_979d9513[address(cd[4])][idx].field_0))
                mem[_22763 + 32] = sub_979d9513[address(cd[4])][idx].field_8
                mem[_22763 + 64] = uint256(sub_979d9513[address(cd[4])][idx].field_256)
                mem[_22763 + 96] = uint256(sub_979d9513[address(cd[4])][idx].field_512)
                _22764 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) + 32
                mem[_22764] = uint256(sub_979d9513[address(cd[4])][idx].field_768)
                if not uint256(sub_979d9513[address(cd[4])][idx].field_768):
                    mem[_22763 + 128] = _22764
                    _22770 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                    mem[_22770] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                    if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                        mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 4
                        mem[_22770 + 32] = uint256(sub_979d9513[address(cd[4])][idx][4].field_0)
                        s = _22770 + 32
                        t = sha3(mem[0])
                        while _22770 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) > s:
                            mem[0] = address(cd[4])
                            mem[32] = 2
                            mem[s + 32] = uint256(sub_979d9513[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                    mem[_22763 + 160] = _22770
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = _22763
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(cd[4])
                    mem[32] = 2
                    idx = idx + 1
                    continue 
                mem[0] = sha3(idx, sha3(address(cd[4]), 1)) + 3
                mem[_22764 + 32] = sub_979d9513[address(cd[4])][idx][3].field_0
                s = _22764 + 32
                t = sha3(mem[0])
                while _22764 + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_768)) > s:
                    mem[0] = address(cd[4])
                    mem[32] = 2
                    mem[s + 32] = sub_979d9513[t].field_0
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_22763 + 128] = _22764
                _22876 = mem[64]
                mem[64] = mem[64] + (32 * uint256(sub_979d9513[address(cd[4])][idx].field_1024)) + 32
                mem[_22876] = uint256(sub_979d9513[address(cd[4])][idx].field_1024)
                if uint256(sub_979d9513[address(cd[4])][idx].field_1024):
                    # nil
                else:
                    mem[_22763 + 160] = _22876
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = _22763
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = address(cd[4])
                    mem[32] = 2
                    idx = idx + 1
                    continue 
            mem[mem[64]] = 32
            _22774 = mem[128]
            mem[mem[64] + 32] = mem[128]
            if var61001 >= _22774:
                return memory
                  from mem[64]
                   len var61004 - mem[64]
            mem[var61006] = var61004 + -mem[64] - 64
            _22814 = mem[var61003]
            mem[var61004] = bool(mem[mem[var61003]])
            mem[var61004 + 32] = mem[_22814 + 44 len 20]
            mem[var61004 + 64] = mem[_22814 + 64]
            mem[var61004 + 96] = mem[_22814 + 96]
            _22819 = mem[_22814 + 128]
            mem[var61004 + 128] = 192
            _22822 = mem[_22819]
            mem[var61004 + 192] = mem[_22819]
            idx = 0
            s = _22819 + 32
            t = var61004 + 224
            while idx < _22822:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            # nil
    else:
        if unknown_0x3c0f968d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            return sub_3c0f968d[cd[4]]
        if uint32(call.func_hash) >> 224 != unknown_0x55715d1c(?????):
            if uint32(call.func_hash) >> 224 != unknown_0x94f9e86e(?????):
                if unknown_0x979d9513(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    return bool(uint8(sub_979d9513[cd[4]][cd[36]].field_0)), 
                           sub_979d9513[cd[4]][cd[36]].field_0,
                           uint256(sub_979d9513[cd[4]][cd[36]].field_256),
                           uint256(sub_979d9513[cd[4]][cd[36]].field_512)
                require unknown_0x9a3fab74(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if bool(uint8(sub_979d9513[msg.sender][cd[4]].field_0)) != 1:
                    revert with 0, 'PrivateExitModule: Already Disabled'
                uint8(sub_979d9513[msg.sender][cd[4]].field_0) = 0
            else:
                require not msg.value
                require calldata.size - 4 >= 160
                require cd[4] == address(cd[4])
                require cd[100] <= test266151307()
                require cd[100] + 35 < calldata.size
                if ('cd', 100).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 100).length) + 129 < 128 or ceil32(32 * ('cd', 100).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 100).length
                require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                s = cd[100] + 36
                t = 160
                idx = 0
                while idx < ('cd', 100).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                require cd[132] <= test266151307()
                require cd[132] + 35 < calldata.size
                if ('cd', 132).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 132).length) + 130 < 129 or ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130 > test266151307():
                    revert with 0, 65
                mem[ceil32(32 * ('cd', 100).length) + 129] = ('cd', 132).length
                require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                idx = 0
                s = cd[132] + 36
                t = ceil32(32 * ('cd', 100).length) + 161
                while idx < ('cd', 132).length:
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if ('cd', 100).length != ('cd', 132).length:
                    revert with 0, 'PrivateExitModule: Invalid Tokens'
                mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130] = 1
                mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 162] = address(cd[4])
                uint8(sub_979d9513[msg.sender][stor2[msg.sender]].field_0) = 1
                sub_979d9513[msg.sender][stor2[msg.sender]].field_8 = address(cd[4])
                Mask(88, 0, sub_979d9513[msg.sender][stor2[msg.sender]].field_168) = 0
                uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_256) = cd[36]
                uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_512) = cd[68]
                uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_768) = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_768) > idx:
                        uint256(sub_979d9513[msg.sender][stor2[msg.sender]][idx + 3].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 160
                    while (32 * ('cd', 100).length) + 160 > idx:
                        sub_979d9513[msg.sender][stor2[msg.sender]][s + 3].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    while uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_768) > idx:
                        uint256(sub_979d9513[msg.sender][stor2[msg.sender]][idx + 3].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_1024) = ('cd', 132).length
                if not ('cd', 132).length:
                    idx = 0
                    while uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_1024) > idx:
                        uint256(sub_979d9513[msg.sender][stor2[msg.sender]][idx + 4].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = ceil32(32 * ('cd', 100).length) + 161
                    while ceil32(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 161 > idx:
                        uint256(sub_979d9513[msg.sender][stor2[msg.sender]][s + 4].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
                    while uint256(sub_979d9513[msg.sender][stor2[msg.sender]].field_1024) > idx:
                        uint256(sub_979d9513[msg.sender][stor2[msg.sender]][idx + 4].field_0) = 0
                        idx = idx + 1
                        continue 
                if sub_3c0f968d[msg.sender] == -1:
                    revert with 0, 17
                sub_3c0f968d[msg.sender]++
        else:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if stor0 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor0 = 2
            mem[0] = cd[36]
            mem[32] = sha3(address(cd[4]), 1)
            if not uint8(sub_979d9513[address(cd[4])][cd[36]].field_0):
                revert with 0, 'PrivateExitModule: Offer is Disabled'
            uint8(sub_979d9513[address(cd[4])][cd[36]].field_0) = 0
            if sub_979d9513[address(cd[4])][cd[36]].field_8 != msg.sender:
                revert with 0, 'PrivateExitModule: Invalid Recipient'
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).lp() with:
                    gas gas_remaining wei
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).burnable() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                mem[(2 * ceil32(return_data.size)) + 228] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                mem[(2 * ceil32(return_data.size)) + 128] = 100
                mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 160 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 260] = 32
                mem[(2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 324 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 0
                mem[(2 * ceil32(return_data.size)) + 424] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        mem[(2 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 360] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                        mem[(4 * ceil32(return_data.size)) + 360] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        mem[(4 * ceil32(return_data.size)) + 392] = 128
                        mem[(4 * ceil32(return_data.size)) + 488] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 356
                        t = (4 * ceil32(return_data.size)) + 520
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 424] = 160
                        mem[(4 * ceil32(return_data.size)) + 520] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 356
                        t = (4 * ceil32(return_data.size)) + 552
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 456] = 192
                        mem[(4 * ceil32(return_data.size)) + 552] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 356
                        t = (4 * ceil32(return_data.size)) + 584
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xec5a4bdd with:
                             gas gas_remaining wei
                            args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                        mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 356
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        idx = 0
                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                            if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                revert with 0, 50
                            mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                            if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    revert with 0, 50
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    revert with 0, 50
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                _15671 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                _15672 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_15672 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_15672 + 36 len 28]
                                mem[_15671 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15671 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                mem[_15671 + 136] = 96
                                _15802 = mem[_15672]
                                mem[_15671 + 200] = mem[_15672]
                                s = 0
                                while s < _15802:
                                    mem[s + _15671 + 232] = mem[s + _15672 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_15802) > _15802:
                                    mem[_15802 + _15671 + 232] = 0
                                mem[_15671 + 168] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_15671 + 200 len ceil32(_15802) + 32]
                                mem[_15671 + 100] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15671 + ceil32(return_data.size) + 100
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                            if ext_call.return_data[0]:
                                _15507 = mem[64]
                                mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                mem[mem[64] + 32] = 96
                                mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                idx = 0
                                s = 0
                                t = mem[64] + 128
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = stor[s + sha3(mem[0])]
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15507 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                mem[_15507 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15507 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: mem[mem[64] len _15507 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                _15508 = mem[64]
                                mem[mem[64] + 36] = 0
                                _15509 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_15509 + 32 len 4] = changeBurnable(bool arg1)
                                mem[_15508 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15508 + 72] = address(ext_call.return_data[0])
                                mem[_15508 + 104] = 96
                                _15669 = mem[_15509]
                                mem[_15508 + 168] = mem[_15509]
                                mem[_15508 + 200 len ceil32(_15669)] = mem[_15509 + 32 len ceil32(_15669)]
                                if ceil32(_15669) > _15669:
                                    mem[_15669 + _15508 + 200] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 96, 0, mem[_15508 + 168 len ceil32(_15669) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                s = 0
                                t = 0
                                u = _15508 + ceil32(return_data.size) + 196
                                while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                    s = s + 1
                                    t = t + 1
                                    u = u + 32
                                    continue 
                                mem[_15508 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15508 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15508 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xd293aba4 with:
                                 gas gas_remaining wei
                                args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15600] == bool(mem[_15600])
                            if ext_call.return_data[0]:
                                _15906 = mem[64]
                                mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                mem[mem[64] + 32] = 96
                                mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                idx = 0
                                s = 0
                                t = mem[64] + 128
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = stor[s + sha3(mem[0])]
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15906 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                mem[_15906 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15906 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: mem[mem[64] len _15906 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                _15907 = mem[64]
                                mem[mem[64] + 36] = 0
                                _15908 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_15908 + 32 len 4] = changeBurnable(bool arg1)
                                mem[_15907 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15907 + 72] = address(ext_call.return_data[0])
                                mem[_15907 + 104] = 96
                                _16039 = mem[_15908]
                                mem[_15907 + 168] = mem[_15908]
                                mem[_15907 + 200 len ceil32(_16039)] = mem[_15908 + 32 len ceil32(_16039)]
                                if ceil32(_16039) > _16039:
                                    mem[_16039 + _15907 + 200] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 96, 0, mem[_15907 + 168 len ceil32(_16039) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = 0
                                t = _15907 + ceil32(return_data.size) + 196
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15907 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15907 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15907 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                    else:
                        require mem[96] >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(2 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 360] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                        mem[(4 * ceil32(return_data.size)) + 360] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        mem[(4 * ceil32(return_data.size)) + 392] = 128
                        mem[(4 * ceil32(return_data.size)) + 488] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 356
                        t = (4 * ceil32(return_data.size)) + 520
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 424] = 160
                        mem[(4 * ceil32(return_data.size)) + 520] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 356
                        t = (4 * ceil32(return_data.size)) + 552
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 456] = 192
                        mem[(4 * ceil32(return_data.size)) + 552] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 356
                        t = (4 * ceil32(return_data.size)) + 584
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xec5a4bdd with:
                             gas gas_remaining wei
                            args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                        mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 356
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        idx = 0
                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                            if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                revert with 0, 50
                            mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                            if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    revert with 0, 50
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    revert with 0, 50
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                _15677 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                _15678 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_15678 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_15678 + 36 len 28]
                                mem[_15677 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15677 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                mem[_15677 + 136] = 96
                                _15803 = mem[_15678]
                                mem[_15677 + 200] = mem[_15678]
                                s = 0
                                while s < _15803:
                                    mem[s + _15677 + 232] = mem[s + _15678 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_15803) > _15803:
                                    mem[_15803 + _15677 + 232] = 0
                                mem[_15677 + 168] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_15677 + 200 len ceil32(_15803) + 32]
                                mem[_15677 + 100] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15677 + ceil32(return_data.size) + 100
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                            if ext_call.return_data[0]:
                                _15512 = mem[64]
                                mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                mem[mem[64] + 32] = 96
                                mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                idx = 0
                                s = 0
                                t = mem[64] + 128
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = stor[s + sha3(mem[0])]
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15512 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                mem[_15512 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15512 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: mem[mem[64] len _15512 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                _15513 = mem[64]
                                mem[mem[64] + 36] = 0
                                _15514 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_15514 + 32 len 4] = changeBurnable(bool arg1)
                                mem[_15513 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15513 + 72] = address(ext_call.return_data[0])
                                mem[_15513 + 104] = 96
                                _15675 = mem[_15514]
                                mem[_15513 + 168] = mem[_15514]
                                mem[_15513 + 200 len ceil32(_15675)] = mem[_15514 + 32 len ceil32(_15675)]
                                if ceil32(_15675) > _15675:
                                    mem[_15675 + _15513 + 200] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 96, 0, mem[_15513 + 168 len ceil32(_15675) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                s = 0
                                t = 0
                                u = _15513 + ceil32(return_data.size) + 196
                                while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                    s = s + 1
                                    t = t + 1
                                    u = u + 32
                                    continue 
                                mem[_15513 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15513 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15513 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xd293aba4 with:
                                 gas gas_remaining wei
                                args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15603 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15603] == bool(mem[_15603])
                            if ext_call.return_data[0]:
                                _15913 = mem[64]
                                mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                mem[mem[64] + 32] = 96
                                mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                idx = 0
                                s = 0
                                t = mem[64] + 128
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = stor[s + sha3(mem[0])]
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15913 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                mem[_15913 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15913 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: mem[mem[64] len _15913 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                _15914 = mem[64]
                                mem[mem[64] + 36] = 0
                                _15915 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_15915 + 32 len 4] = changeBurnable(bool arg1)
                                mem[_15914 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15914 + 72] = address(ext_call.return_data[0])
                                mem[_15914 + 104] = 96
                                _16042 = mem[_15915]
                                mem[_15914 + 168] = mem[_15915]
                                mem[_15914 + 200 len ceil32(_16042)] = mem[_15915 + 32 len ceil32(_16042)]
                                if ceil32(_16042) > _16042:
                                    mem[_16042 + _15914 + 200] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 96, 0, mem[_15914 + 168 len ceil32(_16042) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = 0
                                t = _15914 + ceil32(return_data.size) + 196
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15914 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15914 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15914 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                else:
                    mem[(2 * ceil32(return_data.size)) + 324] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 192
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xec5a4bdd with:
                             gas gas_remaining wei
                            args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        idx = 0
                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                            if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                revert with 0, 50
                            mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                            if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    revert with 0, 50
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    revert with 0, 50
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                _15683 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                _15684 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_15684 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_15684 + 36 len 28]
                                mem[_15683 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15683 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                mem[_15683 + 136] = 96
                                _15804 = mem[_15684]
                                mem[_15683 + 200] = mem[_15684]
                                s = 0
                                while s < _15804:
                                    mem[s + _15683 + 232] = mem[s + _15684 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_15804) > _15804:
                                    mem[_15804 + _15683 + 232] = 0
                                mem[_15683 + 168] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_15683 + 200 len ceil32(_15804) + 32]
                                mem[_15683 + 100] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15683 + ceil32(return_data.size) + 100
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                            if ext_call.return_data[0]:
                                _15517 = mem[64]
                                mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                mem[mem[64] + 32] = 96
                                mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                idx = 0
                                s = 0
                                t = mem[64] + 128
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = stor[s + sha3(mem[0])]
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15517 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                mem[_15517 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15517 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: mem[mem[64] len _15517 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                _15518 = mem[64]
                                mem[mem[64] + 36] = 0
                                _15519 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_15519 + 32 len 4] = changeBurnable(bool arg1)
                                mem[_15518 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15518 + 72] = address(ext_call.return_data[0])
                                mem[_15518 + 104] = 96
                                _15681 = mem[_15519]
                                mem[_15518 + 168] = mem[_15519]
                                mem[_15518 + 200 len ceil32(_15681)] = mem[_15519 + 32 len ceil32(_15681)]
                                if ceil32(_15681) > _15681:
                                    mem[_15681 + _15518 + 200] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 96, 0, mem[_15518 + 168 len ceil32(_15681) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                s = 0
                                t = 0
                                u = _15518 + ceil32(return_data.size) + 196
                                while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                    s = s + 1
                                    t = t + 1
                                    u = u + 32
                                    continue 
                                mem[_15518 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15518 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15518 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xd293aba4 with:
                                 gas gas_remaining wei
                                args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15606 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15606] == bool(mem[_15606])
                            if ext_call.return_data[0]:
                                _15920 = mem[64]
                                mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                mem[mem[64] + 32] = 96
                                mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                idx = 0
                                s = 0
                                t = mem[64] + 128
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = stor[s + sha3(mem[0])]
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15920 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                mem[_15920 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15920 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: mem[mem[64] len _15920 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                _15921 = mem[64]
                                mem[mem[64] + 36] = 0
                                _15922 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_15922 + 32 len 4] = changeBurnable(bool arg1)
                                mem[_15921 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15921 + 72] = address(ext_call.return_data[0])
                                mem[_15921 + 104] = 96
                                _16045 = mem[_15922]
                                mem[_15921 + 168] = mem[_15922]
                                mem[_15921 + 200 len ceil32(_16045)] = mem[_15922 + 32 len ceil32(_16045)]
                                if ceil32(_16045) > _16045:
                                    mem[_16045 + _15921 + 200] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 96, 0, mem[_15921 + 168 len ceil32(_16045) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = 0
                                t = _15921 + ceil32(return_data.size) + 196
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15921 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15921 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15921 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                    else:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 356] == bool(mem[(2 * ceil32(return_data.size)) + 356])
                        if not mem[(2 * ceil32(return_data.size)) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 192
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < 0:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xec5a4bdd with:
                             gas gas_remaining wei
                            args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        idx = 0
                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                            if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                revert with 0, 50
                            mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                            if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    revert with 0, 50
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    revert with 0, 50
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                _15689 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                _15690 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_15690 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_15690 + 36 len 28]
                                mem[_15689 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15689 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                mem[_15689 + 136] = 96
                                _15805 = mem[_15690]
                                mem[_15689 + 200] = mem[_15690]
                                s = 0
                                while s < _15805:
                                    mem[s + _15689 + 232] = mem[s + _15690 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_15805) > _15805:
                                    mem[_15805 + _15689 + 232] = 0
                                mem[_15689 + 168] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_15689 + 200 len ceil32(_15805) + 32]
                                mem[_15689 + 100] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _15689 + ceil32(return_data.size) + 100
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                            if ext_call.return_data[0]:
                                _15522 = mem[64]
                                mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                mem[mem[64] + 32] = 96
                                mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                idx = 0
                                s = 0
                                t = mem[64] + 128
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = stor[s + sha3(mem[0])]
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15522 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                mem[_15522 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15522 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: mem[mem[64] len _15522 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                _15523 = mem[64]
                                mem[mem[64] + 36] = 0
                                _15524 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_15524 + 32 len 4] = changeBurnable(bool arg1)
                                mem[_15523 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15523 + 72] = address(ext_call.return_data[0])
                                mem[_15523 + 104] = 96
                                _15687 = mem[_15524]
                                mem[_15523 + 168] = mem[_15524]
                                mem[_15523 + 200 len ceil32(_15687)] = mem[_15524 + 32 len ceil32(_15687)]
                                if ceil32(_15687) > _15687:
                                    mem[_15687 + _15523 + 200] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 96, 0, mem[_15523 + 168 len ceil32(_15687) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                s = 0
                                t = 0
                                u = _15523 + ceil32(return_data.size) + 196
                                while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                    s = s + 1
                                    t = t + 1
                                    u = u + 32
                                    continue 
                                mem[_15523 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15523 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15523 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xd293aba4 with:
                                 gas gas_remaining wei
                                args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15609 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15609] == bool(mem[_15609])
                            if ext_call.return_data[0]:
                                _15927 = mem[64]
                                mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                mem[mem[64] + 32] = 96
                                mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                idx = 0
                                s = 0
                                t = mem[64] + 128
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = stor[s + sha3(mem[0])]
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15927 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                mem[_15927 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15927 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: mem[mem[64] len _15927 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                _15928 = mem[64]
                                mem[mem[64] + 36] = 0
                                _15929 = mem[64]
                                mem[mem[64]] = 36
                                mem[64] = mem[64] + 68
                                mem[_15929 + 32 len 4] = changeBurnable(bool arg1)
                                mem[_15928 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                mem[_15928 + 72] = address(ext_call.return_data[0])
                                mem[_15928 + 104] = 96
                                _16048 = mem[_15929]
                                mem[_15928 + 168] = mem[_15929]
                                mem[_15928 + 200 len ceil32(_16048)] = mem[_15929 + 32 len ceil32(_16048)]
                                if ceil32(_16048) > _16048:
                                    mem[_16048 + _15928 + 200] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 96, 0, mem[_15928 + 168 len ceil32(_16048) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                s = 0
                                t = _15928 + ceil32(return_data.size) + 196
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                    idx = idx + 1
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                mem[_15928 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                s = _15928 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                t = 0
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                    s = s + 32
                                    t = t + 1
                                    idx = idx + 1
                                    continue 
                                emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15928 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xf7dab517 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    revert with 0, 'PrivateExitModule: LP is not Burnable'
                if ext_call.return_data[0]:
                    mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 196] = this.address
                    mem[(4 * ceil32(return_data.size)) + 228] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                    mem[(4 * ceil32(return_data.size)) + 128] = 100
                    mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0x23b872dd(?????)
                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                    mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 324 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 0
                    mem[(4 * ceil32(return_data.size)) + 424] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[(4 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 360] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            mem[(4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(6 * ceil32(return_data.size)) + 324] = 0
                            mem[(6 * ceil32(return_data.size)) + 360] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            mem[(6 * ceil32(return_data.size)) + 392] = 128
                            mem[(6 * ceil32(return_data.size)) + 488] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 356
                            t = (6 * ceil32(return_data.size)) + 520
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 424] = 160
                            mem[(6 * ceil32(return_data.size)) + 520] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 356
                            t = (6 * ceil32(return_data.size)) + 552
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 456] = 192
                            mem[(6 * ceil32(return_data.size)) + 552] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 356
                            t = (6 * ceil32(return_data.size)) + 584
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xec5a4bdd with:
                                 gas gas_remaining wei
                                args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                            mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 356
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    revert with 0, 50
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        revert with 0, 50
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    _15719 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                    _15720 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_15720 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_15720 + 36 len 28]
                                    mem[_15719 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15719 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                    mem[_15719 + 136] = 96
                                    _15810 = mem[_15720]
                                    mem[_15719 + 200] = mem[_15720]
                                    s = 0
                                    while s < _15810:
                                        mem[s + _15719 + 232] = mem[s + _15720 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_15810) > _15810:
                                        mem[_15810 + _15719 + 232] = 0
                                    mem[_15719 + 168] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_15719 + 200 len ceil32(_15810) + 32]
                                    mem[_15719 + 100] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _15719 + ceil32(return_data.size) + 100
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                if ext_call.return_data[0]:
                                    _15547 = mem[64]
                                    mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    mem[mem[64] + 32] = 96
                                    mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 128
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = stor[s + sha3(mem[0])]
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15547 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                    mem[_15547 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15547 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: mem[mem[64] len _15547 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    _15548 = mem[64]
                                    mem[mem[64] + 36] = 0
                                    _15549 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_15549 + 32 len 4] = changeBurnable(bool arg1)
                                    mem[_15548 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15548 + 72] = address(ext_call.return_data[0])
                                    mem[_15548 + 104] = 96
                                    _15717 = mem[_15549]
                                    mem[_15548 + 168] = mem[_15549]
                                    mem[_15548 + 200 len ceil32(_15717)] = mem[_15549 + 32 len ceil32(_15717)]
                                    if ceil32(_15717) > _15717:
                                        mem[_15717 + _15548 + 200] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 96, 0, mem[_15548 + 168 len ceil32(_15717) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    s = 0
                                    t = 0
                                    u = _15548 + ceil32(return_data.size) + 196
                                    while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    mem[_15548 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15548 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15548 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15624 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_15624] == bool(mem[_15624])
                                if ext_call.return_data[0]:
                                    _15962 = mem[64]
                                    mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    mem[mem[64] + 32] = 96
                                    mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 128
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = stor[s + sha3(mem[0])]
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15962 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                    mem[_15962 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15962 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: mem[mem[64] len _15962 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    _15963 = mem[64]
                                    mem[mem[64] + 36] = 0
                                    _15964 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_15964 + 32 len 4] = changeBurnable(bool arg1)
                                    mem[_15963 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15963 + 72] = address(ext_call.return_data[0])
                                    mem[_15963 + 104] = 96
                                    _16063 = mem[_15964]
                                    mem[_15963 + 168] = mem[_15964]
                                    mem[_15963 + 200 len ceil32(_16063)] = mem[_15964 + 32 len ceil32(_16063)]
                                    if ceil32(_16063) > _16063:
                                        mem[_16063 + _15963 + 200] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 96, 0, mem[_15963 + 168 len ceil32(_16063) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    idx = 0
                                    s = 0
                                    t = _15963 + ceil32(return_data.size) + 196
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15963 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15963 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15963 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        else:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(4 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 360] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            mem[(4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(6 * ceil32(return_data.size)) + 324] = 0
                            mem[(6 * ceil32(return_data.size)) + 360] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            mem[(6 * ceil32(return_data.size)) + 392] = 128
                            mem[(6 * ceil32(return_data.size)) + 488] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 356
                            t = (6 * ceil32(return_data.size)) + 520
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 424] = 160
                            mem[(6 * ceil32(return_data.size)) + 520] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 356
                            t = (6 * ceil32(return_data.size)) + 552
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 456] = 192
                            mem[(6 * ceil32(return_data.size)) + 552] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + 356
                            t = (6 * ceil32(return_data.size)) + 584
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xec5a4bdd with:
                                 gas gas_remaining wei
                                args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                            mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + 356
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    revert with 0, 50
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        revert with 0, 50
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    _15725 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                    _15726 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_15726 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_15726 + 36 len 28]
                                    mem[_15725 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15725 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                    mem[_15725 + 136] = 96
                                    _15811 = mem[_15726]
                                    mem[_15725 + 200] = mem[_15726]
                                    s = 0
                                    while s < _15811:
                                        mem[s + _15725 + 232] = mem[s + _15726 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_15811) > _15811:
                                        mem[_15811 + _15725 + 232] = 0
                                    mem[_15725 + 168] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_15725 + 200 len ceil32(_15811) + 32]
                                    mem[_15725 + 100] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _15725 + ceil32(return_data.size) + 100
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                if ext_call.return_data[0]:
                                    _15552 = mem[64]
                                    mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    mem[mem[64] + 32] = 96
                                    mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 128
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = stor[s + sha3(mem[0])]
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15552 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                    mem[_15552 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15552 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: mem[mem[64] len _15552 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    _15553 = mem[64]
                                    mem[mem[64] + 36] = 0
                                    _15554 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_15554 + 32 len 4] = changeBurnable(bool arg1)
                                    mem[_15553 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15553 + 72] = address(ext_call.return_data[0])
                                    mem[_15553 + 104] = 96
                                    _15723 = mem[_15554]
                                    mem[_15553 + 168] = mem[_15554]
                                    mem[_15553 + 200 len ceil32(_15723)] = mem[_15554 + 32 len ceil32(_15723)]
                                    if ceil32(_15723) > _15723:
                                        mem[_15723 + _15553 + 200] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 96, 0, mem[_15553 + 168 len ceil32(_15723) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    s = 0
                                    t = 0
                                    u = _15553 + ceil32(return_data.size) + 196
                                    while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    mem[_15553 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15553 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15553 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15627 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_15627] == bool(mem[_15627])
                                if ext_call.return_data[0]:
                                    _15969 = mem[64]
                                    mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    mem[mem[64] + 32] = 96
                                    mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 128
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = stor[s + sha3(mem[0])]
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15969 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                    mem[_15969 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15969 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: mem[mem[64] len _15969 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    _15970 = mem[64]
                                    mem[mem[64] + 36] = 0
                                    _15971 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_15971 + 32 len 4] = changeBurnable(bool arg1)
                                    mem[_15970 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15970 + 72] = address(ext_call.return_data[0])
                                    mem[_15970 + 104] = 96
                                    _16066 = mem[_15971]
                                    mem[_15970 + 168] = mem[_15971]
                                    mem[_15970 + 200 len ceil32(_16066)] = mem[_15971 + 32 len ceil32(_16066)]
                                    if ceil32(_16066) > _16066:
                                        mem[_16066 + _15970 + 200] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 96, 0, mem[_15970 + 168 len ceil32(_16066) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    idx = 0
                                    s = 0
                                    t = _15970 + ceil32(return_data.size) + 196
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15970 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15970 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15970 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                    else:
                        mem[(4 * ceil32(return_data.size)) + 324] = return_data.size
                        mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 192
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xec5a4bdd with:
                                 gas gas_remaining wei
                                args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    revert with 0, 50
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        revert with 0, 50
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    _15731 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                    _15732 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_15732 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_15732 + 36 len 28]
                                    mem[_15731 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15731 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                    mem[_15731 + 136] = 96
                                    _15812 = mem[_15732]
                                    mem[_15731 + 200] = mem[_15732]
                                    s = 0
                                    while s < _15812:
                                        mem[s + _15731 + 232] = mem[s + _15732 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_15812) > _15812:
                                        mem[_15812 + _15731 + 232] = 0
                                    mem[_15731 + 168] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_15731 + 200 len ceil32(_15812) + 32]
                                    mem[_15731 + 100] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _15731 + ceil32(return_data.size) + 100
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                if ext_call.return_data[0]:
                                    _15557 = mem[64]
                                    mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    mem[mem[64] + 32] = 96
                                    mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 128
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = stor[s + sha3(mem[0])]
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15557 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                    mem[_15557 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15557 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: mem[mem[64] len _15557 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    _15558 = mem[64]
                                    mem[mem[64] + 36] = 0
                                    _15559 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_15559 + 32 len 4] = changeBurnable(bool arg1)
                                    mem[_15558 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15558 + 72] = address(ext_call.return_data[0])
                                    mem[_15558 + 104] = 96
                                    _15729 = mem[_15559]
                                    mem[_15558 + 168] = mem[_15559]
                                    mem[_15558 + 200 len ceil32(_15729)] = mem[_15559 + 32 len ceil32(_15729)]
                                    if ceil32(_15729) > _15729:
                                        mem[_15729 + _15558 + 200] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 96, 0, mem[_15558 + 168 len ceil32(_15729) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    s = 0
                                    t = 0
                                    u = _15558 + ceil32(return_data.size) + 196
                                    while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    mem[_15558 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15558 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15558 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15630 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_15630] == bool(mem[_15630])
                                if ext_call.return_data[0]:
                                    _15976 = mem[64]
                                    mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    mem[mem[64] + 32] = 96
                                    mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 128
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = stor[s + sha3(mem[0])]
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15976 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                    mem[_15976 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15976 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: mem[mem[64] len _15976 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    _15977 = mem[64]
                                    mem[mem[64] + 36] = 0
                                    _15978 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_15978 + 32 len 4] = changeBurnable(bool arg1)
                                    mem[_15977 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15977 + 72] = address(ext_call.return_data[0])
                                    mem[_15977 + 104] = 96
                                    _16069 = mem[_15978]
                                    mem[_15977 + 168] = mem[_15978]
                                    mem[_15977 + 200 len ceil32(_16069)] = mem[_15978 + 32 len ceil32(_16069)]
                                    if ceil32(_16069) > _16069:
                                        mem[_16069 + _15977 + 200] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 96, 0, mem[_15977 + 168 len ceil32(_16069) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    idx = 0
                                    s = 0
                                    t = _15977 + ceil32(return_data.size) + 196
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15977 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15977 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15977 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        else:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
                            if not mem[(4 * ceil32(return_data.size)) + 356]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 128
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 192
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 0
                            idx = 0
                            s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                            while idx < 0:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xec5a4bdd with:
                                 gas gas_remaining wei
                                args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                    revert with 0, 50
                                mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        revert with 0, 50
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    _15737 = mem[64]
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                    _15738 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_15738 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_15738 + 36 len 28]
                                    mem[_15737 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15737 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                    mem[_15737 + 136] = 96
                                    _15813 = mem[_15738]
                                    mem[_15737 + 200] = mem[_15738]
                                    s = 0
                                    while s < _15813:
                                        mem[s + _15737 + 232] = mem[s + _15738 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_15813) > _15813:
                                        mem[_15813 + _15737 + 232] = 0
                                    mem[_15737 + 168] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_15737 + 200 len ceil32(_15813) + 32]
                                    mem[_15737 + 100] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _15737 + ceil32(return_data.size) + 100
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                if ext_call.return_data[0]:
                                    _15562 = mem[64]
                                    mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    mem[mem[64] + 32] = 96
                                    mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 128
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = stor[s + sha3(mem[0])]
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15562 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                    mem[_15562 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15562 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: mem[mem[64] len _15562 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    _15563 = mem[64]
                                    mem[mem[64] + 36] = 0
                                    _15564 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_15564 + 32 len 4] = changeBurnable(bool arg1)
                                    mem[_15563 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15563 + 72] = address(ext_call.return_data[0])
                                    mem[_15563 + 104] = 96
                                    _15735 = mem[_15564]
                                    mem[_15563 + 168] = mem[_15564]
                                    mem[_15563 + 200 len ceil32(_15735)] = mem[_15564 + 32 len ceil32(_15735)]
                                    if ceil32(_15735) > _15735:
                                        mem[_15735 + _15563 + 200] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 96, 0, mem[_15563 + 168 len ceil32(_15735) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    s = 0
                                    t = 0
                                    u = _15563 + ceil32(return_data.size) + 196
                                    while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                        s = s + 1
                                        t = t + 1
                                        u = u + 32
                                        continue 
                                    mem[_15563 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15563 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15563 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).0xd293aba4 with:
                                     gas gas_remaining wei
                                    args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15633 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_15633] == bool(mem[_15633])
                                if ext_call.return_data[0]:
                                    _15983 = mem[64]
                                    mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    mem[mem[64] + 32] = 96
                                    mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                    idx = 0
                                    s = 0
                                    t = mem[64] + 128
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = stor[s + sha3(mem[0])]
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15983 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                    mem[_15983 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15983 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: mem[mem[64] len _15983 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    _15984 = mem[64]
                                    mem[mem[64] + 36] = 0
                                    _15985 = mem[64]
                                    mem[mem[64]] = 36
                                    mem[64] = mem[64] + 68
                                    mem[_15985 + 32 len 4] = changeBurnable(bool arg1)
                                    mem[_15984 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                    mem[_15984 + 72] = address(ext_call.return_data[0])
                                    mem[_15984 + 104] = 96
                                    _16072 = mem[_15985]
                                    mem[_15984 + 168] = mem[_15985]
                                    mem[_15984 + 200 len ceil32(_16072)] = mem[_15985 + 32 len ceil32(_16072)]
                                    if ceil32(_16072) > _16072:
                                        mem[_16072 + _15984 + 200] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 96, 0, mem[_15984 + 168 len ceil32(_16072) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    idx = 0
                                    s = 0
                                    t = _15984 + ceil32(return_data.size) + 196
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                        mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                        idx = idx + 1
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    mem[_15984 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                    s = _15984 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                    t = 0
                                    idx = 0
                                    while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                        s = s + 32
                                        t = t + 1
                                        idx = idx + 1
                                        continue 
                                    emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_15984 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                else:
                    mem[(4 * ceil32(return_data.size)) + 164] = 1
                    mem[(4 * ceil32(return_data.size)) + 128] = 36
                    mem[(4 * ceil32(return_data.size)) + 164 len 28] = 0
                    mem[(4 * ceil32(return_data.size)) + 160 len 4] = changeBurnable(bool arg1)
                    mem[(4 * ceil32(return_data.size)) + 200] = address(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 232] = 96
                    mem[(4 * ceil32(return_data.size)) + 296] = 36
                    mem[(4 * ceil32(return_data.size)) + 328 len 64] = changeBurnable(bool arg1), 0, 1, 0, address(ext_call.return_data[0]) << 32
                    mem[(4 * ceil32(return_data.size)) + 364] = 0
                    mem[(4 * ceil32(return_data.size)) + 264] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xd293aba4 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 96, 0, 36, changeBurnable(bool arg1), 0, 1, 0, address(ext_call.return_data[0]) << 32 >> 32, 0
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 232] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 264] = this.address
                    mem[(6 * ceil32(return_data.size)) + 296] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                    mem[(6 * ceil32(return_data.size)) + 196] = (8 * ceil32(return_data.size)) + 100
                    mem[(6 * ceil32(return_data.size)) + 232 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(6 * ceil32(return_data.size)) + 228 len 4] = unknown_0x23b872dd(?????)
                    mem[(6 * ceil32(return_data.size)) + 328] = 32
                    mem[(6 * ceil32(return_data.size)) + 360] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 392 len floor32((8 * ceil32(return_data.size)) + 131)] = unknown_0x23b872dd(?????), msg.sender, address(this.address), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), mem[(6 * ceil32(return_data.size)) + 328 len floor32((8 * ceil32(return_data.size)) + 131) - 100]
                    if floor32((8 * ceil32(return_data.size)) + 131) <= (8 * ceil32(return_data.size)) + 100:
                        call address(ext_call.return_data[0]).mem[(6 * ceil32(return_data.size)) + 392 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + 396 len (9 * ceil32(return_data.size)) + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not mem[96]:
                                mem[(6 * ceil32(return_data.size)) + 396] = address(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + 428] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(6 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 392] = 0
                                mem[(7 * ceil32(return_data.size)) + 428] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(7 * ceil32(return_data.size)) + 460] = 128
                                mem[(7 * ceil32(return_data.size)) + 556] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 588
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 492] = 160
                                mem[(7 * ceil32(return_data.size)) + 588] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 620
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 524] = 192
                                mem[(7 * ceil32(return_data.size)) + 620] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 652
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xec5a4bdd with:
                                     gas gas_remaining wei
                                    args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 424
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            revert with 0, 50
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            revert with 0, 50
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                        _18549 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                        _18550 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_18550 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_18550 + 36 len 28]
                                        mem[_18549 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18549 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                        mem[_18549 + 136] = 96
                                        _18774 = mem[_18550]
                                        mem[_18549 + 200] = mem[_18550]
                                        s = 0
                                        while s < _18774:
                                            mem[s + _18549 + 232] = mem[s + _18550 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18774) > _18774:
                                            mem[_18774 + _18549 + 232] = 0
                                        mem[_18549 + 168] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_18549 + 200 len ceil32(_18774) + 32]
                                        mem[_18549 + 100] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _18549 + ceil32(return_data.size) + 100
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                    if ext_call.return_data[0]:
                                        _18239 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18239 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_18239 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18239 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _18239 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _18240 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _18241 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_18241 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_18240 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18240 + 72] = address(ext_call.return_data[0])
                                        mem[_18240 + 104] = 96
                                        _18547 = mem[_18241]
                                        mem[_18240 + 168] = mem[_18241]
                                        mem[_18240 + 200 len ceil32(_18547)] = mem[_18241 + 32 len ceil32(_18547)]
                                        if ceil32(_18547) > _18547:
                                            mem[_18547 + _18240 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_18240 + 168 len ceil32(_18547) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        s = 0
                                        t = 0
                                        u = _18240 + ceil32(return_data.size) + 196
                                        while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_18240 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18240 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_18240 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18342 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_18342] == bool(mem[_18342])
                                    if ext_call.return_data[0]:
                                        _18986 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18986 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_18986 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18986 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _18986 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _18987 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _18988 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_18988 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_18987 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18987 + 72] = address(ext_call.return_data[0])
                                        mem[_18987 + 104] = 96
                                        _19168 = mem[_18988]
                                        mem[_18987 + 168] = mem[_18988]
                                        mem[_18987 + 200 len ceil32(_19168)] = mem[_18988 + 32 len ceil32(_19168)]
                                        if ceil32(_19168) > _19168:
                                            mem[_19168 + _18987 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_18987 + 168 len ceil32(_19168) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        s = 0
                                        t = _18987 + ceil32(return_data.size) + 196
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18987 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18987 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_18987 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                require mem[96] >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + 396] = address(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + 428] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(6 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 392] = 0
                                mem[(7 * ceil32(return_data.size)) + 428] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(7 * ceil32(return_data.size)) + 460] = 128
                                mem[(7 * ceil32(return_data.size)) + 556] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 588
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 492] = 160
                                mem[(7 * ceil32(return_data.size)) + 588] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 620
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 524] = 192
                                mem[(7 * ceil32(return_data.size)) + 620] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 652
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xec5a4bdd with:
                                     gas gas_remaining wei
                                    args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 424
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            revert with 0, 50
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            revert with 0, 50
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                        _18555 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                        _18556 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_18556 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_18556 + 36 len 28]
                                        mem[_18555 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18555 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                        mem[_18555 + 136] = 96
                                        _18775 = mem[_18556]
                                        mem[_18555 + 200] = mem[_18556]
                                        s = 0
                                        while s < _18775:
                                            mem[s + _18555 + 232] = mem[s + _18556 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18775) > _18775:
                                            mem[_18775 + _18555 + 232] = 0
                                        mem[_18555 + 168] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_18555 + 200 len ceil32(_18775) + 32]
                                        mem[_18555 + 100] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _18555 + ceil32(return_data.size) + 100
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                    if ext_call.return_data[0]:
                                        _18244 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18244 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_18244 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18244 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _18244 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _18245 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _18246 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_18246 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_18245 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18245 + 72] = address(ext_call.return_data[0])
                                        mem[_18245 + 104] = 96
                                        _18553 = mem[_18246]
                                        mem[_18245 + 168] = mem[_18246]
                                        mem[_18245 + 200 len ceil32(_18553)] = mem[_18246 + 32 len ceil32(_18553)]
                                        if ceil32(_18553) > _18553:
                                            mem[_18553 + _18245 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_18245 + 168 len ceil32(_18553) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        s = 0
                                        t = 0
                                        u = _18245 + ceil32(return_data.size) + 196
                                        while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_18245 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18245 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_18245 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18345 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_18345] == bool(mem[_18345])
                                    if ext_call.return_data[0]:
                                        _18993 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18993 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_18993 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18993 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _18993 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _18994 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _18995 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_18995 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_18994 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18994 + 72] = address(ext_call.return_data[0])
                                        mem[_18994 + 104] = 96
                                        _19171 = mem[_18995]
                                        mem[_18994 + 168] = mem[_18995]
                                        mem[_18994 + 200 len ceil32(_19171)] = mem[_18995 + 32 len ceil32(_19171)]
                                        if ceil32(_19171) > _19171:
                                            mem[_19171 + _18994 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_18994 + 168 len ceil32(_19171) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        s = 0
                                        t = _18994 + ceil32(return_data.size) + 196
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18994 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18994 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_18994 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        else:
                            mem[(6 * ceil32(return_data.size)) + 392] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + 424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = address(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 128
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 192
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xec5a4bdd with:
                                     gas gas_remaining wei
                                    args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            revert with 0, 50
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            revert with 0, 50
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                        _18561 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                        _18562 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_18562 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_18562 + 36 len 28]
                                        mem[_18561 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18561 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                        mem[_18561 + 136] = 96
                                        _18776 = mem[_18562]
                                        mem[_18561 + 200] = mem[_18562]
                                        s = 0
                                        while s < _18776:
                                            mem[s + _18561 + 232] = mem[s + _18562 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18776) > _18776:
                                            mem[_18776 + _18561 + 232] = 0
                                        mem[_18561 + 168] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_18561 + 200 len ceil32(_18776) + 32]
                                        mem[_18561 + 100] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _18561 + ceil32(return_data.size) + 100
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                    if ext_call.return_data[0]:
                                        _18249 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18249 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_18249 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18249 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _18249 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _18250 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _18251 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_18251 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_18250 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18250 + 72] = address(ext_call.return_data[0])
                                        mem[_18250 + 104] = 96
                                        _18559 = mem[_18251]
                                        mem[_18250 + 168] = mem[_18251]
                                        mem[_18250 + 200 len ceil32(_18559)] = mem[_18251 + 32 len ceil32(_18559)]
                                        if ceil32(_18559) > _18559:
                                            mem[_18559 + _18250 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_18250 + 168 len ceil32(_18559) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        s = 0
                                        t = 0
                                        u = _18250 + ceil32(return_data.size) + 196
                                        while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_18250 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18250 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_18250 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18348 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_18348] == bool(mem[_18348])
                                    if ext_call.return_data[0]:
                                        _19000 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19000 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_19000 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19000 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _19000 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _19001 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _19002 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_19002 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_19001 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_19001 + 72] = address(ext_call.return_data[0])
                                        mem[_19001 + 104] = 96
                                        _19174 = mem[_19002]
                                        mem[_19001 + 168] = mem[_19002]
                                        mem[_19001 + 200 len ceil32(_19174)] = mem[_19002 + 32 len ceil32(_19174)]
                                        if ceil32(_19174) > _19174:
                                            mem[_19174 + _19001 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_19001 + 168 len ceil32(_19174) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        s = 0
                                        t = _19001 + ceil32(return_data.size) + 196
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19001 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19001 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_19001 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 424] == bool(mem[(6 * ceil32(return_data.size)) + 424])
                                if not mem[(6 * ceil32(return_data.size)) + 424]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = address(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 128
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 192
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xec5a4bdd with:
                                     gas gas_remaining wei
                                    args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            revert with 0, 50
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            revert with 0, 50
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                        _18567 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                        _18568 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_18568 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_18568 + 36 len 28]
                                        mem[_18567 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18567 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                        mem[_18567 + 136] = 96
                                        _18777 = mem[_18568]
                                        mem[_18567 + 200] = mem[_18568]
                                        s = 0
                                        while s < _18777:
                                            mem[s + _18567 + 232] = mem[s + _18568 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18777) > _18777:
                                            mem[_18777 + _18567 + 232] = 0
                                        mem[_18567 + 168] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_18567 + 200 len ceil32(_18777) + 32]
                                        mem[_18567 + 100] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _18567 + ceil32(return_data.size) + 100
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                    if ext_call.return_data[0]:
                                        _18254 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18254 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_18254 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18254 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _18254 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _18255 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _18256 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_18256 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_18255 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18255 + 72] = address(ext_call.return_data[0])
                                        mem[_18255 + 104] = 96
                                        _18565 = mem[_18256]
                                        mem[_18255 + 168] = mem[_18256]
                                        mem[_18255 + 200 len ceil32(_18565)] = mem[_18256 + 32 len ceil32(_18565)]
                                        if ceil32(_18565) > _18565:
                                            mem[_18565 + _18255 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_18255 + 168 len ceil32(_18565) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        s = 0
                                        t = 0
                                        u = _18255 + ceil32(return_data.size) + 196
                                        while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_18255 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18255 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_18255 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18351 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_18351] == bool(mem[_18351])
                                    if ext_call.return_data[0]:
                                        _19007 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19007 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_19007 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19007 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _19007 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _19008 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _19009 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_19009 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_19008 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_19008 + 72] = address(ext_call.return_data[0])
                                        mem[_19008 + 104] = 96
                                        _19177 = mem[_19009]
                                        mem[_19008 + 168] = mem[_19009]
                                        mem[_19008 + 200 len ceil32(_19177)] = mem[_19009 + 32 len ceil32(_19177)]
                                        if ceil32(_19177) > _19177:
                                            mem[_19177 + _19008 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_19008 + 168 len ceil32(_19177) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        s = 0
                                        t = _19008 + ceil32(return_data.size) + 196
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19008 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19008 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_19008 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                    else:
                        mem[(15 * ceil32(return_data.size)) + 492] = 0
                        call address(ext_call.return_data[0]).mem[(6 * ceil32(return_data.size)) + 392 len 4] with:
                             gas gas_remaining wei
                            args mem[(6 * ceil32(return_data.size)) + 396 len (9 * ceil32(return_data.size)) + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not mem[96]:
                                mem[(6 * ceil32(return_data.size)) + 396] = address(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + 428] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(6 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 392] = 0
                                mem[(7 * ceil32(return_data.size)) + 428] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(7 * ceil32(return_data.size)) + 460] = 128
                                mem[(7 * ceil32(return_data.size)) + 556] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 588
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 492] = 160
                                mem[(7 * ceil32(return_data.size)) + 588] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 620
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 524] = 192
                                mem[(7 * ceil32(return_data.size)) + 620] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 652
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xec5a4bdd with:
                                     gas gas_remaining wei
                                    args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 424
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            revert with 0, 50
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            revert with 0, 50
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                        _18573 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                        _18574 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_18574 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_18574 + 36 len 28]
                                        mem[_18573 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18573 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                        mem[_18573 + 136] = 96
                                        _18778 = mem[_18574]
                                        mem[_18573 + 200] = mem[_18574]
                                        s = 0
                                        while s < _18778:
                                            mem[s + _18573 + 232] = mem[s + _18574 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18778) > _18778:
                                            mem[_18778 + _18573 + 232] = 0
                                        mem[_18573 + 168] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_18573 + 200 len ceil32(_18778) + 32]
                                        mem[_18573 + 100] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _18573 + ceil32(return_data.size) + 100
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                    if ext_call.return_data[0]:
                                        _18259 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18259 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_18259 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18259 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _18259 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _18260 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _18261 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_18261 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_18260 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18260 + 72] = address(ext_call.return_data[0])
                                        mem[_18260 + 104] = 96
                                        _18571 = mem[_18261]
                                        mem[_18260 + 168] = mem[_18261]
                                        mem[_18260 + 200 len ceil32(_18571)] = mem[_18261 + 32 len ceil32(_18571)]
                                        if ceil32(_18571) > _18571:
                                            mem[_18571 + _18260 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_18260 + 168 len ceil32(_18571) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        s = 0
                                        t = 0
                                        u = _18260 + ceil32(return_data.size) + 196
                                        while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_18260 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18260 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_18260 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18354 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_18354] == bool(mem[_18354])
                                    if ext_call.return_data[0]:
                                        _19014 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19014 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_19014 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19014 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _19014 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _19015 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _19016 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_19016 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_19015 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_19015 + 72] = address(ext_call.return_data[0])
                                        mem[_19015 + 104] = 96
                                        _19180 = mem[_19016]
                                        mem[_19015 + 168] = mem[_19016]
                                        mem[_19015 + 200 len ceil32(_19180)] = mem[_19016 + 32 len ceil32(_19180)]
                                        if ceil32(_19180) > _19180:
                                            mem[_19180 + _19015 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_19015 + 168 len ceil32(_19180) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        s = 0
                                        t = _19015 + ceil32(return_data.size) + 196
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19015 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19015 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_19015 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                require mem[96] >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + 396] = address(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + 428] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(6 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + 392] = 0
                                mem[(7 * ceil32(return_data.size)) + 428] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(7 * ceil32(return_data.size)) + 460] = 128
                                mem[(7 * ceil32(return_data.size)) + 556] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 588
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 492] = 160
                                mem[(7 * ceil32(return_data.size)) + 588] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 620
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 524] = 192
                                mem[(7 * ceil32(return_data.size)) + 620] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + 424
                                t = (7 * ceil32(return_data.size)) + 652
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xec5a4bdd with:
                                     gas gas_remaining wei
                                    args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                                mem[(7 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + 424
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            revert with 0, 50
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            revert with 0, 50
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                        _18579 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                        _18580 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_18580 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_18580 + 36 len 28]
                                        mem[_18579 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18579 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                        mem[_18579 + 136] = 96
                                        _18779 = mem[_18580]
                                        mem[_18579 + 200] = mem[_18580]
                                        s = 0
                                        while s < _18779:
                                            mem[s + _18579 + 232] = mem[s + _18580 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18779) > _18779:
                                            mem[_18779 + _18579 + 232] = 0
                                        mem[_18579 + 168] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_18579 + 200 len ceil32(_18779) + 32]
                                        mem[_18579 + 100] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _18579 + ceil32(return_data.size) + 100
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                    if ext_call.return_data[0]:
                                        _18264 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18264 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_18264 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18264 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _18264 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _18265 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _18266 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_18266 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_18265 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18265 + 72] = address(ext_call.return_data[0])
                                        mem[_18265 + 104] = 96
                                        _18577 = mem[_18266]
                                        mem[_18265 + 168] = mem[_18266]
                                        mem[_18265 + 200 len ceil32(_18577)] = mem[_18266 + 32 len ceil32(_18577)]
                                        if ceil32(_18577) > _18577:
                                            mem[_18577 + _18265 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_18265 + 168 len ceil32(_18577) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        s = 0
                                        t = 0
                                        u = _18265 + ceil32(return_data.size) + 196
                                        while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_18265 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18265 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_18265 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18357 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_18357] == bool(mem[_18357])
                                    if ext_call.return_data[0]:
                                        _19021 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19021 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_19021 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19021 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _19021 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _19022 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _19023 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_19023 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_19022 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_19022 + 72] = address(ext_call.return_data[0])
                                        mem[_19022 + 104] = 96
                                        _19183 = mem[_19023]
                                        mem[_19022 + 168] = mem[_19023]
                                        mem[_19022 + 200 len ceil32(_19183)] = mem[_19023 + 32 len ceil32(_19183)]
                                        if ceil32(_19183) > _19183:
                                            mem[_19183 + _19022 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_19022 + 168 len ceil32(_19183) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        s = 0
                                        t = _19022 + ceil32(return_data.size) + 196
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19022 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19022 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_19022 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                        else:
                            mem[(6 * ceil32(return_data.size)) + 392] = return_data.size
                            mem[(6 * ceil32(return_data.size)) + 424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = address(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 128
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 192
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xec5a4bdd with:
                                     gas gas_remaining wei
                                    args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            revert with 0, 50
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            revert with 0, 50
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                        _18585 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                        _18586 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_18586 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_18586 + 36 len 28]
                                        mem[_18585 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18585 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                        mem[_18585 + 136] = 96
                                        _18780 = mem[_18586]
                                        mem[_18585 + 200] = mem[_18586]
                                        s = 0
                                        while s < _18780:
                                            mem[s + _18585 + 232] = mem[s + _18586 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18780) > _18780:
                                            mem[_18780 + _18585 + 232] = 0
                                        mem[_18585 + 168] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_18585 + 200 len ceil32(_18780) + 32]
                                        mem[_18585 + 100] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _18585 + ceil32(return_data.size) + 100
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                    if ext_call.return_data[0]:
                                        _18269 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18269 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_18269 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18269 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _18269 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _18270 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _18271 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_18271 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_18270 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18270 + 72] = address(ext_call.return_data[0])
                                        mem[_18270 + 104] = 96
                                        _18583 = mem[_18271]
                                        mem[_18270 + 168] = mem[_18271]
                                        mem[_18270 + 200 len ceil32(_18583)] = mem[_18271 + 32 len ceil32(_18583)]
                                        if ceil32(_18583) > _18583:
                                            mem[_18583 + _18270 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_18270 + 168 len ceil32(_18583) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        s = 0
                                        t = 0
                                        u = _18270 + ceil32(return_data.size) + 196
                                        while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_18270 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18270 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_18270 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18360 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_18360] == bool(mem[_18360])
                                    if ext_call.return_data[0]:
                                        _19028 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19028 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_19028 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19028 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _19028 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _19029 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _19030 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_19030 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_19029 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_19029 + 72] = address(ext_call.return_data[0])
                                        mem[_19029 + 104] = 96
                                        _19186 = mem[_19030]
                                        mem[_19029 + 168] = mem[_19030]
                                        mem[_19029 + 200 len ceil32(_19186)] = mem[_19030 + 32 len ceil32(_19186)]
                                        if ceil32(_19186) > _19186:
                                            mem[_19186 + _19029 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_19029 + 168 len ceil32(_19186) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        s = 0
                                        t = _19029 + ceil32(return_data.size) + 196
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19029 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19029 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_19029 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                            else:
                                require return_data.size >= 32
                                require mem[(6 * ceil32(return_data.size)) + 424] == bool(mem[(6 * ceil32(return_data.size)) + 424])
                                if not mem[(6 * ceil32(return_data.size)) + 424]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = address(ext_call.return_data[0])
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 128
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 160
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 192
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
                                idx = 0
                                s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 653
                                while idx < 0:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xec5a4bdd with:
                                     gas gas_remaining wei
                                    args uint256(sub_979d9513[address(cd[4])][cd[36]].field_256), 128, 160, 192, 0, 0, 0
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                idx = 0
                                while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                    if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                        revert with 0, 50
                                    mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                    if uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0) > 0:
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            revert with 0, 50
                                        if idx >= uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            revert with 0, 50
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 4
                                        _18591 = mem[64]
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]][idx + 4].field_0)
                                        _18592 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_18592 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_18592 + 36 len 28]
                                        mem[_18591 + 100] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18591 + 104] = sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0
                                        mem[_18591 + 136] = 96
                                        _18781 = mem[_18592]
                                        mem[_18591 + 200] = mem[_18592]
                                        s = 0
                                        while s < _18781:
                                            mem[s + _18591 + 232] = mem[s + _18592 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18781) > _18781:
                                            mem[_18781 + _18591 + 232] = 0
                                        mem[_18591 + 168] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args sub_979d9513[address(cd[4])][cd[36]][idx + 3].field_0, 96, 0, mem[_18591 + 200 len ceil32(_18781) + 32]
                                        mem[_18591 + 100] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _18591 + ceil32(return_data.size) + 100
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if not uint256(sub_979d9513[address(cd[4])][cd[36]].field_512):
                                    if ext_call.return_data[0]:
                                        _18274 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_18274 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_18274 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18274 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _18274 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _18275 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _18276 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_18276 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_18275 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_18275 + 72] = address(ext_call.return_data[0])
                                        mem[_18275 + 104] = 96
                                        _18589 = mem[_18276]
                                        mem[_18275 + 168] = mem[_18276]
                                        mem[_18275 + 200 len ceil32(_18589)] = mem[_18276 + 32 len ceil32(_18589)]
                                        if ceil32(_18589) > _18589:
                                            mem[_18589 + _18275 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_18275 + 168 len ceil32(_18589) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        s = 0
                                        t = 0
                                        u = _18275 + ceil32(return_data.size) + 196
                                        while s < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[u] = sub_979d9513[address(cd[4])][cd[36]][t + 3].field_0
                                            s = s + 1
                                            t = t + 1
                                            u = u + 32
                                            continue 
                                        mem[_18275 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _18275 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_18275 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 68] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).0xd293aba4 with:
                                         gas gas_remaining wei
                                        args msg.sender, 96, uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18363 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_18363] == bool(mem[_18363])
                                    if ext_call.return_data[0]:
                                        _19035 = mem[64]
                                        mem[mem[64]] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_512)
                                        mem[mem[64] + 32] = 96
                                        mem[mem[64] + 96] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)
                                        mem[0] = sha3(cd[36], sha3(address(cd[4]), 1)) + 3
                                        idx = 0
                                        s = 0
                                        t = mem[64] + 128
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = stor[s + sha3(mem[0])]
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19035 + 64] = (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128
                                        mem[_19035 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19035 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 160
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: mem[mem[64] len _19035 + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + -mem[64] + 160], sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
                                    else:
                                        _19036 = mem[64]
                                        mem[mem[64] + 36] = 0
                                        _19037 = mem[64]
                                        mem[mem[64]] = 36
                                        mem[64] = mem[64] + 68
                                        mem[_19037 + 32 len 4] = changeBurnable(bool arg1)
                                        mem[_19036 + 68] = 0xd293aba400000000000000000000000000000000000000000000000000000000
                                        mem[_19036 + 72] = address(ext_call.return_data[0])
                                        mem[_19036 + 104] = 96
                                        _19189 = mem[_19037]
                                        mem[_19036 + 168] = mem[_19037]
                                        mem[_19036 + 200 len ceil32(_19189)] = mem[_19037 + 32 len ceil32(_19189)]
                                        if ceil32(_19189) > _19189:
                                            mem[_19189 + _19036 + 200] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).0xd293aba4 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 96, 0, mem[_19036 + 168 len ceil32(_19189) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        idx = 0
                                        s = 0
                                        t = _19036 + ceil32(return_data.size) + 196
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_768):
                                            mem[t] = sub_979d9513[address(cd[4])][cd[36]][s + 3].field_0
                                            idx = idx + 1
                                            s = s + 1
                                            t = t + 32
                                            continue 
                                        mem[_19036 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 196] = uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)
                                        s = _19036 + ceil32(return_data.size) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 228
                                        t = 0
                                        idx = 0
                                        while idx < uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024):
                                            mem[s] = uint256(sub_979d9513[address(cd[4])][cd[36]][t + 4].field_0)
                                            s = s + 32
                                            t = t + 1
                                            idx = idx + 1
                                            continue 
                                        emit 0xec0e4b5f: uint256(sub_979d9513[address(cd[4])][cd[36]].field_512), Array(len=uint256(sub_979d9513[address(cd[4])][cd[36]].field_768), data=mem[_19036 + ceil32(return_data.size) + 196 len (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_1024)) + 32]), (32 * uint256(sub_979d9513[address(cd[4])][cd[36]].field_768)) + 128, sub_979d9513[address(cd[4])][cd[36]].field_8, uint256(sub_979d9513[address(cd[4])][cd[36]].field_256)
            stor0 = 1
        return 1
}



}
