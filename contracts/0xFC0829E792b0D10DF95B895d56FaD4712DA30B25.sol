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
    mem[var50001] = ceil32(arg1.length) + 2336
    s = var50001
    idx = var50002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(arg1.length) + 2336] = 0
        mem[ceil32(arg1.length) + 2368] = 0
        mem[s + 32] = ceil32(arg1.length) + 2336
        s = s + 32
        idx = idx - 1
        continue 
    mem[ceil32(arg1.length) + 1440] = ceil32(arg1.length) + 2112
    _57 = mem[64]
    mem[64] = mem[64] + 160
    _58 = mem[64]
    mem[64] = mem[64] + 64
    mem[_58] = 0
    mem[_58 + 32] = 0
    mem[_57] = _58
    _59 = mem[64]
    mem[64] = mem[64] + 64
    _60 = mem[64]
    mem[64] = mem[64] + 64
    mem[_60 len 64] = call.data[calldata.size len 64]
    mem[_59] = _60
    _61 = mem[64]
    mem[64] = mem[64] + 64
    mem[_61 len 64] = call.data[calldata.size len 64]
    mem[_59 + 32] = _61
    mem[_57 + 32] = _59
    _62 = mem[64]
    mem[64] = mem[64] + 64
    _63 = mem[64]
    mem[64] = mem[64] + 64
    mem[_63 len 64] = call.data[calldata.size len 64]
    mem[_62] = _63
    _64 = mem[64]
    mem[64] = mem[64] + 64
    mem[_64 len 64] = call.data[calldata.size len 64]
    mem[_62 + 32] = _64
    mem[_57 + 64] = _62
    _65 = mem[64]
    mem[64] = mem[64] + 64
    _66 = mem[64]
    mem[64] = mem[64] + 64
    mem[_66 len 64] = call.data[calldata.size len 64]
    mem[_65] = _66
    _67 = mem[64]
    mem[64] = mem[64] + 64
    mem[_67 len 64] = call.data[calldata.size len 64]
    mem[_65 + 32] = _67
    mem[_57 + 96] = _65
    _68 = mem[64]
    mem[64] = mem[64] + 224
    _124 = mem[64]
    mem[64] = mem[64] + 64
    mem[_124] = 0
    mem[_124 + 32] = 0
    mem[var81001] = _124
    s = var81001
    idx = var81002
    while idx - 1:
        _124 = mem[64]
        mem[64] = mem[64] + 64
        mem[_124] = 0
        mem[_124 + 32] = 0
        mem[s + 32] = _124
        s = s + 32
        idx = idx - 1
        continue 
    mem[_57 + 128] = _68
    _125 = mem[64]
    mem[64] = mem[64] + 64
    mem[_125] = 0x2bbc2aee1776a9b64687b8f4eeb2a5238ee3763db5b99dbf8e6571507d1edc8d
    mem[_125 + 32] = 0x1524b369d37ba1286a8d05ecbf0c8454030c7b7ac15af5e917065b5b5e7df192
    mem[_57] = _125
    _126 = mem[64]
    mem[64] = mem[64] + 128
    mem[_126 + 64] = 0x68afe432c6542e0458ec3b5d3863b35461374803dbaa94b73ab48d8103c8dd7
    mem[_126 + 96] = 0x622647ca2834adfdc935e3fabc30a19fd276d2b45a26e4614d3e3762a38d73d
    mem[_126] = _126 + 64
    _127 = mem[64]
    mem[64] = mem[64] + 64
    mem[_127] = 0xaa6ffc81080ad995a6d02a20673c488667b762787d23327c5cd344aa99e3231
    mem[_127 + 32] = 0x229e8e3d4ec3adb0bbd3413c56ead8134a45e7e11c5ffa11b60cbf9fdd775285
    mem[_126 + 32] = _127
    mem[_57 + 32] = _126
    _128 = mem[64]
    mem[64] = mem[64] + 128
    mem[_128 + 64] = 0x198e9393920d483a7260bfb731fb5d25f1aa493335a9e71297e485b7aef312c2
    mem[_128 + 96] = 0x1800deef121f1e76426a00665e5c4479674322d4f75edadd46debd5cd992f6ed
    mem[_128] = _128 + 64
    _129 = mem[64]
    mem[64] = mem[64] + 64
    mem[_129] = 0x90689d0585ff075ec9e99ad690c3395bc4b313370b38ef355acdadcd122975b
    mem[_129 + 32] = 0x12c85ea5db8c6deb4aab71808dcb408fe3d1e7690c43d37b4ce6cc0166fa7daa
    mem[_128 + 32] = _129
    mem[_57 + 64] = _128
    _130 = mem[64]
    mem[64] = mem[64] + 128
    mem[_130 + 64] = 0x210ef68bfd60ec5d70b2069292c55bf16105fc3086cec9b4ec14200a44dba3f1
    mem[_130 + 96] = 0x228d7e877fb911164dc53803df02c44a3576849dbb1236887a8a0704cf824488
    mem[_130] = _130 + 64
    _131 = mem[64]
    mem[64] = mem[64] + 64
    mem[_131] = 0x1135f10a027e2852b6b4c8ecd964c293c777082f03082e305e97b638e3023d73
    mem[_131 + 32] = 0x13772b927d6ac69d87d38cd983ace01bad957ec410ee1cd6cbd6f19957dbe0f0
    mem[_130 + 32] = _131
    mem[_57 + 96] = _130
    _132 = mem[64]
    mem[64] = mem[64] + 64
    mem[_132] = 0x24749a668c901ecc64c2dc550de182ab8f48181ac0235f5d625d87ea9c11e0f3
    mem[_132 + 32] = 0x236819e4306cc834151499e9e12b79bfcbf03dd351abd9e061ecba6c2bee83e3
    mem[_68] = _132
    _134 = mem[64]
    mem[64] = mem[64] + 64
    mem[_134] = 0x2c79012d84539da5d2ff48f79dd6f3d18a643679207fac579ee745bbd974ab28
    mem[_134 + 32] = 0x230b3bfde439187015eb036176c806d3bd9fc006ce42c438be18fb0f9dd395b7
    mem[_68 + 32] = _134
    _136 = mem[64]
    mem[64] = mem[64] + 64
    mem[_136] = 0x279f300fa13c4b1fc2f5f9b56d48c50e4017289822fb53303383835a6e3546f1
    mem[_136 + 32] = 0x258572bec799949367b3b9cfeaf9fca8372a052406f36688cf8cb55f492e251c
    mem[_68 + 64] = _136
    _138 = mem[64]
    mem[64] = mem[64] + 64
    mem[_138] = 0x2104f8701a0a21b46fb8e868f7072b0d5f7b8a387f9042428ed883bae1aa1453
    mem[_138 + 32] = 0x6e32ed669efde6610e82126fdea84e48904fd96b91cdbdc991bf2dd922799ca
    mem[_68 + 96] = _138
    _140 = mem[64]
    mem[64] = mem[64] + 64
    mem[_140] = 0x2be81e4048520a6dfbdee91a343a0dca40555bee22baf107449fc440a996ec77
    mem[_140 + 32] = 0x616677c9c71ce9e05f3a99ff9254b0c4cb3a36a6142d4dfabfd250d05cacabf
    mem[_68 + 128] = _140
    _142 = mem[64]
    mem[64] = mem[64] + 64
    mem[_142] = 0x14d102a2624be2f68cac065bf60528603bfe25d63ce2126c05afcf9bb7d1c7da
    mem[_142 + 32] = 0xc4b5c6d2459c25b96d9f305c3ab8a7cd834a7bb2ea3250f9e7da47f5c454be
    mem[_68 + 160] = _142
    _144 = mem[64]
    mem[64] = mem[64] + 64
    mem[_144] = 0x1afdf6a86a81cf66b849adaa410f8efc3fb58c424cf5c734d35ebc6eeaf4a579
    mem[_144 + 32] = 0x19ee9bb5fcfc23d4e5437c94d2e51cdb3ded852fb2713bcf43066dcc3951b7d
    mem[_68 + 192] = _144
    _146 = mem[64]
    mem[64] = mem[64] + 64
    mem[_146] = 0
    mem[_146 + 32] = 0
    _147 = mem[64]
    mem[64] = mem[64] + 64
    mem[_147] = 0
    mem[_147 + 32] = 0
    _150 = mem[64]
    mem[64] = mem[64] + 64
    mem[_150] = 0
    mem[_150 + 32] = 0
    _151 = mem[64]
    mem[64] = mem[64] + 128
    mem[_151] = 0
    mem[_151 + 32] = 0
    mem[_151 + 64] = 0x24749a668c901ecc64c2dc550de182ab8f48181ac0235f5d625d87ea9c11e0f3
    mem[_151 + 96] = 0x236819e4306cc834151499e9e12b79bfcbf03dd351abd9e061ecba6c2bee83e3
    bn_add = bn256Add(0, 0, 0x24749a668c901ecc64c2dc550de182ab8f48181ac0235f5d625d87ea9c11e0f3, 0x236819e4306cc834151499e9e12b79bfcbf03dd351abd9e061ecba6c2bee83e3, mem[_151 + 128 len 64]) 
    mem[_150 len 96] = bn_add
    require bn256Add.result
    if not bn256Add.result:
        revert with 0, 'pairing-add-failed'
    idx = 0
    s = _150
    while idx < 6:
        if mem[(32 * idx) + ceil32(arg1.length) + 128] >= 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001:
            revert with 0, 'verifier-gte-snark-scalar-field'
        require idx + 1 < 7
        _185 = mem[(32 * idx + 1) + mem[_57 + 128]]
        require idx < 6
        _187 = mem[(32 * idx) + ceil32(arg1.length) + 128]
        _195 = mem[64]
        mem[64] = mem[64] + 64
        mem[_195] = 0
        mem[_195 + 32] = 0
        _208 = mem[64]
        mem[64] = mem[64] + 96
        mem[_208 len 96] = call.data[calldata.size len 96]
        mem[_208] = mem[_185]
        mem[_208 + 32] = mem[_185 + 32]
        mem[_208 + 64] = _187
        bn_scalar_mul = bn256ScalarMul(mem[_208 len 64], _187, mem[_208 + 96]) 
        mem[_195 len 96] = bn_scalar_mul
        require bn256ScalarMul.result
        if not bn256ScalarMul.result:
            revert with 0, 'pairing-mul-failed'
        _225 = mem[64]
        mem[64] = mem[64] + 64
        mem[_225] = 0
        mem[_225 + 32] = 0
        _226 = mem[64]
        mem[64] = mem[64] + 128
        mem[_226 len 128] = call.data[calldata.size len 128]
        mem[_226] = mem[s]
        mem[_226 + 32] = mem[s + 32]
        mem[_226 + 64] = bn_scalar_mul
        mem[_226 + 96] = Mask(256, -256, bn_scalar_mul) << 256
        bn_add = bn256Add(mem[_226 len 64], bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256, mem[_226 + 128 len 64]) 
        mem[_225 len 96] = bn_add
        require bn256Add.result
        if not bn256Add.result:
            revert with 0, 'pairing-add-failed'
        idx = idx + 1
        s = _225
        continue 
    _178 = mem[ceil32(arg1.length) + 576]
    _180 = mem[64]
    mem[64] = mem[64] + 64
    mem[_180] = 0
    mem[_180 + 32] = 0
    if mem[_178]:
        _188 = mem[64]
        mem[64] = mem[64] + 64
        mem[_188] = mem[_178]
        mem[_188 + 32] = -(mem[_178 + 32] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
        _196 = mem[ceil32(arg1.length) + 608]
        _197 = mem[_57]
        _198 = mem[_57 + 32]
        _199 = mem[_57 + 64]
        _200 = mem[ceil32(arg1.length) + 640]
        _201 = mem[_57 + 96]
        mem[64] = mem[64] + 128
        _251 = mem[64]
        mem[64] = mem[64] + 64
        mem[_251] = 0
        mem[_251 + 32] = 0
        mem[var115001] = _251
        s = var115001
        idx = var115002
        while idx - 1:
            _251 = mem[64]
            mem[64] = mem[64] + 64
            mem[_251] = 0
            mem[_251 + 32] = 0
            mem[s + 32] = _251
            s = s + 32
            idx = idx - 1
            continue 
        _254 = mem[64]
        mem[64] = mem[64] + 128
        mem[_254] = _188
        mem[_254 + 32] = _197
        mem[_254 + 64] = _150 + (6 * _225)
        mem[_254 + 96] = _200
        mem[64] = mem[64] + 128
        _350 = mem[64]
        mem[64] = mem[64] + 64
        _434 = mem[64]
        mem[64] = mem[64] + 64
        mem[_434 len 64] = call.data[calldata.size len 64]
        mem[_350] = _434
        _437 = mem[64]
        mem[64] = mem[64] + 64
        mem[_437 len 64] = call.data[calldata.size len 64]
        mem[_350 + 32] = _437
        mem[var129002] = _350
        s = _350
        s = _350
        s = var129002
        idx = var129003
        while idx - 1:
            _440 = mem[64]
            mem[64] = mem[64] + 64
            _434 = mem[64]
            mem[64] = mem[64] + 64
            mem[_434 len 64] = call.data[calldata.size len 64]
            mem[_440] = _434
            _437 = mem[64]
            mem[64] = mem[64] + 64
            mem[_437 len 64] = call.data[calldata.size len 64]
            mem[_440 + 32] = _437
            mem[s + 32] = _440
            s = _440
            s = _440
            s = s + 32
            idx = idx - 1
            continue 
        _441 = mem[64]
        mem[64] = mem[64] + 128
        mem[_441] = _196
        mem[_441 + 32] = _198
        mem[_441 + 64] = _199
        mem[_441 + 96] = _201
        _442 = mem[64]
        mem[mem[64]] = 24
        mem[64] = mem[64] + 800
        mem[_442 + 32 len 768] = call.data[calldata.size len 768]
        idx = 0
        while idx < 4:
            require 6 * idx < mem[_442]
            mem[(32 * 6 * idx) + _442 + 32] = mem[mem[(32 * idx) + _254]]
            require idx < 4
            require (6 * idx) + 1 < mem[_442]
            mem[(32 * (6 * idx) + 1) + _442 + 32] = mem[mem[(32 * idx) + _254] + 32]
            require idx < 4
            require (6 * idx) + 2 < mem[_442]
            mem[(32 * (6 * idx) + 2) + _442 + 32] = mem[mem[mem[(32 * idx) + _441]]]
            require idx < 4
            require (6 * idx) + 3 < mem[_442]
            mem[(32 * (6 * idx) + 3) + _442 + 32] = mem[mem[mem[(32 * idx) + _441]] + 32]
            require idx < 4
            require (6 * idx) + 4 < mem[_442]
            mem[(32 * (6 * idx) + 4) + _442 + 32] = mem[mem[mem[(32 * idx) + _441] + 32]]
            require idx < 4
            require (6 * idx) + 5 < mem[_442]
            mem[(32 * (6 * idx) + 5) + _442 + 32] = mem[mem[mem[(32 * idx) + _441] + 32] + 32]
            idx = idx + 1
            continue 
        _515 = mem[64]
        mem[64] = mem[64] + 32
        mem[_515] = call.data[calldata.size]
        bn_pairing = bn256Pairing(mem[_442 + 32 len 768]) 
    else:
        if mem[_178 + 32]:
            _191 = mem[64]
            mem[64] = mem[64] + 64
            mem[_191] = mem[_178]
            mem[_191 + 32] = -(mem[_178 + 32] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            _209 = mem[ceil32(arg1.length) + 608]
            _210 = mem[_57]
            _211 = mem[_57 + 32]
            _212 = mem[_57 + 64]
            _213 = mem[ceil32(arg1.length) + 640]
            _214 = mem[_57 + 96]
            mem[64] = mem[64] + 128
            _252 = mem[64]
            mem[64] = mem[64] + 64
            mem[_252] = 0
            mem[_252 + 32] = 0
            mem[var116001] = _252
            s = var116001
            idx = var116002
            while idx - 1:
                _252 = mem[64]
                mem[64] = mem[64] + 64
                mem[_252] = 0
                mem[_252 + 32] = 0
                mem[s + 32] = _252
                s = s + 32
                idx = idx - 1
                continue 
            _255 = mem[64]
            mem[64] = mem[64] + 128
            mem[_255] = _191
            mem[_255 + 32] = _210
            mem[_255 + 64] = _150 + (6 * _225)
            mem[_255 + 96] = _213
            mem[64] = mem[64] + 128
            _351 = mem[64]
            mem[64] = mem[64] + 64
            _435 = mem[64]
            mem[64] = mem[64] + 64
            mem[_435 len 64] = call.data[calldata.size len 64]
            mem[_351] = _435
            _438 = mem[64]
            mem[64] = mem[64] + 64
            mem[_438 len 64] = call.data[calldata.size len 64]
            mem[_351 + 32] = _438
            mem[var130002] = _351
            s = _351
            s = _351
            s = var130002
            idx = var130003
            while idx - 1:
                _443 = mem[64]
                mem[64] = mem[64] + 64
                _435 = mem[64]
                mem[64] = mem[64] + 64
                mem[_435 len 64] = call.data[calldata.size len 64]
                mem[_443] = _435
                _438 = mem[64]
                mem[64] = mem[64] + 64
                mem[_438 len 64] = call.data[calldata.size len 64]
                mem[_443 + 32] = _438
                mem[s + 32] = _443
                s = _443
                s = _443
                s = s + 32
                idx = idx - 1
                continue 
            _444 = mem[64]
            mem[64] = mem[64] + 128
            mem[_444] = _209
            mem[_444 + 32] = _211
            mem[_444 + 64] = _212
            mem[_444 + 96] = _214
            _445 = mem[64]
            mem[mem[64]] = 24
            mem[64] = mem[64] + 800
            mem[_445 + 32 len 768] = call.data[calldata.size len 768]
            idx = 0
            while idx < 4:
                require 6 * idx < mem[_445]
                mem[(32 * 6 * idx) + _445 + 32] = mem[mem[(32 * idx) + _255]]
                require idx < 4
                require (6 * idx) + 1 < mem[_445]
                mem[(32 * (6 * idx) + 1) + _445 + 32] = mem[mem[(32 * idx) + _255] + 32]
                require idx < 4
                require (6 * idx) + 2 < mem[_445]
                mem[(32 * (6 * idx) + 2) + _445 + 32] = mem[mem[mem[(32 * idx) + _444]]]
                require idx < 4
                require (6 * idx) + 3 < mem[_445]
                mem[(32 * (6 * idx) + 3) + _445 + 32] = mem[mem[mem[(32 * idx) + _444]] + 32]
                require idx < 4
                require (6 * idx) + 4 < mem[_445]
                mem[(32 * (6 * idx) + 4) + _445 + 32] = mem[mem[mem[(32 * idx) + _444] + 32]]
                require idx < 4
                require (6 * idx) + 5 < mem[_445]
                mem[(32 * (6 * idx) + 5) + _445 + 32] = mem[mem[mem[(32 * idx) + _444] + 32] + 32]
                idx = idx + 1
                continue 
            _519 = mem[64]
            mem[64] = mem[64] + 32
            mem[_519] = call.data[calldata.size]
            bn_pairing = bn256Pairing(mem[_445 + 32 len 768]) 
        else:
            _194 = mem[64]
            mem[64] = mem[64] + 64
            mem[_194] = 0
            mem[_194 + 32] = 0
            _202 = mem[ceil32(arg1.length) + 608]
            _203 = mem[_57]
            _204 = mem[_57 + 32]
            _205 = mem[_57 + 64]
            _206 = mem[ceil32(arg1.length) + 640]
            _207 = mem[_57 + 96]
            mem[64] = mem[64] + 128
            _253 = mem[64]
            mem[64] = mem[64] + 64
            mem[_253] = 0
            mem[_253 + 32] = 0
            mem[var115001] = _253
            s = var115001
            idx = var115002
            while idx - 1:
                _253 = mem[64]
                mem[64] = mem[64] + 64
                mem[_253] = 0
                mem[_253 + 32] = 0
                mem[s + 32] = _253
                s = s + 32
                idx = idx - 1
                continue 
            _256 = mem[64]
            mem[64] = mem[64] + 128
            mem[_256] = _194
            mem[_256 + 32] = _203
            mem[_256 + 64] = _150 + (6 * _225)
            mem[_256 + 96] = _206
            mem[64] = mem[64] + 128
            _352 = mem[64]
            mem[64] = mem[64] + 64
            _436 = mem[64]
            mem[64] = mem[64] + 64
            mem[_436 len 64] = call.data[calldata.size len 64]
            mem[_352] = _436
            _439 = mem[64]
            mem[64] = mem[64] + 64
            mem[_439 len 64] = call.data[calldata.size len 64]
            mem[_352 + 32] = _439
            mem[var129002] = _352
            s = _352
            s = _352
            s = var129002
            idx = var129003
            while idx - 1:
                _446 = mem[64]
                mem[64] = mem[64] + 64
                _436 = mem[64]
                mem[64] = mem[64] + 64
                mem[_436 len 64] = call.data[calldata.size len 64]
                mem[_446] = _436
                _439 = mem[64]
                mem[64] = mem[64] + 64
                mem[_439 len 64] = call.data[calldata.size len 64]
                mem[_446 + 32] = _439
                mem[s + 32] = _446
                s = _446
                s = _446
                s = s + 32
                idx = idx - 1
                continue 
            _447 = mem[64]
            mem[64] = mem[64] + 128
            mem[_447] = _202
            mem[_447 + 32] = _204
            mem[_447 + 64] = _205
            mem[_447 + 96] = _207
            _448 = mem[64]
            mem[mem[64]] = 24
            mem[64] = mem[64] + 800
            mem[_448 + 32 len 768] = call.data[calldata.size len 768]
            idx = 0
            while idx < 4:
                require 6 * idx < mem[_448]
                mem[(32 * 6 * idx) + _448 + 32] = mem[mem[(32 * idx) + _256]]
                require idx < 4
                require (6 * idx) + 1 < mem[_448]
                mem[(32 * (6 * idx) + 1) + _448 + 32] = mem[mem[(32 * idx) + _256] + 32]
                require idx < 4
                require (6 * idx) + 2 < mem[_448]
                mem[(32 * (6 * idx) + 2) + _448 + 32] = mem[mem[mem[(32 * idx) + _447]]]
                require idx < 4
                require (6 * idx) + 3 < mem[_448]
                mem[(32 * (6 * idx) + 3) + _448 + 32] = mem[mem[mem[(32 * idx) + _447]] + 32]
                require idx < 4
                require (6 * idx) + 4 < mem[_448]
                mem[(32 * (6 * idx) + 4) + _448 + 32] = mem[mem[mem[(32 * idx) + _447] + 32]]
                require idx < 4
                require (6 * idx) + 5 < mem[_448]
                mem[(32 * (6 * idx) + 5) + _448 + 32] = mem[mem[mem[(32 * idx) + _447] + 32] + 32]
                idx = idx + 1
                continue 
            _523 = mem[64]
            mem[64] = mem[64] + 32
            mem[_523] = call.data[calldata.size]
            bn_pairing = bn256Pairing(mem[_448 + 32 len 768]) 
    require bn256Pairing.result
    if not bn256Pairing.result:
        revert with 0, 'pairing-opcode-failed'
    return bool(bn_pairing)
}



}
