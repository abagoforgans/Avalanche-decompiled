contract main {




// =====================  Runtime code  =====================


#
#  - testSplitWithDelimiter()
#
function testLength() payable {
  stop
}

function _fallback() payable {
    revert
}

function compareToTest() payable {
    mem[128] = 0x6d792074657374696e672073706c697400000000000000000000000000000000
    mem[160] = 7
    idx = 0
    while idx < 16:
        if idx >= 16:
            revert with 0, 50
        if idx >= 16:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]):
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < 16:
        if idx >= 16:
            revert with 0, 50
        if idx >= 16:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]):
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    revert with 0, 1
}

function testUpper() payable {
    mem[96] = 5
    mem[128] = 0x6c6f776572000000000000000000000000000000000000000000000000000000
    mem[64] = 224
    mem[160] = 5
    mem[192] = 0x4c4f574552000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < 5:
        if idx >= 5:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
        if idx >= 5:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if mem[160] != 5:
        revert with 0, 1
    idx = 0
    while idx < 5:
        if idx >= mem[160]:
            revert with 0, 50
        if idx >= 5:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]):
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function testIndexOf() payable {
    mem[96] = 8
    mem[128] = 'haystack' << 192
    mem[64] = 224
    mem[160] = 1
    mem[192] = 0x6100000000000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < 8:
        if idx >= 8:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx != 1:
            revert with 0, 1
        mem[64] = 288
        mem[224] = 1
        mem[256] = 0x4100000000000000000000000000000000000000000000000000000000000000
        idx = 0
        while idx < 8:
            if idx >= 8:
                revert with 0, 50
            if Mask(8, 248, mem[idx + 128]):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx != -1:
                revert with 0, 1
            idx = 0
            while idx < 8:
                if idx >= 8:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx != -1:
                    revert with 0, 1
        idx = 0
        while idx < 8:
            if idx >= 8:
                revert with 0, 50
            if Mask(8, 248, mem[idx + 128]):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx != -1:
                revert with 0, 1
    revert with 0, 1
}

function test_IndexOf() payable {
    mem[96] = 8
    mem[128] = 'haystack' << 192
    mem[64] = 224
    mem[160] = 1
    mem[192] = 0x6100000000000000000000000000000000000000000000000000000000000000
    idx = 2
    while idx < 8:
        if idx >= 8:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx != 5:
            revert with 0, 1
        mem[64] = 288
        mem[224] = 1
        mem[256] = 0x4100000000000000000000000000000000000000000000000000000000000000
        idx = 2
        while idx < 8:
            if idx >= 8:
                revert with 0, 50
            if Mask(8, 248, mem[idx + 128]):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx != -1:
                revert with 0, 1
            idx = 2
            while idx < 8:
                if idx >= 8:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx != -1:
                    revert with 0, 1
        idx = 2
        while idx < 8:
            if idx >= 8:
                revert with 0, 50
            if Mask(8, 248, mem[idx + 128]):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx != -1:
                revert with 0, 1
    revert with 0, 1
}

function testLower() payable {
    mem[96] = 5
    mem[128] = 0x5550504552000000000000000000000000000000000000000000000000000000
    mem[64] = 224
    mem[160] = 5
    mem[192] = 0x7570706572000000000000000000000000000000000000000000000000000000
    idx = 0
    while idx < 5:
        if idx >= 5:
            revert with 0, 50
        if idx >= 5:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(1809251394333065553493296640760748560207343510400633813116524750123642650624, 0) + 256, 0) << (1809251394333065553493296640760748560207343510400633813116524750123642650624, 0) - 256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if mem[160] != 5:
        revert with 0, 1
    idx = 0
    while idx < 5:
        if idx >= mem[160]:
            revert with 0, 50
        if idx >= 5:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]):
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function test_Substring() payable {
    mem[96] = 18
    mem[128] = 'sub string testing' << 112
    mem[160] = 6
    mem[192] = 0x737472696e670000000000000000000000000000000000000000000000000000
    mem[224] = 6
    mem[64] = 288
    mem[256 len 6] = call.data[calldata.size len 6]
    idx = var28004
    s = var28005
    while idx < 10:
        if idx >= mem[96]:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= mem[224]:
            revert with 0, 50
        mem[s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if mem[160] != mem[224]:
        revert with 0, 1
    idx = 0
    while idx < mem[224]:
        if idx >= mem[160]:
            revert with 0, 50
        if idx >= mem[224]:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 256]):
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _60 = mem[64]
    mem[64] = mem[64] + 64
    mem[_60] = 7
    mem[_60 + 32] = 'testing' << 200
    if 18 > mem[96]:
        revert with 0, 1
    _63 = mem[64]
    mem[mem[64]] = 7
    mem[64] = mem[64] + 64
    mem[_63 + 32 len 7] = call.data[calldata.size len 7]
    idx = var54004
    s = var54005
    while idx < 18:
        if idx >= mem[96]:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= mem[_63]:
            revert with 0, 50
        mem[s + _63 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if mem[_60] != mem[_63]:
        revert with 0, 1
    idx = 0
    while idx < mem[_63]:
        if idx >= mem[_60]:
            revert with 0, 50
        if idx >= mem[_63]:
            revert with 0, 50
        if Mask(8, 248, mem[idx + _63 + 32]):
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function testSubstring() payable {
    mem[96] = 18
    mem[128] = 'sub string testing' << 112
    mem[160] = 3
    mem[192] = 0x7375620000000000000000000000000000000000000000000000000000000000
    mem[224] = 3
    mem[64] = 288
    mem[256 len 3] = call.data[calldata.size len 3]
    idx = var29004
    s = var29005
    while idx < 3:
        if idx >= mem[96]:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= mem[224]:
            revert with 0, 50
        mem[s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if mem[160] != mem[224]:
        revert with 0, 1
    idx = 0
    while idx < mem[224]:
        if idx >= mem[160]:
            revert with 0, 50
        if idx >= mem[224]:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 256]):
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _60 = mem[64]
    mem[64] = mem[64] + 64
    mem[_60] = 10
    mem[_60 + 32] = 'sub string' << 176
    if 10 > mem[96]:
        revert with 0, 1
    _63 = mem[64]
    mem[mem[64]] = 10
    mem[64] = mem[64] + 64
    mem[_63 + 32 len 10] = call.data[calldata.size len 10]
    idx = var57004
    s = var57005
    while idx < 10:
        if idx >= mem[96]:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= mem[_63]:
            revert with 0, 50
        mem[s + _63 + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if mem[_60] != mem[_63]:
        revert with 0, 1
    idx = 0
    while idx < mem[_63]:
        if idx >= mem[_60]:
            revert with 0, 50
        if idx >= mem[_63]:
            revert with 0, 50
        if Mask(8, 248, mem[idx + _63 + 32]):
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function compareToIgnoreCaseTest() payable {
    mem[96] = 16
    mem[128] = 0x6d792074657374696e672073706c697400000000000000000000000000000000
    mem[160] = 7
    mem[192] = 0x696e76616c696400000000000000000000000000000000000000000000000000
    mem[64] = 288
    mem[224] = 16
    mem[256] = 0x6d792074657374696e672073706c697400000000000000000000000000000000
    idx = 0
    while idx < 16:
        if idx >= 16:
            revert with 0, 50
        if idx >= 16:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]):
            if idx >= 16:
                revert with 0, 50
            if Mask(8, 248, mem[idx + 256]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 256]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
            if idx >= 16:
                revert with 0, 50
            if Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
            if Mask(8, 248, mem[idx + 128]) != Mask(8, 248, mem[idx + 256]):
                revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[64] = 352
    mem[288] = 16
    mem[320] = 0x6d592054657374696e672073706c697400000000000000000000000000000000
    idx = 0
    while idx < 16:
        if idx >= 16:
            revert with 0, 50
        if idx >= 16:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]):
            if idx >= 16:
                revert with 0, 50
            if Mask(8, 248, mem[idx + 320]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 320]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
            if idx >= 16:
                revert with 0, 50
            if Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
            if Mask(8, 248, mem[idx + 128]) != Mask(8, 248, mem[idx + 320]):
                revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function testConcat() payable {
    mem[128] = 'prefix_' << 200
    mem[160] = 13
    mem[256] = 0x7375666669780000000000000000000000000000000000000000000000000000
    mem[288] = 13
    mem[320 len 13] = call.data[calldata.size len 13]
    s = 0
    idx = 0
    while idx < 7:
        if idx >= 7:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= 13:
            revert with 0, 50
        mem[s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        s = s + 1
        idx = idx + 1
        continue 
    s = 7
    idx = 0
    while idx < 6:
        if idx >= 6:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= 13:
            revert with 0, 50
        mem[s + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        s = s + 1
        idx = idx + 1
        continue 
    idx = 0
    while idx < 13:
        if idx >= 13:
            revert with 0, 50
        if idx >= 13:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 320]):
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[448] = 0x5f616e6f74686572000000000000000000000000000000000000000000000000
    mem[480] = 6
    mem[512] = 0x7375666669780000000000000000000000000000000000000000000000000000
    mem[544] = 13
    mem[576 len 13] = call.data[calldata.size len 13]
    s = 0
    idx = 0
    while idx < 7:
        if idx >= 7:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= 13:
            revert with 0, 50
        mem[s + 576 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        s = s + 1
        idx = idx + 1
        continue 
    s = 7
    idx = 0
    while idx < 6:
        if idx >= 6:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= 13:
            revert with 0, 50
        mem[s + 576 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 512, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 512, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        s = s + 1
        idx = idx + 1
        continue 
    mem[608] = 21
    mem[640 len 21] = call.data[calldata.size len 21]
    s = 0
    idx = 0
    while idx < 13:
        if idx >= 13:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= 21:
            revert with 0, 50
        mem[s + 640 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 576, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 576, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        s = s + 1
        idx = idx + 1
        continue 
    s = 13
    idx = 0
    while idx < 8:
        if idx >= 8:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= 21:
            revert with 0, 50
        mem[s + 640 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 448, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        s = s + 1
        idx = idx + 1
        continue 
    idx = 0
    while idx < 21:
        if idx >= 21:
            revert with 0, 50
        if idx >= 21:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 640]):
            revert with 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[768] = 0x6661696c00000000000000000000000000000000000000000000000000000000
    mem[800] = 11
    s = 0
    idx = 0
    while idx < 7:
        if idx >= 7:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= 11:
            revert with 0, 50
        mem[s + 832 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        s = s + 1
        idx = idx + 1
        continue 
    s = 7
    idx = 0
    while idx < 4:
        if idx >= 4:
            revert with 0, 50
        if s == -1:
            revert with 0, 17
        if s >= 11:
            revert with 0, 50
        mem[s + 832 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 768, ('var', 0)), 32))), 0) - 256
        if idx == -1:
            revert with 0, 17
        s = s + 1
        idx = idx + 1
        continue 
}



}
