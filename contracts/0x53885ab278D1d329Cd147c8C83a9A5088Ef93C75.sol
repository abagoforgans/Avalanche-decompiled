contract main {




// =====================  Runtime code  =====================


#
#  - sub_11479fea(?)
#  - sub_d623f982(?)
#
array of struct stor0;
array of address stor1;
uint256 stor2;
mapping of uint8 sub_a9a66108;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702950;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702951;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702952;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702953;
array of uint128 stor18569430475105882587588266137607568536673111973893317399460219858819262702954;

function sub_a9a66108(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if sub_a9a66108[arg1][arg2] >= 2:
        revert with 0, 33
    return sub_a9a66108[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_b5e30749(?) {
    require calldata.size - 4 >= 32
    if sub_a9a66108[arg1][msg.sender] > 1:
        revert with 0, 33
    if sub_a9a66108[arg1][msg.sender] > 1:
        revert with 0, 33
    return (sub_a9a66108[arg1][msg.sender] == 1)
}

function isFinished(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor0.length:
        revert with 0, 'Cashbag not found'
    if uint128(stor0[arg1].field_768) > uint256(stor0[arg1].field_1280):
        if block.timestamp <= uint256(stor0[arg1].field_1024):
            return 0
    return 1
}

function sub_dae9cf0e(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    return address(stor0[arg1].field_0), 
           uint256(stor0[arg1].field_256),
           uint256(stor0[arg1].field_512),
           uint128(stor0[arg1].field_768),
           uint256(stor0[arg1].field_1024),
           uint256(stor0[arg1].field_1536),
           Mask(96, 0, stor0[arg1].field_1792)
}

function sub_07b3acf1(?) {
    if stor1.length != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function'
    stor2 = 0
    call msg.sender with:
       value stor2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to withdraw commission fee'
    else:
        if not ext_call.success:
            revert with 0, 'Failed to withdraw commission fee'
    ('bool', 'ext_call.success')
}

function sub_1689083d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint64(arg1)
    require arg2 == Mask(96, 0, arg2)
    if uint64(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need to have at least one participant'
    mem[256] = 96
    mem[192] = uint64(arg1)
    mem[160] = msg.value
    mem[128] = msg.value
    mem[320] = Mask(96, 0, arg2)
    if block.timestamp > !arg4:
        revert with 0, 17
    mem[224] = block.timestamp + arg4
    mem[288] = arg3
    stor0.length++
    address(stor0[stor0.length].field_0) = msg.sender
    stor290D[stor0.length] = msg.value
    stor290D[stor0.length] = msg.value
    uint64(stor290D[stor0.length].field_0) = uint64(arg1)
    uint64(stor290D[stor0.length].field_64) = 0
    stor290D[stor0.length] = block.timestamp + arg4
    stor290D[stor0.length] = msg.sender
    if not msg.sender:
        idx = 0
        while stor290D[stor0.length] > idx:
            uint256(stor[idx + sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568)]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * msg.sender) + 128 > idx:
            address(stor[s + sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568)]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * msg.sender) + 31) >> 5
        while stor290D[stor0.length] > idx:
            uint256(stor[idx + sha3((8 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568)]) = 0
            idx = idx + 1
            continue 
    stor290D[stor0.length] = arg3
    stor290D[stor0.length] = Mask(96, 0, arg2)
    if stor0.length < 1:
        revert with 0, 17
    emit 0x8396060a: stor0.length - 1, msg.sender
}

function sub_6438dd09(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor0.length:
        revert with 0, 'Cashbag ID out of bounds'
    if not uint256(stor0[arg1].field_1280):
        mem[(32 * uint256(stor0[arg1].field_1280)) + 640] = 32
        idx = 0
        s = 640
        t = (32 * uint256(stor0[arg1].field_1280)) + 960
        while idx < uint256(stor0[arg1].field_1280):
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, address(stor0[arg1].field_0), 
               uint256(stor0[arg1].field_256),
               uint256(stor0[arg1].field_512),
               uint128(stor0[arg1].field_768),
               uint256(stor0[arg1].field_1024),
               256,
               uint256(stor0[arg1].field_1536),
               Mask(96, 0, stor0[arg1].field_1792),
               uint256(stor0[arg1].field_1280),
               mem[(32 * uint256(stor0[arg1].field_1280)) + 960 len 32 * uint256(stor0[arg1].field_1280)]
    mem[640] = address(stor[sha3(('name', 'stor0', 0) + (8 * arg1) + 5)].field_0)
    idx = 640
    s = 0
    while (32 * uint256(stor0[arg1].field_1280)) + 608 > idx:
        mem[idx + 32] = address(stor[s + sha3(('name', 'stor0', 0) + (8 * arg1) + 5)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor0[arg1].field_1280)) + 640] = 32
    mem[(32 * uint256(stor0[arg1].field_1280)) + 672] = address(stor0[arg1].field_0)
    mem[(32 * uint256(stor0[arg1].field_1280)) + 704] = uint256(stor0[arg1].field_256)
    mem[(32 * uint256(stor0[arg1].field_1280)) + 736] = uint256(stor0[arg1].field_512)
    mem[(32 * uint256(stor0[arg1].field_1280)) + 768] = uint128(stor0[arg1].field_768)
    mem[(32 * uint256(stor0[arg1].field_1280)) + 800] = uint256(stor0[arg1].field_1024)
    mem[(32 * uint256(stor0[arg1].field_1280)) + 832] = 256
    mem[(32 * uint256(stor0[arg1].field_1280)) + 928] = uint256(stor0[arg1].field_1280)
    idx = 0
    s = 640
    t = (32 * uint256(stor0[arg1].field_1280)) + 960
    while idx < uint256(stor0[arg1].field_1280):
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * uint256(stor0[arg1].field_1280)) + 864] = uint256(stor0[arg1].field_1536)
    mem[(32 * uint256(stor0[arg1].field_1280)) + 896] = Mask(96, 0, stor0[arg1].field_1792)
    return memory
      from (32 * uint256(stor0[arg1].field_1280)) + 640
       len (96 * uint256(stor0[arg1].field_1280)) + 320
}

function sub_84b9bc3c(?) {
    if stor0.length > test266151307():
        revert with 0, 65
    mem[96] = stor0.length
    if not stor0.length:
        if stor0.length > test266151307():
            revert with 0, 65
        mem[(32 * stor0.length) + 128] = stor0.length
        mem[64] = (64 * stor0.length) + 160
        if not stor0.length:
            idx = 0
            s = 0
            while idx < stor0.length:
                mem[0] = 0
                if address(stor0[idx].field_0) != msg.sender:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _106 = mem[64]
                mem[64] = mem[64] + 256
                mem[_106] = address(stor0[idx].field_0)
                mem[_106 + 32] = uint256(stor0[idx].field_256)
                mem[_106 + 64] = uint256(stor0[idx].field_512)
                mem[_106 + 96] = uint128(stor0[idx].field_768)
                mem[_106 + 128] = uint256(stor0[idx].field_1024)
                _107 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                mem[_107] = uint256(stor0[idx].field_1280)
                if uint256(stor0[idx].field_1280):
                    mem[0] = sha3(0) + (8 * idx) + 5
                    mem[_107 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                    t = _107 + 32
                    u = sha3(mem[0])
                    while _107 + (32 * uint256(stor0[idx].field_1280)) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_106 + 160] = _107
                mem[_106 + 192] = uint256(stor0[idx].field_1536)
                mem[_106 + 224] = Mask(96, 0, stor0[idx].field_1792)
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _106
                if s >= mem[(32 * stor0.length) + 128]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor0.length) + 160] = idx
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _98 = mem[64]
            mem[mem[64]] = 96
            _103 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 128
            v = mem[64] + (32 * mem[96]) + 128
            while idx < _103:
                mem[u] = v + -_98 - 128
                _193 = mem[t]
                mem[v] = mem[mem[t] + 12 len 20]
                mem[v + 32] = mem[_193 + 32]
                mem[v + 64] = mem[_193 + 64]
                mem[v + 96] = mem[_193 + 112 len 16]
                mem[v + 128] = mem[_193 + 128]
                _202 = mem[_193 + 160]
                mem[v + 160] = 256
                _203 = mem[_202]
                mem[v + 256] = mem[_202]
                s = 0
                w = _202 + 32
                x = v + 288
                while s < _203:
                    mem[x] = mem[w + 12 len 20]
                    s = s + 1
                    w = w + 32
                    x = x + 32
                    continue 
                mem[v + 192] = mem[_193 + 192]
                mem[v + 224] = mem[_193 + 244 len 12]
                idx = idx + 1
                t = t + 32
                u = u + 32
                v = v + (32 * _203) + 288
                continue 
            mem[_98 + 32] = v - _98
            _192 = mem[(32 * stor0.length) + 128]
            mem[v] = mem[(32 * stor0.length) + 128]
            mem[v + 32 len 32 * _192] = mem[(32 * stor0.length) + 160 len 32 * _192]
            mem[_98 + 64] = s
            return memory
              from mem[64]
               len v + (32 * _192) + -mem[64] + 32
        mem[(32 * stor0.length) + 160 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            if address(stor0[idx].field_0) != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _109 = mem[64]
            mem[64] = mem[64] + 256
            mem[_109] = address(stor0[idx].field_0)
            mem[_109 + 32] = uint256(stor0[idx].field_256)
            mem[_109 + 64] = uint256(stor0[idx].field_512)
            mem[_109 + 96] = uint128(stor0[idx].field_768)
            mem[_109 + 128] = uint256(stor0[idx].field_1024)
            _110 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
            mem[_110] = uint256(stor0[idx].field_1280)
            if uint256(stor0[idx].field_1280):
                mem[0] = sha3(0) + (8 * idx) + 5
                mem[_110 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                t = _110 + 32
                u = sha3(mem[0])
                while _110 + (32 * uint256(stor0[idx].field_1280)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_109 + 160] = _110
            mem[_109 + 192] = uint256(stor0[idx].field_1536)
            mem[_109 + 224] = Mask(96, 0, stor0[idx].field_1792)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _109
            if s >= mem[(32 * stor0.length) + 128]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor0.length) + 160] = idx
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _100 = mem[64]
        mem[mem[64]] = 96
        _104 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 128
        v = mem[64] + (32 * mem[96]) + 128
        while idx < _104:
            mem[u] = v + -_100 - 128
            _195 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_195 + 32]
            mem[v + 64] = mem[_195 + 64]
            mem[v + 96] = mem[_195 + 112 len 16]
            mem[v + 128] = mem[_195 + 128]
            _209 = mem[_195 + 160]
            mem[v + 160] = 256
            _210 = mem[_209]
            mem[v + 256] = mem[_209]
            s = 0
            w = _209 + 32
            x = v + 288
            while s < _210:
                mem[x] = mem[w + 12 len 20]
                s = s + 1
                w = w + 32
                x = x + 32
                continue 
            mem[v + 192] = mem[_195 + 192]
            mem[v + 224] = mem[_195 + 244 len 12]
            idx = idx + 1
            t = t + 32
            u = u + 32
            v = v + (32 * _210) + 288
            continue 
        mem[_100 + 32] = v - _100
        _194 = mem[(32 * stor0.length) + 128]
        mem[v] = mem[(32 * stor0.length) + 128]
        mem[v + 32 len 32 * _194] = mem[(32 * stor0.length) + 160 len 32 * _194]
        mem[_100 + 64] = s
        return memory
          from mem[64]
           len v + (32 * _194) + -mem[64] + 32
    mem[(32 * stor0.length) + 128] = 0
    mem[(32 * stor0.length) + 160] = 0
    mem[(32 * stor0.length) + 192] = 0
    mem[(32 * stor0.length) + 224] = 0
    mem[(32 * stor0.length) + 256] = 0
    mem[(32 * stor0.length) + 288] = 96
    mem[(32 * stor0.length) + 320] = 0
    mem[(32 * stor0.length) + 352] = 0
    mem[var10002] = var10001
    if not var10003 - 1:
        if stor0.length > test266151307():
            revert with 0, 65
        mem[(32 * stor0.length) + 384] = stor0.length
        mem[64] = (64 * stor0.length) + 416
        if not stor0.length:
            idx = 0
            s = 0
            while idx < stor0.length:
                mem[0] = 0
                if address(stor0[idx].field_0) != msg.sender:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _339 = mem[64]
                mem[64] = mem[64] + 256
                mem[_339] = address(stor0[idx].field_0)
                mem[_339 + 32] = uint256(stor0[idx].field_256)
                mem[_339 + 64] = uint256(stor0[idx].field_512)
                mem[_339 + 96] = uint128(stor0[idx].field_768)
                mem[_339 + 128] = uint256(stor0[idx].field_1024)
                _340 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                mem[_340] = uint256(stor0[idx].field_1280)
                if uint256(stor0[idx].field_1280):
                    mem[0] = sha3(0) + (8 * idx) + 5
                    mem[_340 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                    t = _340 + 32
                    u = sha3(mem[0])
                    while _340 + (32 * uint256(stor0[idx].field_1280)) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_339 + 160] = _340
                mem[_339 + 192] = uint256(stor0[idx].field_1536)
                mem[_339 + 224] = Mask(96, 0, stor0[idx].field_1792)
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _339
                if s >= mem[(32 * stor0.length) + 384]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor0.length) + 416] = idx
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _331 = mem[64]
            mem[mem[64]] = 96
            _335 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 128
            v = mem[64] + (32 * mem[96]) + 128
            while idx < _335:
                mem[u] = v + -_331 - 128
                _426 = mem[t]
                mem[v] = mem[mem[t] + 12 len 20]
                mem[v + 32] = mem[_426 + 32]
                mem[v + 64] = mem[_426 + 64]
                mem[v + 96] = mem[_426 + 112 len 16]
                mem[v + 128] = mem[_426 + 128]
                _434 = mem[_426 + 160]
                mem[v + 160] = 256
                _435 = mem[_434]
                mem[v + 256] = mem[_434]
                s = 0
                w = _434 + 32
                x = v + 288
                while s < _435:
                    mem[x] = mem[w + 12 len 20]
                    s = s + 1
                    w = w + 32
                    x = x + 32
                    continue 
                mem[v + 192] = mem[_426 + 192]
                mem[v + 224] = mem[_426 + 244 len 12]
                idx = idx + 1
                t = t + 32
                u = u + 32
                v = v + (32 * _435) + 288
                continue 
            mem[_331 + 32] = v - _331
            _425 = mem[(32 * stor0.length) + 384]
            mem[v] = mem[(32 * stor0.length) + 384]
            mem[v + 32 len 32 * _425] = mem[(32 * stor0.length) + 416 len 32 * _425]
            mem[_331 + 64] = s
            return memory
              from mem[64]
               len v + (32 * _425) + -mem[64] + 32
        mem[(32 * stor0.length) + 416 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            if address(stor0[idx].field_0) != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _342 = mem[64]
            mem[64] = mem[64] + 256
            mem[_342] = address(stor0[idx].field_0)
            mem[_342 + 32] = uint256(stor0[idx].field_256)
            mem[_342 + 64] = uint256(stor0[idx].field_512)
            mem[_342 + 96] = uint128(stor0[idx].field_768)
            mem[_342 + 128] = uint256(stor0[idx].field_1024)
            _343 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
            mem[_343] = uint256(stor0[idx].field_1280)
            if uint256(stor0[idx].field_1280):
                mem[0] = sha3(0) + (8 * idx) + 5
                mem[_343 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                t = _343 + 32
                u = sha3(mem[0])
                while _343 + (32 * uint256(stor0[idx].field_1280)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_342 + 160] = _343
            mem[_342 + 192] = uint256(stor0[idx].field_1536)
            mem[_342 + 224] = Mask(96, 0, stor0[idx].field_1792)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _342
            if s >= mem[(32 * stor0.length) + 384]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor0.length) + 416] = idx
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _333 = mem[64]
        mem[mem[64]] = 96
        _336 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 128
        v = mem[64] + (32 * mem[96]) + 128
        while idx < _336:
            mem[u] = v + -_333 - 128
            _428 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_428 + 32]
            mem[v + 64] = mem[_428 + 64]
            mem[v + 96] = mem[_428 + 112 len 16]
            mem[v + 128] = mem[_428 + 128]
            _441 = mem[_428 + 160]
            mem[v + 160] = 256
            _442 = mem[_441]
            mem[v + 256] = mem[_441]
            s = 0
            w = _441 + 32
            x = v + 288
            while s < _442:
                mem[x] = mem[w + 12 len 20]
                s = s + 1
                w = w + 32
                x = x + 32
                continue 
            mem[v + 192] = mem[_428 + 192]
            mem[v + 224] = mem[_428 + 244 len 12]
            idx = idx + 1
            t = t + 32
            u = u + 32
            v = v + (32 * _442) + 288
            continue 
        mem[_333 + 32] = v - _333
        _427 = mem[(32 * stor0.length) + 384]
        mem[v] = mem[(32 * stor0.length) + 384]
        mem[v + 32 len 32 * _427] = mem[(32 * stor0.length) + 416 len 32 * _427]
        mem[_333 + 64] = s
        return memory
          from mem[64]
           len v + (32 * _427) + -mem[64] + 32
    mem[(32 * stor0.length) + 384] = 0
    mem[(32 * stor0.length) + 416] = 0
    mem[(32 * stor0.length) + 448] = 0
    mem[(32 * stor0.length) + 480] = 0
    mem[(32 * stor0.length) + 512] = 0
    mem[(32 * stor0.length) + 544] = 96
    mem[(32 * stor0.length) + 576] = 0
    mem[(32 * stor0.length) + 608] = 0
    mem[var14002] = var14001
    if not var14003 - 1:
        if stor0.length > test266151307():
            revert with 0, 65
        mem[(32 * stor0.length) + 640] = stor0.length
        mem[64] = (64 * stor0.length) + 672
        if not stor0.length:
            idx = 0
            s = 0
            while idx < stor0.length:
                mem[0] = 0
                if address(stor0[idx].field_0) != msg.sender:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _571 = mem[64]
                mem[64] = mem[64] + 256
                mem[_571] = address(stor0[idx].field_0)
                mem[_571 + 32] = uint256(stor0[idx].field_256)
                mem[_571 + 64] = uint256(stor0[idx].field_512)
                mem[_571 + 96] = uint128(stor0[idx].field_768)
                mem[_571 + 128] = uint256(stor0[idx].field_1024)
                _572 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                mem[_572] = uint256(stor0[idx].field_1280)
                if uint256(stor0[idx].field_1280):
                    mem[0] = sha3(0) + (8 * idx) + 5
                    mem[_572 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                    t = _572 + 32
                    u = sha3(mem[0])
                    while _572 + (32 * uint256(stor0[idx].field_1280)) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_571 + 160] = _572
                mem[_571 + 192] = uint256(stor0[idx].field_1536)
                mem[_571 + 224] = Mask(96, 0, stor0[idx].field_1792)
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _571
                if s >= mem[(32 * stor0.length) + 640]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor0.length) + 672] = idx
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _561 = mem[64]
            mem[mem[64]] = 96
            _567 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 128
            v = mem[64] + (32 * mem[96]) + 128
            while idx < _567:
                mem[u] = v + -_561 - 128
                _658 = mem[t]
                mem[v] = mem[mem[t] + 12 len 20]
                mem[v + 32] = mem[_658 + 32]
                mem[v + 64] = mem[_658 + 64]
                mem[v + 96] = mem[_658 + 112 len 16]
                mem[v + 128] = mem[_658 + 128]
                _666 = mem[_658 + 160]
                mem[v + 160] = 256
                _667 = mem[_666]
                mem[v + 256] = mem[_666]
                s = 0
                w = _666 + 32
                x = v + 288
                while s < _667:
                    mem[x] = mem[w + 12 len 20]
                    s = s + 1
                    w = w + 32
                    x = x + 32
                    continue 
                mem[v + 192] = mem[_658 + 192]
                mem[v + 224] = mem[_658 + 244 len 12]
                idx = idx + 1
                t = t + 32
                u = u + 32
                v = v + (32 * _667) + 288
                continue 
            mem[_561 + 32] = v - _561
            _657 = mem[(32 * stor0.length) + 640]
            mem[v] = mem[(32 * stor0.length) + 640]
            mem[v + 32 len 32 * _657] = mem[(32 * stor0.length) + 672 len 32 * _657]
            mem[_561 + 64] = s
            return memory
              from mem[64]
               len v + (32 * _657) + -mem[64] + 32
        mem[(32 * stor0.length) + 672 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            if address(stor0[idx].field_0) != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _574 = mem[64]
            mem[64] = mem[64] + 256
            mem[_574] = address(stor0[idx].field_0)
            mem[_574 + 32] = uint256(stor0[idx].field_256)
            mem[_574 + 64] = uint256(stor0[idx].field_512)
            mem[_574 + 96] = uint128(stor0[idx].field_768)
            mem[_574 + 128] = uint256(stor0[idx].field_1024)
            _575 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
            mem[_575] = uint256(stor0[idx].field_1280)
            if uint256(stor0[idx].field_1280):
                mem[0] = sha3(0) + (8 * idx) + 5
                mem[_575 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                t = _575 + 32
                u = sha3(mem[0])
                while _575 + (32 * uint256(stor0[idx].field_1280)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_574 + 160] = _575
            mem[_574 + 192] = uint256(stor0[idx].field_1536)
            mem[_574 + 224] = Mask(96, 0, stor0[idx].field_1792)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _574
            if s >= mem[(32 * stor0.length) + 640]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor0.length) + 672] = idx
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _563 = mem[64]
        mem[mem[64]] = 96
        _568 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 128
        v = mem[64] + (32 * mem[96]) + 128
        while idx < _568:
            mem[u] = v + -_563 - 128
            _660 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_660 + 32]
            mem[v + 64] = mem[_660 + 64]
            mem[v + 96] = mem[_660 + 112 len 16]
            mem[v + 128] = mem[_660 + 128]
            _673 = mem[_660 + 160]
            mem[v + 160] = 256
            _674 = mem[_673]
            mem[v + 256] = mem[_673]
            s = 0
            w = _673 + 32
            x = v + 288
            while s < _674:
                mem[x] = mem[w + 12 len 20]
                s = s + 1
                w = w + 32
                x = x + 32
                continue 
            mem[v + 192] = mem[_660 + 192]
            mem[v + 224] = mem[_660 + 244 len 12]
            idx = idx + 1
            t = t + 32
            u = u + 32
            v = v + (32 * _674) + 288
            continue 
        mem[_563 + 32] = v - _563
        _659 = mem[(32 * stor0.length) + 640]
        mem[v] = mem[(32 * stor0.length) + 640]
        mem[v + 32 len 32 * _659] = mem[(32 * stor0.length) + 672 len 32 * _659]
        mem[_563 + 64] = s
        return memory
          from mem[64]
           len v + (32 * _659) + -mem[64] + 32
    mem[(32 * stor0.length) + 640] = 0
    mem[(32 * stor0.length) + 672] = 0
    mem[(32 * stor0.length) + 704] = 0
    mem[(32 * stor0.length) + 736] = 0
    mem[(32 * stor0.length) + 768] = 0
    mem[(32 * stor0.length) + 800] = 96
    mem[(32 * stor0.length) + 832] = 0
    mem[(32 * stor0.length) + 864] = 0
    mem[var18002] = var18001
    if not var18003 - 1:
        if stor0.length > test266151307():
            revert with 0, 65
        mem[(32 * stor0.length) + 896] = stor0.length
        mem[64] = (64 * stor0.length) + 928
        if not stor0.length:
            idx = 0
            s = 0
            while idx < stor0.length:
                mem[0] = 0
                if address(stor0[idx].field_0) != msg.sender:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _803 = mem[64]
                mem[64] = mem[64] + 256
                mem[_803] = address(stor0[idx].field_0)
                mem[_803 + 32] = uint256(stor0[idx].field_256)
                mem[_803 + 64] = uint256(stor0[idx].field_512)
                mem[_803 + 96] = uint128(stor0[idx].field_768)
                mem[_803 + 128] = uint256(stor0[idx].field_1024)
                _804 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                mem[_804] = uint256(stor0[idx].field_1280)
                if uint256(stor0[idx].field_1280):
                    mem[0] = sha3(0) + (8 * idx) + 5
                    mem[_804 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                    t = _804 + 32
                    u = sha3(mem[0])
                    while _804 + (32 * uint256(stor0[idx].field_1280)) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_803 + 160] = _804
                mem[_803 + 192] = uint256(stor0[idx].field_1536)
                mem[_803 + 224] = Mask(96, 0, stor0[idx].field_1792)
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _803
                if s >= mem[(32 * stor0.length) + 896]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor0.length) + 928] = idx
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _793 = mem[64]
            mem[mem[64]] = 96
            _799 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 128
            v = mem[64] + (32 * mem[96]) + 128
            while idx < _799:
                mem[u] = v + -_793 - 128
                _890 = mem[t]
                mem[v] = mem[mem[t] + 12 len 20]
                mem[v + 32] = mem[_890 + 32]
                mem[v + 64] = mem[_890 + 64]
                mem[v + 96] = mem[_890 + 112 len 16]
                mem[v + 128] = mem[_890 + 128]
                _898 = mem[_890 + 160]
                mem[v + 160] = 256
                _899 = mem[_898]
                mem[v + 256] = mem[_898]
                s = 0
                w = _898 + 32
                x = v + 288
                while s < _899:
                    mem[x] = mem[w + 12 len 20]
                    s = s + 1
                    w = w + 32
                    x = x + 32
                    continue 
                mem[v + 192] = mem[_890 + 192]
                mem[v + 224] = mem[_890 + 244 len 12]
                idx = idx + 1
                t = t + 32
                u = u + 32
                v = v + (32 * _899) + 288
                continue 
            mem[_793 + 32] = v - _793
            _889 = mem[(32 * stor0.length) + 896]
            mem[v] = mem[(32 * stor0.length) + 896]
            mem[v + 32 len 32 * _889] = mem[(32 * stor0.length) + 928 len 32 * _889]
            mem[_793 + 64] = s
            return memory
              from mem[64]
               len v + (32 * _889) + -mem[64] + 32
        mem[(32 * stor0.length) + 928 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            if address(stor0[idx].field_0) != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _806 = mem[64]
            mem[64] = mem[64] + 256
            mem[_806] = address(stor0[idx].field_0)
            mem[_806 + 32] = uint256(stor0[idx].field_256)
            mem[_806 + 64] = uint256(stor0[idx].field_512)
            mem[_806 + 96] = uint128(stor0[idx].field_768)
            mem[_806 + 128] = uint256(stor0[idx].field_1024)
            _807 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
            mem[_807] = uint256(stor0[idx].field_1280)
            if uint256(stor0[idx].field_1280):
                mem[0] = sha3(0) + (8 * idx) + 5
                mem[_807 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                t = _807 + 32
                u = sha3(mem[0])
                while _807 + (32 * uint256(stor0[idx].field_1280)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_806 + 160] = _807
            mem[_806 + 192] = uint256(stor0[idx].field_1536)
            mem[_806 + 224] = Mask(96, 0, stor0[idx].field_1792)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _806
            if s >= mem[(32 * stor0.length) + 896]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor0.length) + 928] = idx
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _795 = mem[64]
        mem[mem[64]] = 96
        _800 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 128
        v = mem[64] + (32 * mem[96]) + 128
        while idx < _800:
            mem[u] = v + -_795 - 128
            _892 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_892 + 32]
            mem[v + 64] = mem[_892 + 64]
            mem[v + 96] = mem[_892 + 112 len 16]
            mem[v + 128] = mem[_892 + 128]
            _905 = mem[_892 + 160]
            mem[v + 160] = 256
            _906 = mem[_905]
            mem[v + 256] = mem[_905]
            s = 0
            w = _905 + 32
            x = v + 288
            while s < _906:
                mem[x] = mem[w + 12 len 20]
                s = s + 1
                w = w + 32
                x = x + 32
                continue 
            mem[v + 192] = mem[_892 + 192]
            mem[v + 224] = mem[_892 + 244 len 12]
            idx = idx + 1
            t = t + 32
            u = u + 32
            v = v + (32 * _906) + 288
            continue 
        mem[_795 + 32] = v - _795
        _891 = mem[(32 * stor0.length) + 896]
        mem[v] = mem[(32 * stor0.length) + 896]
        mem[v + 32 len 32 * _891] = mem[(32 * stor0.length) + 928 len 32 * _891]
        mem[_795 + 64] = s
        return memory
          from mem[64]
           len v + (32 * _891) + -mem[64] + 32
    mem[(32 * stor0.length) + 896] = 0
    mem[(32 * stor0.length) + 928] = 0
    mem[(32 * stor0.length) + 960] = 0
    mem[(32 * stor0.length) + 992] = 0
    mem[(32 * stor0.length) + 1024] = 0
    mem[(32 * stor0.length) + 1056] = 96
    mem[(32 * stor0.length) + 1088] = 0
    mem[(32 * stor0.length) + 1120] = 0
    mem[var22002] = var22001
    if not var22003 - 1:
        if stor0.length > test266151307():
            revert with 0, 65
        mem[(32 * stor0.length) + 1152] = stor0.length
        mem[64] = (64 * stor0.length) + 1184
        if not stor0.length:
            idx = 0
            s = 0
            while idx < stor0.length:
                mem[0] = 0
                if address(stor0[idx].field_0) != msg.sender:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _1035 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1035] = address(stor0[idx].field_0)
                mem[_1035 + 32] = uint256(stor0[idx].field_256)
                mem[_1035 + 64] = uint256(stor0[idx].field_512)
                mem[_1035 + 96] = uint128(stor0[idx].field_768)
                mem[_1035 + 128] = uint256(stor0[idx].field_1024)
                _1036 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                mem[_1036] = uint256(stor0[idx].field_1280)
                if uint256(stor0[idx].field_1280):
                    mem[0] = sha3(0) + (8 * idx) + 5
                    mem[_1036 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                    t = _1036 + 32
                    u = sha3(mem[0])
                    while _1036 + (32 * uint256(stor0[idx].field_1280)) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_1035 + 160] = _1036
                mem[_1035 + 192] = uint256(stor0[idx].field_1536)
                mem[_1035 + 224] = Mask(96, 0, stor0[idx].field_1792)
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _1035
                if s >= mem[(32 * stor0.length) + 1152]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor0.length) + 1184] = idx
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1025 = mem[64]
            mem[mem[64]] = 96
            _1031 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 128
            v = mem[64] + (32 * mem[96]) + 128
            while idx < _1031:
                mem[u] = v + -_1025 - 128
                _1122 = mem[t]
                mem[v] = mem[mem[t] + 12 len 20]
                mem[v + 32] = mem[_1122 + 32]
                mem[v + 64] = mem[_1122 + 64]
                mem[v + 96] = mem[_1122 + 112 len 16]
                mem[v + 128] = mem[_1122 + 128]
                _1130 = mem[_1122 + 160]
                mem[v + 160] = 256
                _1131 = mem[_1130]
                mem[v + 256] = mem[_1130]
                s = 0
                w = _1130 + 32
                x = v + 288
                while s < _1131:
                    mem[x] = mem[w + 12 len 20]
                    s = s + 1
                    w = w + 32
                    x = x + 32
                    continue 
                mem[v + 192] = mem[_1122 + 192]
                mem[v + 224] = mem[_1122 + 244 len 12]
                idx = idx + 1
                t = t + 32
                u = u + 32
                v = v + (32 * _1131) + 288
                continue 
            mem[_1025 + 32] = v - _1025
            _1121 = mem[(32 * stor0.length) + 1152]
            mem[v] = mem[(32 * stor0.length) + 1152]
            mem[v + 32 len 32 * _1121] = mem[(32 * stor0.length) + 1184 len 32 * _1121]
            mem[_1025 + 64] = s
            return memory
              from mem[64]
               len v + (32 * _1121) + -mem[64] + 32
        mem[(32 * stor0.length) + 1184 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            if address(stor0[idx].field_0) != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1038 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1038] = address(stor0[idx].field_0)
            mem[_1038 + 32] = uint256(stor0[idx].field_256)
            mem[_1038 + 64] = uint256(stor0[idx].field_512)
            mem[_1038 + 96] = uint128(stor0[idx].field_768)
            mem[_1038 + 128] = uint256(stor0[idx].field_1024)
            _1039 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
            mem[_1039] = uint256(stor0[idx].field_1280)
            if uint256(stor0[idx].field_1280):
                mem[0] = sha3(0) + (8 * idx) + 5
                mem[_1039 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                t = _1039 + 32
                u = sha3(mem[0])
                while _1039 + (32 * uint256(stor0[idx].field_1280)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_1038 + 160] = _1039
            mem[_1038 + 192] = uint256(stor0[idx].field_1536)
            mem[_1038 + 224] = Mask(96, 0, stor0[idx].field_1792)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _1038
            if s >= mem[(32 * stor0.length) + 1152]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor0.length) + 1184] = idx
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1027 = mem[64]
        mem[mem[64]] = 96
        _1032 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 128
        v = mem[64] + (32 * mem[96]) + 128
        while idx < _1032:
            mem[u] = v + -_1027 - 128
            _1124 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_1124 + 32]
            mem[v + 64] = mem[_1124 + 64]
            mem[v + 96] = mem[_1124 + 112 len 16]
            mem[v + 128] = mem[_1124 + 128]
            _1137 = mem[_1124 + 160]
            mem[v + 160] = 256
            _1138 = mem[_1137]
            mem[v + 256] = mem[_1137]
            s = 0
            w = _1137 + 32
            x = v + 288
            while s < _1138:
                mem[x] = mem[w + 12 len 20]
                s = s + 1
                w = w + 32
                x = x + 32
                continue 
            mem[v + 192] = mem[_1124 + 192]
            mem[v + 224] = mem[_1124 + 244 len 12]
            idx = idx + 1
            t = t + 32
            u = u + 32
            v = v + (32 * _1138) + 288
            continue 
        mem[_1027 + 32] = v - _1027
        _1123 = mem[(32 * stor0.length) + 1152]
        mem[v] = mem[(32 * stor0.length) + 1152]
        mem[v + 32 len 32 * _1123] = mem[(32 * stor0.length) + 1184 len 32 * _1123]
        mem[_1027 + 64] = s
        return memory
          from mem[64]
           len v + (32 * _1123) + -mem[64] + 32
    mem[(32 * stor0.length) + 1152] = 0
    mem[(32 * stor0.length) + 1184] = 0
    mem[(32 * stor0.length) + 1216] = 0
    mem[(32 * stor0.length) + 1248] = 0
    mem[(32 * stor0.length) + 1280] = 0
    mem[(32 * stor0.length) + 1312] = 96
    mem[(32 * stor0.length) + 1344] = 0
    mem[(32 * stor0.length) + 1376] = 0
    mem[var26002] = var26001
    if not var26003 - 1:
        if stor0.length > test266151307():
            revert with 0, 65
        mem[(32 * stor0.length) + 1408] = stor0.length
        mem[64] = (64 * stor0.length) + 1440
        if not stor0.length:
            idx = 0
            s = 0
            while idx < stor0.length:
                mem[0] = 0
                if address(stor0[idx].field_0) != msg.sender:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _1267 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1267] = address(stor0[idx].field_0)
                mem[_1267 + 32] = uint256(stor0[idx].field_256)
                mem[_1267 + 64] = uint256(stor0[idx].field_512)
                mem[_1267 + 96] = uint128(stor0[idx].field_768)
                mem[_1267 + 128] = uint256(stor0[idx].field_1024)
                _1268 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                mem[_1268] = uint256(stor0[idx].field_1280)
                if uint256(stor0[idx].field_1280):
                    mem[0] = sha3(0) + (8 * idx) + 5
                    mem[_1268 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                    t = _1268 + 32
                    u = sha3(mem[0])
                    while _1268 + (32 * uint256(stor0[idx].field_1280)) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_1267 + 160] = _1268
                mem[_1267 + 192] = uint256(stor0[idx].field_1536)
                mem[_1267 + 224] = Mask(96, 0, stor0[idx].field_1792)
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _1267
                if s >= mem[(32 * stor0.length) + 1408]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor0.length) + 1440] = idx
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1257 = mem[64]
            mem[mem[64]] = 96
            _1263 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 128
            v = mem[64] + (32 * mem[96]) + 128
            while idx < _1263:
                mem[u] = v + -_1257 - 128
                _1354 = mem[t]
                mem[v] = mem[mem[t] + 12 len 20]
                mem[v + 32] = mem[_1354 + 32]
                mem[v + 64] = mem[_1354 + 64]
                mem[v + 96] = mem[_1354 + 112 len 16]
                mem[v + 128] = mem[_1354 + 128]
                _1362 = mem[_1354 + 160]
                mem[v + 160] = 256
                _1363 = mem[_1362]
                mem[v + 256] = mem[_1362]
                s = 0
                w = _1362 + 32
                x = v + 288
                while s < _1363:
                    mem[x] = mem[w + 12 len 20]
                    s = s + 1
                    w = w + 32
                    x = x + 32
                    continue 
                mem[v + 192] = mem[_1354 + 192]
                mem[v + 224] = mem[_1354 + 244 len 12]
                idx = idx + 1
                t = t + 32
                u = u + 32
                v = v + (32 * _1363) + 288
                continue 
            mem[_1257 + 32] = v - _1257
            _1353 = mem[(32 * stor0.length) + 1408]
            mem[v] = mem[(32 * stor0.length) + 1408]
            mem[v + 32 len 32 * _1353] = mem[(32 * stor0.length) + 1440 len 32 * _1353]
            mem[_1257 + 64] = s
            return memory
              from mem[64]
               len v + (32 * _1353) + -mem[64] + 32
        mem[(32 * stor0.length) + 1440 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            if address(stor0[idx].field_0) != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1270 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1270] = address(stor0[idx].field_0)
            mem[_1270 + 32] = uint256(stor0[idx].field_256)
            mem[_1270 + 64] = uint256(stor0[idx].field_512)
            mem[_1270 + 96] = uint128(stor0[idx].field_768)
            mem[_1270 + 128] = uint256(stor0[idx].field_1024)
            _1271 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
            mem[_1271] = uint256(stor0[idx].field_1280)
            if uint256(stor0[idx].field_1280):
                mem[0] = sha3(0) + (8 * idx) + 5
                mem[_1271 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                t = _1271 + 32
                u = sha3(mem[0])
                while _1271 + (32 * uint256(stor0[idx].field_1280)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_1270 + 160] = _1271
            mem[_1270 + 192] = uint256(stor0[idx].field_1536)
            mem[_1270 + 224] = Mask(96, 0, stor0[idx].field_1792)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _1270
            if s >= mem[(32 * stor0.length) + 1408]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor0.length) + 1440] = idx
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1259 = mem[64]
        mem[mem[64]] = 96
        _1264 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 128
        v = mem[64] + (32 * mem[96]) + 128
        while idx < _1264:
            mem[u] = v + -_1259 - 128
            _1356 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_1356 + 32]
            mem[v + 64] = mem[_1356 + 64]
            mem[v + 96] = mem[_1356 + 112 len 16]
            mem[v + 128] = mem[_1356 + 128]
            _1369 = mem[_1356 + 160]
            mem[v + 160] = 256
            _1370 = mem[_1369]
            mem[v + 256] = mem[_1369]
            s = 0
            w = _1369 + 32
            x = v + 288
            while s < _1370:
                mem[x] = mem[w + 12 len 20]
                s = s + 1
                w = w + 32
                x = x + 32
                continue 
            mem[v + 192] = mem[_1356 + 192]
            mem[v + 224] = mem[_1356 + 244 len 12]
            idx = idx + 1
            t = t + 32
            u = u + 32
            v = v + (32 * _1370) + 288
            continue 
        mem[_1259 + 32] = v - _1259
        _1355 = mem[(32 * stor0.length) + 1408]
        mem[v] = mem[(32 * stor0.length) + 1408]
        mem[v + 32 len 32 * _1355] = mem[(32 * stor0.length) + 1440 len 32 * _1355]
        mem[_1259 + 64] = s
        return memory
          from mem[64]
           len v + (32 * _1355) + -mem[64] + 32
    mem[(32 * stor0.length) + 1408] = 0
    mem[(32 * stor0.length) + 1440] = 0
    mem[(32 * stor0.length) + 1472] = 0
    mem[(32 * stor0.length) + 1504] = 0
    mem[(32 * stor0.length) + 1536] = 0
    mem[(32 * stor0.length) + 1568] = 96
    mem[(32 * stor0.length) + 1600] = 0
    mem[(32 * stor0.length) + 1632] = 0
    mem[var30002] = var30001
    if not var30003 - 1:
        if stor0.length > test266151307():
            revert with 0, 65
        mem[(32 * stor0.length) + 1664] = stor0.length
        mem[64] = (64 * stor0.length) + 1696
        if not stor0.length:
            idx = 0
            s = 0
            while idx < stor0.length:
                mem[0] = 0
                if address(stor0[idx].field_0) != msg.sender:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _1499 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1499] = address(stor0[idx].field_0)
                mem[_1499 + 32] = uint256(stor0[idx].field_256)
                mem[_1499 + 64] = uint256(stor0[idx].field_512)
                mem[_1499 + 96] = uint128(stor0[idx].field_768)
                mem[_1499 + 128] = uint256(stor0[idx].field_1024)
                _1500 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                mem[_1500] = uint256(stor0[idx].field_1280)
                if uint256(stor0[idx].field_1280):
                    mem[0] = sha3(0) + (8 * idx) + 5
                    mem[_1500 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                    t = _1500 + 32
                    u = sha3(mem[0])
                    while _1500 + (32 * uint256(stor0[idx].field_1280)) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_1499 + 160] = _1500
                mem[_1499 + 192] = uint256(stor0[idx].field_1536)
                mem[_1499 + 224] = Mask(96, 0, stor0[idx].field_1792)
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _1499
                if s >= mem[(32 * stor0.length) + 1664]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor0.length) + 1696] = idx
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1489 = mem[64]
            mem[mem[64]] = 96
            _1495 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 128
            v = mem[64] + (32 * mem[96]) + 128
            while idx < _1495:
                mem[u] = v + -_1489 - 128
                _1586 = mem[t]
                mem[v] = mem[mem[t] + 12 len 20]
                mem[v + 32] = mem[_1586 + 32]
                mem[v + 64] = mem[_1586 + 64]
                mem[v + 96] = mem[_1586 + 112 len 16]
                mem[v + 128] = mem[_1586 + 128]
                _1594 = mem[_1586 + 160]
                mem[v + 160] = 256
                _1595 = mem[_1594]
                mem[v + 256] = mem[_1594]
                s = 0
                w = _1594 + 32
                x = v + 288
                while s < _1595:
                    mem[x] = mem[w + 12 len 20]
                    s = s + 1
                    w = w + 32
                    x = x + 32
                    continue 
                mem[v + 192] = mem[_1586 + 192]
                mem[v + 224] = mem[_1586 + 244 len 12]
                idx = idx + 1
                t = t + 32
                u = u + 32
                v = v + (32 * _1595) + 288
                continue 
            mem[_1489 + 32] = v - _1489
            _1585 = mem[(32 * stor0.length) + 1664]
            mem[v] = mem[(32 * stor0.length) + 1664]
            mem[v + 32 len 32 * _1585] = mem[(32 * stor0.length) + 1696 len 32 * _1585]
            mem[_1489 + 64] = s
            return memory
              from mem[64]
               len v + (32 * _1585) + -mem[64] + 32
        mem[(32 * stor0.length) + 1696 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            if address(stor0[idx].field_0) != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1502 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1502] = address(stor0[idx].field_0)
            mem[_1502 + 32] = uint256(stor0[idx].field_256)
            mem[_1502 + 64] = uint256(stor0[idx].field_512)
            mem[_1502 + 96] = uint128(stor0[idx].field_768)
            mem[_1502 + 128] = uint256(stor0[idx].field_1024)
            _1503 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
            mem[_1503] = uint256(stor0[idx].field_1280)
            if uint256(stor0[idx].field_1280):
                mem[0] = sha3(0) + (8 * idx) + 5
                mem[_1503 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                t = _1503 + 32
                u = sha3(mem[0])
                while _1503 + (32 * uint256(stor0[idx].field_1280)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_1502 + 160] = _1503
            mem[_1502 + 192] = uint256(stor0[idx].field_1536)
            mem[_1502 + 224] = Mask(96, 0, stor0[idx].field_1792)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _1502
            if s >= mem[(32 * stor0.length) + 1664]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor0.length) + 1696] = idx
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1491 = mem[64]
        mem[mem[64]] = 96
        _1496 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 128
        v = mem[64] + (32 * mem[96]) + 128
        while idx < _1496:
            mem[u] = v + -_1491 - 128
            _1588 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_1588 + 32]
            mem[v + 64] = mem[_1588 + 64]
            mem[v + 96] = mem[_1588 + 112 len 16]
            mem[v + 128] = mem[_1588 + 128]
            _1601 = mem[_1588 + 160]
            mem[v + 160] = 256
            _1602 = mem[_1601]
            mem[v + 256] = mem[_1601]
            s = 0
            w = _1601 + 32
            x = v + 288
            while s < _1602:
                mem[x] = mem[w + 12 len 20]
                s = s + 1
                w = w + 32
                x = x + 32
                continue 
            mem[v + 192] = mem[_1588 + 192]
            mem[v + 224] = mem[_1588 + 244 len 12]
            idx = idx + 1
            t = t + 32
            u = u + 32
            v = v + (32 * _1602) + 288
            continue 
        mem[_1491 + 32] = v - _1491
        _1587 = mem[(32 * stor0.length) + 1664]
        mem[v] = mem[(32 * stor0.length) + 1664]
        mem[v + 32 len 32 * _1587] = mem[(32 * stor0.length) + 1696 len 32 * _1587]
        mem[_1491 + 64] = s
        return memory
          from mem[64]
           len v + (32 * _1587) + -mem[64] + 32
    mem[(32 * stor0.length) + 1664] = 0
    mem[(32 * stor0.length) + 1696] = 0
    mem[(32 * stor0.length) + 1728] = 0
    mem[(32 * stor0.length) + 1760] = 0
    mem[(32 * stor0.length) + 1792] = 0
    mem[(32 * stor0.length) + 1824] = 96
    mem[(32 * stor0.length) + 1856] = 0
    mem[(32 * stor0.length) + 1888] = 0
    mem[var34002] = var34001
    if not var34003 - 1:
        if stor0.length > test266151307():
            revert with 0, 65
        mem[(32 * stor0.length) + 1920] = stor0.length
        mem[64] = (64 * stor0.length) + 1952
        if not stor0.length:
            idx = 0
            s = 0
            while idx < stor0.length:
                mem[0] = 0
                if address(stor0[idx].field_0) != msg.sender:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _1731 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1731] = address(stor0[idx].field_0)
                mem[_1731 + 32] = uint256(stor0[idx].field_256)
                mem[_1731 + 64] = uint256(stor0[idx].field_512)
                mem[_1731 + 96] = uint128(stor0[idx].field_768)
                mem[_1731 + 128] = uint256(stor0[idx].field_1024)
                _1732 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                mem[_1732] = uint256(stor0[idx].field_1280)
                if uint256(stor0[idx].field_1280):
                    mem[0] = sha3(0) + (8 * idx) + 5
                    mem[_1732 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                    t = _1732 + 32
                    u = sha3(mem[0])
                    while _1732 + (32 * uint256(stor0[idx].field_1280)) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_1731 + 160] = _1732
                mem[_1731 + 192] = uint256(stor0[idx].field_1536)
                mem[_1731 + 224] = Mask(96, 0, stor0[idx].field_1792)
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _1731
                if s >= mem[(32 * stor0.length) + 1920]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor0.length) + 1952] = idx
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1721 = mem[64]
            mem[mem[64]] = 96
            _1727 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 128
            v = mem[64] + (32 * mem[96]) + 128
            while idx < _1727:
                mem[u] = v + -_1721 - 128
                _1818 = mem[t]
                mem[v] = mem[mem[t] + 12 len 20]
                mem[v + 32] = mem[_1818 + 32]
                mem[v + 64] = mem[_1818 + 64]
                mem[v + 96] = mem[_1818 + 112 len 16]
                mem[v + 128] = mem[_1818 + 128]
                _1826 = mem[_1818 + 160]
                mem[v + 160] = 256
                _1827 = mem[_1826]
                mem[v + 256] = mem[_1826]
                s = 0
                w = _1826 + 32
                x = v + 288
                while s < _1827:
                    mem[x] = mem[w + 12 len 20]
                    s = s + 1
                    w = w + 32
                    x = x + 32
                    continue 
                mem[v + 192] = mem[_1818 + 192]
                mem[v + 224] = mem[_1818 + 244 len 12]
                idx = idx + 1
                t = t + 32
                u = u + 32
                v = v + (32 * _1827) + 288
                continue 
            mem[_1721 + 32] = v - _1721
            _1817 = mem[(32 * stor0.length) + 1920]
            mem[v] = mem[(32 * stor0.length) + 1920]
            mem[v + 32 len 32 * _1817] = mem[(32 * stor0.length) + 1952 len 32 * _1817]
            mem[_1721 + 64] = s
            return memory
              from mem[64]
               len v + (32 * _1817) + -mem[64] + 32
        mem[(32 * stor0.length) + 1952 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            if address(stor0[idx].field_0) != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1734 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1734] = address(stor0[idx].field_0)
            mem[_1734 + 32] = uint256(stor0[idx].field_256)
            mem[_1734 + 64] = uint256(stor0[idx].field_512)
            mem[_1734 + 96] = uint128(stor0[idx].field_768)
            mem[_1734 + 128] = uint256(stor0[idx].field_1024)
            _1735 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
            mem[_1735] = uint256(stor0[idx].field_1280)
            if uint256(stor0[idx].field_1280):
                mem[0] = sha3(0) + (8 * idx) + 5
                mem[_1735 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                t = _1735 + 32
                u = sha3(mem[0])
                while _1735 + (32 * uint256(stor0[idx].field_1280)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_1734 + 160] = _1735
            mem[_1734 + 192] = uint256(stor0[idx].field_1536)
            mem[_1734 + 224] = Mask(96, 0, stor0[idx].field_1792)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _1734
            if s >= mem[(32 * stor0.length) + 1920]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor0.length) + 1952] = idx
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1723 = mem[64]
        mem[mem[64]] = 96
        _1728 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 128
        v = mem[64] + (32 * mem[96]) + 128
        while idx < _1728:
            mem[u] = v + -_1723 - 128
            _1820 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_1820 + 32]
            mem[v + 64] = mem[_1820 + 64]
            mem[v + 96] = mem[_1820 + 112 len 16]
            mem[v + 128] = mem[_1820 + 128]
            _1833 = mem[_1820 + 160]
            mem[v + 160] = 256
            _1834 = mem[_1833]
            mem[v + 256] = mem[_1833]
            s = 0
            w = _1833 + 32
            x = v + 288
            while s < _1834:
                mem[x] = mem[w + 12 len 20]
                s = s + 1
                w = w + 32
                x = x + 32
                continue 
            mem[v + 192] = mem[_1820 + 192]
            mem[v + 224] = mem[_1820 + 244 len 12]
            idx = idx + 1
            t = t + 32
            u = u + 32
            v = v + (32 * _1834) + 288
            continue 
        mem[_1723 + 32] = v - _1723
        _1819 = mem[(32 * stor0.length) + 1920]
        mem[v] = mem[(32 * stor0.length) + 1920]
        mem[v + 32 len 32 * _1819] = mem[(32 * stor0.length) + 1952 len 32 * _1819]
        mem[_1723 + 64] = s
        return memory
          from mem[64]
           len v + (32 * _1819) + -mem[64] + 32
    mem[(32 * stor0.length) + 1920] = 0
    mem[(32 * stor0.length) + 1952] = 0
    mem[(32 * stor0.length) + 1984] = 0
    mem[(32 * stor0.length) + 2016] = 0
    mem[(32 * stor0.length) + 2048] = 0
    mem[(32 * stor0.length) + 2080] = 96
    mem[(32 * stor0.length) + 2112] = 0
    mem[(32 * stor0.length) + 2144] = 0
    mem[var38002] = var38001
    if var38003 - 1:
        mem[var42002] = var42001
        if var42003 - 1:
            # nil
        else:
            if stor0.length > test266151307():
                revert with 0, 65
            mem[(32 * stor0.length) + 2432] = stor0.length
            mem[64] = (64 * stor0.length) + 2464
            if not stor0.length:
                idx = 0
                s = 0
                while idx < stor0.length:
                    mem[0] = 0
                    if address(stor0[idx].field_0) != msg.sender:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor0.length:
                        revert with 0, 50
                    mem[0] = 0
                    _2195 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2195] = address(stor0[idx].field_0)
                    mem[_2195 + 32] = uint256(stor0[idx].field_256)
                    mem[_2195 + 64] = uint256(stor0[idx].field_512)
                    mem[_2195 + 96] = uint128(stor0[idx].field_768)
                    mem[_2195 + 128] = uint256(stor0[idx].field_1024)
                    _2196 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                    mem[_2196] = uint256(stor0[idx].field_1280)
                    if uint256(stor0[idx].field_1280):
                        # nil
                    else:
                        mem[_2195 + 160] = _2196
                        mem[_2195 + 192] = uint256(stor0[idx].field_1536)
                        mem[_2195 + 224] = Mask(96, 0, stor0[idx].field_1792)
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = _2195
                        if s >= mem[(32 * stor0.length) + 2432]:
                            revert with 0, 50
                        mem[(32 * s) + (32 * stor0.length) + 2464] = idx
                        if s == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
            else:
                idx = 0
                s = 0
                while idx < stor0.length:
                    mem[0] = 0
                    if address(stor0[idx].field_0) != msg.sender:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor0.length:
                        revert with 0, 50
                    mem[0] = 0
                    _2198 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_2198] = address(stor0[idx].field_0)
                    mem[_2198 + 32] = uint256(stor0[idx].field_256)
                    mem[_2198 + 64] = uint256(stor0[idx].field_512)
                    mem[_2198 + 96] = uint128(stor0[idx].field_768)
                    mem[_2198 + 128] = uint256(stor0[idx].field_1024)
                    _2199 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                    mem[_2199] = uint256(stor0[idx].field_1280)
                    if uint256(stor0[idx].field_1280):
                        # nil
                    else:
                        mem[_2198 + 160] = _2199
                        mem[_2198 + 192] = uint256(stor0[idx].field_1536)
                        mem[_2198 + 224] = Mask(96, 0, stor0[idx].field_1792)
                        if s >= mem[96]:
                            revert with 0, 50
                        mem[(32 * s) + 128] = _2198
                        if s >= mem[(32 * stor0.length) + 2432]:
                            revert with 0, 50
                        mem[(32 * s) + (32 * stor0.length) + 2464] = idx
                        if s == -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        continue 
            # nil
    else:
        if stor0.length > test266151307():
            revert with 0, 65
        mem[(32 * stor0.length) + 2176] = stor0.length
        mem[64] = (64 * stor0.length) + 2208
        if not stor0.length:
            idx = 0
            s = 0
            while idx < stor0.length:
                mem[0] = 0
                if address(stor0[idx].field_0) != msg.sender:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                _1963 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1963] = address(stor0[idx].field_0)
                mem[_1963 + 32] = uint256(stor0[idx].field_256)
                mem[_1963 + 64] = uint256(stor0[idx].field_512)
                mem[_1963 + 96] = uint128(stor0[idx].field_768)
                mem[_1963 + 128] = uint256(stor0[idx].field_1024)
                _1964 = mem[64]
                mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
                mem[_1964] = uint256(stor0[idx].field_1280)
                if uint256(stor0[idx].field_1280):
                    mem[0] = sha3(0) + (8 * idx) + 5
                    mem[_1964 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                    t = _1964 + 32
                    u = sha3(mem[0])
                    while _1964 + (32 * uint256(stor0[idx].field_1280)) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_1963 + 160] = _1964
                mem[_1963 + 192] = uint256(stor0[idx].field_1536)
                mem[_1963 + 224] = Mask(96, 0, stor0[idx].field_1792)
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _1963
                if s >= mem[(32 * stor0.length) + 2176]:
                    revert with 0, 50
                mem[(32 * s) + (32 * stor0.length) + 2208] = idx
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _1953 = mem[64]
            mem[mem[64]] = 96
            _1959 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 128
            v = mem[64] + (32 * mem[96]) + 128
            while idx < _1959:
                mem[u] = v + -_1953 - 128
                _2050 = mem[t]
                mem[v] = mem[mem[t] + 12 len 20]
                mem[v + 32] = mem[_2050 + 32]
                mem[v + 64] = mem[_2050 + 64]
                mem[v + 96] = mem[_2050 + 112 len 16]
                mem[v + 128] = mem[_2050 + 128]
                _2058 = mem[_2050 + 160]
                mem[v + 160] = 256
                _2059 = mem[_2058]
                mem[v + 256] = mem[_2058]
                s = 0
                w = _2058 + 32
                x = v + 288
                while s < _2059:
                    mem[x] = mem[w + 12 len 20]
                    s = s + 1
                    w = w + 32
                    x = x + 32
                    continue 
                mem[v + 192] = mem[_2050 + 192]
                mem[v + 224] = mem[_2050 + 244 len 12]
                idx = idx + 1
                t = t + 32
                u = u + 32
                v = v + (32 * _2059) + 288
                continue 
            mem[_1953 + 32] = v - _1953
            _2049 = mem[(32 * stor0.length) + 2176]
            mem[v] = mem[(32 * stor0.length) + 2176]
            mem[v + 32 len 32 * _2049] = mem[(32 * stor0.length) + 2208 len 32 * _2049]
            mem[_1953 + 64] = s
            return memory
              from mem[64]
               len v + (32 * _2049) + -mem[64] + 32
        mem[(32 * stor0.length) + 2208 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        idx = 0
        s = 0
        while idx < stor0.length:
            mem[0] = 0
            if address(stor0[idx].field_0) != msg.sender:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= stor0.length:
                revert with 0, 50
            mem[0] = 0
            _1966 = mem[64]
            mem[64] = mem[64] + 256
            mem[_1966] = address(stor0[idx].field_0)
            mem[_1966 + 32] = uint256(stor0[idx].field_256)
            mem[_1966 + 64] = uint256(stor0[idx].field_512)
            mem[_1966 + 96] = uint128(stor0[idx].field_768)
            mem[_1966 + 128] = uint256(stor0[idx].field_1024)
            _1967 = mem[64]
            mem[64] = mem[64] + (32 * uint256(stor0[idx].field_1280)) + 32
            mem[_1967] = uint256(stor0[idx].field_1280)
            if uint256(stor0[idx].field_1280):
                mem[0] = sha3(0) + (8 * idx) + 5
                mem[_1967 + 32] = address(stor[sha3(('name', 'stor0', 0) + (8 * idx) + 5)].field_0)
                t = _1967 + 32
                u = sha3(mem[0])
                while _1967 + (32 * uint256(stor0[idx].field_1280)) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_1966 + 160] = _1967
            mem[_1966 + 192] = uint256(stor0[idx].field_1536)
            mem[_1966 + 224] = Mask(96, 0, stor0[idx].field_1792)
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _1966
            if s >= mem[(32 * stor0.length) + 2176]:
                revert with 0, 50
            mem[(32 * s) + (32 * stor0.length) + 2208] = idx
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1955 = mem[64]
        mem[mem[64]] = 96
        _1960 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        t = 128
        u = mem[64] + 128
        v = mem[64] + (32 * mem[96]) + 128
        while idx < _1960:
            mem[u] = v + -_1955 - 128
            _2052 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_2052 + 32]
            mem[v + 64] = mem[_2052 + 64]
            mem[v + 96] = mem[_2052 + 112 len 16]
            mem[v + 128] = mem[_2052 + 128]
            _2065 = mem[_2052 + 160]
            mem[v + 160] = 256
            _2066 = mem[_2065]
            mem[v + 256] = mem[_2065]
            s = 0
            w = _2065 + 32
            x = v + 288
            while s < _2066:
                mem[x] = mem[w + 12 len 20]
                s = s + 1
                w = w + 32
                x = x + 32
                continue 
            mem[v + 192] = mem[_2052 + 192]
            mem[v + 224] = mem[_2052 + 244 len 12]
            idx = idx + 1
            t = t + 32
            u = u + 32
            v = v + (32 * _2066) + 288
            continue 
        mem[_1955 + 32] = v - _1955
        _2051 = mem[(32 * stor0.length) + 2176]
        mem[v] = mem[(32 * stor0.length) + 2176]
        mem[v + 32 len 32 * _2051] = mem[(32 * stor0.length) + 2208 len 32 * _2051]
        mem[_1955 + 64] = s
        return memory
          from mem[64]
           len v + (32 * _2051) + -mem[64] + 32
}



}
