contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function verifyProof(bytes arg1, uint256[6] arg2) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len 192] = call.data[36 len 192]
    mem[ceil32(arg1.length) + 320 len 256] = call.data[calldata.size len 256]
    require arg1.length >= 256
    idx = 0
    while uint8(idx) < 8:
        if mem[(32 * uint8(idx)) + 128] >= 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47:
            revert with 0, 
                        32,
                        34,
                        0xfe76657269666965722d70726f6f662d656c656d656e742d6774652d7072696d652d,
                        mem[ceil32(arg1.length) + 678 len 30]
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 672] = 0
    mem[ceil32(arg1.length) + 704] = 0
    mem[ceil32(arg1.length) + 800 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 736] = ceil32(arg1.length) + 800
    mem[ceil32(arg1.length) + 864 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 768] = ceil32(arg1.length) + 864
    mem[ceil32(arg1.length) + 928] = 0
    mem[ceil32(arg1.length) + 960] = 0
    mem[ceil32(arg1.length) + 992] = mem[128]
    mem[ceil32(arg1.length) + 1024] = mem[160]
    mem[ceil32(arg1.length) + 576] = ceil32(arg1.length) + 992
    mem[ceil32(arg1.length) + 1120] = mem[192]
    mem[ceil32(arg1.length) + 1152] = mem[224]
    mem[ceil32(arg1.length) + 1056] = ceil32(arg1.length) + 1120
    mem[ceil32(arg1.length) + 1184] = mem[256]
    mem[ceil32(arg1.length) + 1216] = mem[288]
    mem[ceil32(arg1.length) + 1088] = ceil32(arg1.length) + 1184
    mem[ceil32(arg1.length) + 608] = ceil32(arg1.length) + 1056
    mem[ceil32(arg1.length) + 1248] = mem[320]
    mem[ceil32(arg1.length) + 1280] = mem[352]
    mem[ceil32(arg1.length) + 640] = ceil32(arg1.length) + 1248
    mem[ceil32(arg1.length) + 1472] = 0
    mem[ceil32(arg1.length) + 1504] = 0
    mem[ceil32(arg1.length) + 1312] = ceil32(arg1.length) + 1472
    mem[ceil32(arg1.length) + 1600 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1536] = ceil32(arg1.length) + 1600
    mem[ceil32(arg1.length) + 1664 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1568] = ceil32(arg1.length) + 1664
    mem[ceil32(arg1.length) + 1344] = ceil32(arg1.length) + 1536
    mem[ceil32(arg1.length) + 1792 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1728] = ceil32(arg1.length) + 1792
    mem[ceil32(arg1.length) + 1856 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1760] = ceil32(arg1.length) + 1856
    mem[ceil32(arg1.length) + 1376] = ceil32(arg1.length) + 1728
    mem[ceil32(arg1.length) + 1984 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1920] = ceil32(arg1.length) + 1984
    mem[ceil32(arg1.length) + 2048 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1952] = ceil32(arg1.length) + 2048
    mem[ceil32(arg1.length) + 1408] = ceil32(arg1.length) + 1920
    mem[64] = ceil32(arg1.length) + 2400
    mem[ceil32(arg1.length) + 2336] = 0
    mem[ceil32(arg1.length) + 2368] = 0
    mem[var58001] = ceil32(arg1.length) + 2336
    s = var58001
    idx = var58002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(arg1.length) + 2336] = 0
        mem[ceil32(arg1.length) + 2368] = 0
        mem[s + 32] = ceil32(arg1.length) + 2336
        s = s + 32
        idx = idx - 1
        continue 
    mem[ceil32(arg1.length) + 1440] = ceil32(arg1.length) + 2112
    _58 = mem[64]
    mem[64] = mem[64] + 160
    _59 = mem[64]
    mem[64] = mem[64] + 64
    mem[_59] = 0
    mem[_59 + 32] = 0
    mem[_58] = _59
    _60 = mem[64]
    mem[64] = mem[64] + 64
    _61 = mem[64]
    mem[64] = mem[64] + 64
    mem[_61 len 64] = call.data[calldata.size len 64]
    mem[_60] = _61
    _62 = mem[64]
    mem[64] = mem[64] + 64
    mem[_62 len 64] = call.data[calldata.size len 64]
    mem[_60 + 32] = _62
    mem[_58 + 32] = _60
    _63 = mem[64]
    mem[64] = mem[64] + 64
    _64 = mem[64]
    mem[64] = mem[64] + 64
    mem[_64 len 64] = call.data[calldata.size len 64]
    mem[_63] = _64
    _65 = mem[64]
    mem[64] = mem[64] + 64
    mem[_65 len 64] = call.data[calldata.size len 64]
    mem[_63 + 32] = _65
    mem[_58 + 64] = _63
    _66 = mem[64]
    mem[64] = mem[64] + 64
    _67 = mem[64]
    mem[64] = mem[64] + 64
    mem[_67 len 64] = call.data[calldata.size len 64]
    mem[_66] = _67
    _68 = mem[64]
    mem[64] = mem[64] + 64
    mem[_68 len 64] = call.data[calldata.size len 64]
    mem[_66 + 32] = _68
    mem[_58 + 96] = _66
    _69 = mem[64]
    mem[64] = mem[64] + 224
    _128 = mem[64]
    mem[64] = mem[64] + 64
    mem[_128] = 0
    mem[_128 + 32] = 0
    mem[var89001] = _128
    s = var89001
    idx = var89002
    while idx - 1:
        _128 = mem[64]
        mem[64] = mem[64] + 64
        mem[_128] = 0
        mem[_128 + 32] = 0
        mem[s + 32] = _128
        s = s + 32
        idx = idx - 1
        continue 
    mem[_58 + 128] = _69
    _129 = mem[64]
    mem[64] = mem[64] + 64
    mem[_129] = 0x2bbc2aee1776a9b64687b8f4eeb2a5238ee3763db5b99dbf8e6571507d1edc8d
    mem[_129 + 32] = 0x1524b369d37ba1286a8d05ecbf0c8454030c7b7ac15af5e917065b5b5e7df192
    mem[_58] = _129
    _130 = mem[64]
    mem[64] = mem[64] + 64
    _131 = mem[64]
    mem[64] = mem[64] + 64
    mem[_131] = 0x68afe432c6542e0458ec3b5d3863b35461374803dbaa94b73ab48d8103c8dd7
    mem[_131 + 32] = 0x622647ca2834adfdc935e3fabc30a19fd276d2b45a26e4614d3e3762a38d73d
    mem[_130] = _131
    _132 = mem[64]
    mem[64] = mem[64] + 64
    mem[_132] = 0xaa6ffc81080ad995a6d02a20673c488667b762787d23327c5cd344aa99e3231
    mem[_132 + 32] = 0x229e8e3d4ec3adb0bbd3413c56ead8134a45e7e11c5ffa11b60cbf9fdd775285
    mem[_130 + 32] = _132
    mem[_58 + 32] = _130
    _133 = mem[64]
    mem[64] = mem[64] + 64
    _134 = mem[64]
    mem[64] = mem[64] + 64
    mem[_134] = 0x198e9393920d483a7260bfb731fb5d25f1aa493335a9e71297e485b7aef312c2
    mem[_134 + 32] = 0x1800deef121f1e76426a00665e5c4479674322d4f75edadd46debd5cd992f6ed
    mem[_133] = _134
    _135 = mem[64]
    mem[64] = mem[64] + 64
    mem[_135] = 0x90689d0585ff075ec9e99ad690c3395bc4b313370b38ef355acdadcd122975b
    mem[_135 + 32] = 0x12c85ea5db8c6deb4aab71808dcb408fe3d1e7690c43d37b4ce6cc0166fa7daa
    mem[_133 + 32] = _135
    mem[_58 + 64] = _133
    _136 = mem[64]
    mem[64] = mem[64] + 64
    _137 = mem[64]
    mem[64] = mem[64] + 64
    mem[_137] = 0x210ef68bfd60ec5d70b2069292c55bf16105fc3086cec9b4ec14200a44dba3f1
    mem[_137 + 32] = 0x228d7e877fb911164dc53803df02c44a3576849dbb1236887a8a0704cf824488
    mem[_136] = _137
    _138 = mem[64]
    mem[64] = mem[64] + 64
    mem[_138] = 0x1135f10a027e2852b6b4c8ecd964c293c777082f03082e305e97b638e3023d73
    mem[_138 + 32] = 0x13772b927d6ac69d87d38cd983ace01bad957ec410ee1cd6cbd6f19957dbe0f0
    mem[_136 + 32] = _138
    mem[_58 + 96] = _136
    _139 = mem[64]
    mem[64] = mem[64] + 64
    mem[_139] = 0x24749a668c901ecc64c2dc550de182ab8f48181ac0235f5d625d87ea9c11e0f3
    mem[_139 + 32] = 0x236819e4306cc834151499e9e12b79bfcbf03dd351abd9e061ecba6c2bee83e3
    mem[_69] = _139
    _141 = mem[64]
    mem[64] = mem[64] + 64
    mem[_141] = 0x2c79012d84539da5d2ff48f79dd6f3d18a643679207fac579ee745bbd974ab28
    mem[_141 + 32] = 0x230b3bfde439187015eb036176c806d3bd9fc006ce42c438be18fb0f9dd395b7
    mem[_69 + 32] = _141
    _143 = mem[64]
    mem[64] = mem[64] + 64
    mem[_143] = 0x279f300fa13c4b1fc2f5f9b56d48c50e4017289822fb53303383835a6e3546f1
    mem[_143 + 32] = 0x258572bec799949367b3b9cfeaf9fca8372a052406f36688cf8cb55f492e251c
    mem[_69 + 64] = _143
    _145 = mem[64]
    mem[64] = mem[64] + 64
    mem[_145] = 0x2104f8701a0a21b46fb8e868f7072b0d5f7b8a387f9042428ed883bae1aa1453
    mem[_145 + 32] = 0x6e32ed669efde6610e82126fdea84e48904fd96b91cdbdc991bf2dd922799ca
    mem[_69 + 96] = _145
    _147 = mem[64]
    mem[64] = mem[64] + 64
    mem[_147] = 0x2be81e4048520a6dfbdee91a343a0dca40555bee22baf107449fc440a996ec77
    mem[_147 + 32] = 0x616677c9c71ce9e05f3a99ff9254b0c4cb3a36a6142d4dfabfd250d05cacabf
    mem[_69 + 128] = _147
    _149 = mem[64]
    mem[64] = mem[64] + 64
    mem[_149] = 0x14d102a2624be2f68cac065bf60528603bfe25d63ce2126c05afcf9bb7d1c7da
    mem[_149 + 32] = 0xc4b5c6d2459c25b96d9f305c3ab8a7cd834a7bb2ea3250f9e7da47f5c454be
    mem[_69 + 160] = _149
    _151 = mem[64]
    mem[64] = mem[64] + 64
    mem[_151] = 0x1afdf6a86a81cf66b849adaa410f8efc3fb58c424cf5c734d35ebc6eeaf4a579
    mem[_151 + 32] = 0x19ee9bb5fcfc23d4e5437c94d2e51cdb3ded852fb2713bcf43066dcc3951b7d
    mem[_69 + 192] = _151
    _153 = mem[64]
    mem[64] = mem[64] + 64
    mem[_153] = 0
    mem[_153 + 32] = 0
    _154 = mem[64]
    mem[64] = mem[64] + 64
    mem[_154] = 0
    mem[_154 + 32] = 0
    _157 = mem[64]
    mem[64] = mem[64] + 64
    mem[_157] = 0
    mem[_157 + 32] = 0
    _158 = mem[64]
    mem[64] = mem[64] + 128
    mem[_158] = 0
    mem[_158 + 32] = 0
    mem[_158 + 64] = 0x24749a668c901ecc64c2dc550de182ab8f48181ac0235f5d625d87ea9c11e0f3
    mem[_158 + 96] = 0x236819e4306cc834151499e9e12b79bfcbf03dd351abd9e061ecba6c2bee83e3
    bn_add = bn256Add(0, 0, 0x24749a668c901ecc64c2dc550de182ab8f48181ac0235f5d625d87ea9c11e0f3, 0x236819e4306cc834151499e9e12b79bfcbf03dd351abd9e061ecba6c2bee83e3, mem[_158 + 128 len 64]) 
    mem[_157 len 96] = bn_add
    require bn256Add.result
    if not bn256Add.result:
        revert with 0, 'pairing-add-failed'
    idx = 0
    s = _157
    while idx < 6:
        if mem[(32 * idx) + ceil32(arg1.length) + 128] >= 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001:
            revert with 0, 'verifier-gte-snark-scalar-field'
        require idx + 1 < 7
        _192 = mem[(32 * idx + 1) + mem[_58 + 128]]
        require idx < 6
        _194 = mem[(32 * idx) + ceil32(arg1.length) + 128]
        _202 = mem[64]
        mem[64] = mem[64] + 64
        mem[_202] = 0
        mem[_202 + 32] = 0
        _215 = mem[64]
        mem[64] = mem[64] + 96
        mem[_215 len 96] = call.data[calldata.size len 96]
        mem[_215] = mem[_192]
        mem[_215 + 32] = mem[_192 + 32]
        mem[_215 + 64] = _194
        bn_scalar_mul = bn256ScalarMul(mem[_215 len 64], _194, mem[_215 + 96]) 
        mem[_202 len 96] = bn_scalar_mul
        require bn256ScalarMul.result
        if not bn256ScalarMul.result:
            revert with 0, 'pairing-mul-failed'
        _232 = mem[64]
        mem[64] = mem[64] + 64
        mem[_232] = 0
        mem[_232 + 32] = 0
        _233 = mem[64]
        mem[64] = mem[64] + 128
        mem[_233 len 128] = call.data[calldata.size len 128]
        mem[_233] = mem[s]
        mem[_233 + 32] = mem[s + 32]
        mem[_233 + 64] = bn_scalar_mul
        mem[_233 + 96] = Mask(256, -256, bn_scalar_mul) << 256
        bn_add = bn256Add(mem[_233 len 64], bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256, mem[_233 + 128 len 64]) 
        mem[_232 len 96] = bn_add
        require bn256Add.result
        if not bn256Add.result:
            revert with 0, 'pairing-add-failed'
        idx = idx + 1
        s = _232
        continue 
    _185 = mem[ceil32(arg1.length) + 576]
    _187 = mem[64]
    mem[64] = mem[64] + 64
    mem[_187] = 0
    mem[_187 + 32] = 0
    if mem[_185]:
        _195 = mem[64]
        mem[64] = mem[64] + 64
        mem[_195] = mem[_185]
        mem[_195 + 32] = -(mem[_185 + 32] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
        _203 = mem[ceil32(arg1.length) + 608]
        _204 = mem[_58]
        _205 = mem[_58 + 32]
        _206 = mem[_58 + 64]
        _207 = mem[ceil32(arg1.length) + 640]
        _208 = mem[_58 + 96]
        mem[64] = mem[64] + 128
        _258 = mem[64]
        mem[64] = mem[64] + 64
        mem[_258] = 0
        mem[_258 + 32] = 0
        mem[var134001] = _258
        s = var134001
        idx = var134002
        while idx - 1:
            _258 = mem[64]
            mem[64] = mem[64] + 64
            mem[_258] = 0
            mem[_258 + 32] = 0
            mem[s + 32] = _258
            s = s + 32
            idx = idx - 1
            continue 
        _261 = mem[64]
        mem[64] = mem[64] + 128
        mem[_261] = _195
        mem[_261 + 32] = _204
        mem[_261 + 64] = _157 + (6 * _232)
        mem[_261 + 96] = _207
        mem[64] = mem[64] + 128
        _357 = mem[64]
        mem[64] = mem[64] + 64
        _441 = mem[64]
        mem[64] = mem[64] + 64
        mem[_441 len 64] = call.data[calldata.size len 64]
        mem[_357] = _441
        _444 = mem[64]
        mem[64] = mem[64] + 64
        mem[_444 len 64] = call.data[calldata.size len 64]
        mem[_357 + 32] = _444
        mem[var148002] = _357
        s = _357
        s = _357
        s = var148002
        idx = var148003
        while idx - 1:
            _447 = mem[64]
            mem[64] = mem[64] + 64
            _441 = mem[64]
            mem[64] = mem[64] + 64
            mem[_441 len 64] = call.data[calldata.size len 64]
            mem[_447] = _441
            _444 = mem[64]
            mem[64] = mem[64] + 64
            mem[_444 len 64] = call.data[calldata.size len 64]
            mem[_447 + 32] = _444
            mem[s + 32] = _447
            s = _447
            s = _447
            s = s + 32
            idx = idx - 1
            continue 
        _448 = mem[64]
        mem[64] = mem[64] + 128
        mem[_448] = _203
        mem[_448 + 32] = _205
        mem[_448 + 64] = _206
        mem[_448 + 96] = _208
        _453 = mem[64]
        mem[mem[64]] = 24
        mem[64] = mem[64] + 800
        mem[_453 + 32 len 768] = call.data[calldata.size len 768]
        idx = 0
        while idx < 4:
            require 6 * idx < mem[_453]
            mem[(32 * 6 * idx) + _453 + 32] = mem[mem[(32 * idx) + _261]]
            require idx < 4
            require (6 * idx) + 1 < mem[_453]
            mem[(32 * (6 * idx) + 1) + _453 + 32] = mem[mem[(32 * idx) + _261] + 32]
            require idx < 4
            require (6 * idx) + 2 < mem[_453]
            mem[(32 * (6 * idx) + 2) + _453 + 32] = mem[mem[mem[(32 * idx) + _448]]]
            require idx < 4
            require (6 * idx) + 3 < mem[_453]
            mem[(32 * (6 * idx) + 3) + _453 + 32] = mem[mem[mem[(32 * idx) + _448]] + 32]
            require idx < 4
            require (6 * idx) + 4 < mem[_453]
            mem[(32 * (6 * idx) + 4) + _453 + 32] = mem[mem[mem[(32 * idx) + _448] + 32]]
            require idx < 4
            require (6 * idx) + 5 < mem[_453]
            mem[(32 * (6 * idx) + 5) + _453 + 32] = mem[mem[mem[(32 * idx) + _448] + 32] + 32]
            idx = idx + 1
            continue 
        _522 = mem[64]
        mem[64] = mem[64] + 32
        mem[_522] = call.data[calldata.size]
        bn_pairing = bn256Pairing(mem[_453 + 32 len 768]) 
    else:
        if mem[_185 + 32]:
            _198 = mem[64]
            mem[64] = mem[64] + 64
            mem[_198] = mem[_185]
            mem[_198 + 32] = -(mem[_185 + 32] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            _216 = mem[ceil32(arg1.length) + 608]
            _217 = mem[_58]
            _218 = mem[_58 + 32]
            _219 = mem[_58 + 64]
            _220 = mem[ceil32(arg1.length) + 640]
            _221 = mem[_58 + 96]
            mem[64] = mem[64] + 128
            _259 = mem[64]
            mem[64] = mem[64] + 64
            mem[_259] = 0
            mem[_259 + 32] = 0
            mem[var135001] = _259
            s = var135001
            idx = var135002
            while idx - 1:
                _259 = mem[64]
                mem[64] = mem[64] + 64
                mem[_259] = 0
                mem[_259 + 32] = 0
                mem[s + 32] = _259
                s = s + 32
                idx = idx - 1
                continue 
            _262 = mem[64]
            mem[64] = mem[64] + 128
            mem[_262] = _198
            mem[_262 + 32] = _217
            mem[_262 + 64] = _157 + (6 * _232)
            mem[_262 + 96] = _220
            mem[64] = mem[64] + 128
            _358 = mem[64]
            mem[64] = mem[64] + 64
            _442 = mem[64]
            mem[64] = mem[64] + 64
            mem[_442 len 64] = call.data[calldata.size len 64]
            mem[_358] = _442
            _445 = mem[64]
            mem[64] = mem[64] + 64
            mem[_445 len 64] = call.data[calldata.size len 64]
            mem[_358 + 32] = _445
            mem[_157 + (6 * _232)] = _358
            s = _358
            s = _358
            s = _157 + (6 * _232)
            idx = var149003
            while idx - 1:
                _449 = mem[64]
                mem[64] = mem[64] + 64
                _442 = mem[64]
                mem[64] = mem[64] + 64
                mem[_442 len 64] = call.data[calldata.size len 64]
                mem[_449] = _442
                _445 = mem[64]
                mem[64] = mem[64] + 64
                mem[_445 len 64] = call.data[calldata.size len 64]
                mem[_449 + 32] = _445
                mem[s + 32] = _449
                s = _449
                s = _449
                s = s + 32
                idx = idx - 1
                continue 
            _450 = mem[64]
            mem[64] = mem[64] + 128
            mem[_450] = _216
            mem[_450 + 32] = _218
            mem[_450 + 64] = _219
            mem[_450 + 96] = _221
            _454 = mem[64]
            mem[mem[64]] = 24
            mem[64] = mem[64] + 800
            mem[_454 + 32 len 768] = call.data[calldata.size len 768]
            idx = 0
            while idx < 4:
                require 6 * idx < mem[_454]
                mem[(32 * 6 * idx) + _454 + 32] = mem[mem[(32 * idx) + _262]]
                require idx < 4
                require (6 * idx) + 1 < mem[_454]
                mem[(32 * (6 * idx) + 1) + _454 + 32] = mem[mem[(32 * idx) + _262] + 32]
                require idx < 4
                require (6 * idx) + 2 < mem[_454]
                mem[(32 * (6 * idx) + 2) + _454 + 32] = mem[mem[mem[(32 * idx) + _450]]]
                require idx < 4
                require (6 * idx) + 3 < mem[_454]
                mem[(32 * (6 * idx) + 3) + _454 + 32] = mem[mem[mem[(32 * idx) + _450]] + 32]
                require idx < 4
                require (6 * idx) + 4 < mem[_454]
                mem[(32 * (6 * idx) + 4) + _454 + 32] = mem[mem[mem[(32 * idx) + _450] + 32]]
                require idx < 4
                require (6 * idx) + 5 < mem[_454]
                mem[(32 * (6 * idx) + 5) + _454 + 32] = mem[mem[mem[(32 * idx) + _450] + 32] + 32]
                idx = idx + 1
                continue 
            _526 = mem[64]
            mem[64] = mem[64] + 32
            mem[_526] = call.data[calldata.size]
            bn_pairing = bn256Pairing(mem[_454 + 32 len 768]) 
        else:
            _201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_201] = 0
            mem[_201 + 32] = 0
            _209 = mem[ceil32(arg1.length) + 608]
            _210 = mem[_58]
            _211 = mem[_58 + 32]
            _212 = mem[_58 + 64]
            _213 = mem[ceil32(arg1.length) + 640]
            _214 = mem[_58 + 96]
            mem[64] = mem[64] + 128
            _260 = mem[64]
            mem[64] = mem[64] + 64
            mem[_260] = 0
            mem[_260 + 32] = 0
            mem[var134001] = _260
            s = var134001
            idx = var134002
            while idx - 1:
                _260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_260] = 0
                mem[_260 + 32] = 0
                mem[s + 32] = _260
                s = s + 32
                idx = idx - 1
                continue 
            _263 = mem[64]
            mem[64] = mem[64] + 128
            mem[_263] = _201
            mem[_263 + 32] = _210
            mem[_263 + 64] = _157 + (6 * _232)
            mem[_263 + 96] = _213
            mem[64] = mem[64] + 128
            _359 = mem[64]
            mem[64] = mem[64] + 64
            _443 = mem[64]
            mem[64] = mem[64] + 64
            mem[_443 len 64] = call.data[calldata.size len 64]
            mem[_359] = _443
            _446 = mem[64]
            mem[64] = mem[64] + 64
            mem[_446 len 64] = call.data[calldata.size len 64]
            mem[_359 + 32] = _446
            mem[var148002] = _359
            s = _359
            s = _359
            s = var148002
            idx = var148003
            while idx - 1:
                _451 = mem[64]
                mem[64] = mem[64] + 64
                _443 = mem[64]
                mem[64] = mem[64] + 64
                mem[_443 len 64] = call.data[calldata.size len 64]
                mem[_451] = _443
                _446 = mem[64]
                mem[64] = mem[64] + 64
                mem[_446 len 64] = call.data[calldata.size len 64]
                mem[_451 + 32] = _446
                mem[s + 32] = _451
                s = _451
                s = _451
                s = s + 32
                idx = idx - 1
                continue 
            _452 = mem[64]
            mem[64] = mem[64] + 128
            mem[_452] = _209
            mem[_452 + 32] = _211
            mem[_452 + 64] = _212
            mem[_452 + 96] = _214
            _455 = mem[64]
            mem[mem[64]] = 24
            mem[64] = mem[64] + 800
            mem[_455 + 32 len 768] = call.data[calldata.size len 768]
            idx = 0
            while idx < 4:
                require 6 * idx < mem[_455]
                mem[(32 * 6 * idx) + _455 + 32] = mem[mem[(32 * idx) + _263]]
                require idx < 4
                require (6 * idx) + 1 < mem[_455]
                mem[(32 * (6 * idx) + 1) + _455 + 32] = mem[mem[(32 * idx) + _263] + 32]
                require idx < 4
                require (6 * idx) + 2 < mem[_455]
                mem[(32 * (6 * idx) + 2) + _455 + 32] = mem[mem[mem[(32 * idx) + _452]]]
                require idx < 4
                require (6 * idx) + 3 < mem[_455]
                mem[(32 * (6 * idx) + 3) + _455 + 32] = mem[mem[mem[(32 * idx) + _452]] + 32]
                require idx < 4
                require (6 * idx) + 4 < mem[_455]
                mem[(32 * (6 * idx) + 4) + _455 + 32] = mem[mem[mem[(32 * idx) + _452] + 32]]
                require idx < 4
                require (6 * idx) + 5 < mem[_455]
                mem[(32 * (6 * idx) + 5) + _455 + 32] = mem[mem[mem[(32 * idx) + _452] + 32] + 32]
                idx = idx + 1
                continue 
            _530 = mem[64]
            mem[64] = mem[64] + 32
            mem[_530] = call.data[calldata.size]
            bn_pairing = bn256Pairing(mem[_455 + 32 len 768]) 
    require bn256Pairing.result
    if not bn256Pairing.result:
        revert with 0, 'pairing-opcode-failed'
    return not not bn_pairing
}



}
