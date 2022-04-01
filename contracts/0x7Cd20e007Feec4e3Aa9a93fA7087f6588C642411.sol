contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function verifyProof(bytes arg1, uint256[7] arg2) payable {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len 224] = call.data[36 len 224]
    mem[ceil32(arg1.length) + 352 len 256] = call.data[calldata.size len 256]
    require arg1.length >= 256
    idx = 0
    while uint8(idx) < 8:
        if mem[(32 * uint8(idx)) + 128] >= 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47:
            revert with 0, 
                        32,
                        34,
                        0x6476657269666965722d70726f6f662d656c656d656e742d6774652d7072696d652d,
                        mem[ceil32(arg1.length) + 710 len 30]
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 608] = 0
    mem[ceil32(arg1.length) + 640] = 0
    mem[ceil32(arg1.length) + 672] = mem[128]
    mem[ceil32(arg1.length) + 704] = mem[160]
    mem[ceil32(arg1.length) + 800 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 736] = ceil32(arg1.length) + 800
    mem[ceil32(arg1.length) + 864 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 768] = ceil32(arg1.length) + 864
    mem[ceil32(arg1.length) + 992] = mem[192]
    mem[ceil32(arg1.length) + 1024] = mem[224]
    mem[ceil32(arg1.length) + 928] = ceil32(arg1.length) + 992
    mem[ceil32(arg1.length) + 1056] = mem[256]
    mem[ceil32(arg1.length) + 1088] = mem[288]
    mem[ceil32(arg1.length) + 960] = ceil32(arg1.length) + 1056
    mem[ceil32(arg1.length) + 1120] = 0
    mem[ceil32(arg1.length) + 1152] = 0
    mem[ceil32(arg1.length) + 1184] = mem[320]
    mem[ceil32(arg1.length) + 1216] = mem[352]
    mem[ceil32(arg1.length) + 1408] = 0
    mem[ceil32(arg1.length) + 1440] = 0
    mem[ceil32(arg1.length) + 1248] = ceil32(arg1.length) + 1408
    mem[ceil32(arg1.length) + 1536 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1472] = ceil32(arg1.length) + 1536
    mem[ceil32(arg1.length) + 1600 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1504] = ceil32(arg1.length) + 1600
    mem[ceil32(arg1.length) + 1280] = ceil32(arg1.length) + 1472
    mem[ceil32(arg1.length) + 1728 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1664] = ceil32(arg1.length) + 1728
    mem[ceil32(arg1.length) + 1792 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1696] = ceil32(arg1.length) + 1792
    mem[ceil32(arg1.length) + 1312] = ceil32(arg1.length) + 1664
    mem[ceil32(arg1.length) + 1920 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1856] = ceil32(arg1.length) + 1920
    mem[ceil32(arg1.length) + 1984 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1888] = ceil32(arg1.length) + 1984
    mem[ceil32(arg1.length) + 1344] = ceil32(arg1.length) + 1856
    mem[64] = ceil32(arg1.length) + 2368
    mem[ceil32(arg1.length) + 2304] = 0
    mem[ceil32(arg1.length) + 2336] = 0
    mem[var48001] = ceil32(arg1.length) + 2304
    s = var48001
    idx = var48002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(arg1.length) + 2304] = 0
        mem[ceil32(arg1.length) + 2336] = 0
        mem[s + 32] = ceil32(arg1.length) + 2304
        s = s + 32
        idx = idx - 1
        continue 
    mem[ceil32(arg1.length) + 1376] = ceil32(arg1.length) + 2048
    _56 = mem[64]
    mem[64] = mem[64] + 160
    _57 = mem[64]
    mem[64] = mem[64] + 64
    mem[_57] = 0
    mem[_57 + 32] = 0
    mem[_56] = _57
    _58 = mem[64]
    mem[64] = mem[64] + 64
    _59 = mem[64]
    mem[64] = mem[64] + 64
    mem[_59 len 64] = call.data[calldata.size len 64]
    mem[_58] = _59
    _60 = mem[64]
    mem[64] = mem[64] + 64
    mem[_60 len 64] = call.data[calldata.size len 64]
    mem[_58 + 32] = _60
    mem[_56 + 32] = _58
    _61 = mem[64]
    mem[64] = mem[64] + 64
    _62 = mem[64]
    mem[64] = mem[64] + 64
    mem[_62 len 64] = call.data[calldata.size len 64]
    mem[_61] = _62
    _63 = mem[64]
    mem[64] = mem[64] + 64
    mem[_63 len 64] = call.data[calldata.size len 64]
    mem[_61 + 32] = _63
    mem[_56 + 64] = _61
    _64 = mem[64]
    mem[64] = mem[64] + 64
    _65 = mem[64]
    mem[64] = mem[64] + 64
    mem[_65 len 64] = call.data[calldata.size len 64]
    mem[_64] = _65
    _66 = mem[64]
    mem[64] = mem[64] + 64
    mem[_66 len 64] = call.data[calldata.size len 64]
    mem[_64 + 32] = _66
    mem[_56 + 96] = _64
    _67 = mem[64]
    mem[64] = mem[64] + 256
    _118 = mem[64]
    mem[64] = mem[64] + 64
    mem[_118] = 0
    mem[_118 + 32] = 0
    mem[var79001] = _118
    s = var79001
    idx = var79002
    while idx - 1:
        _118 = mem[64]
        mem[64] = mem[64] + 64
        mem[_118] = 0
        mem[_118 + 32] = 0
        mem[s + 32] = _118
        s = s + 32
        idx = idx - 1
        continue 
    mem[_56 + 128] = _67
    _119 = mem[64]
    mem[64] = mem[64] + 64
    mem[_119] = 0x1190bc0c3f219043d3da396ca8a1a6bc247a98ccee95b8baca420fb5121fa3f4
    mem[_119 + 32] = 0x105dd358967e4556ecb194f27ed41e0fe5df6989e18ec5c9cc7f4f1fd56346e5
    mem[_56] = _119
    _120 = mem[64]
    mem[64] = mem[64] + 128
    mem[_120 + 64] = 0xc1909b1e1fb90494343c06dc340fcfe49f6e153d7dc8b923bf92a497a17810e
    mem[_120 + 96] = 0x4a052d9f151b859002305ecf72f6bc841b91c87749ca742f04399205c1c304f
    mem[_120] = _120 + 64
    _121 = mem[64]
    mem[64] = mem[64] + 64
    mem[_121] = 0x15a1cc06d4b2e0dc75d33622d2edf7b45156adca40528c0731efb0cbd7c1f04b
    mem[_121 + 32] = 0x1f0d7d2475917af2f54576f66b437e498d932428c1235b4f12bf8add3d916ef7
    mem[_120 + 32] = _121
    mem[_56 + 32] = _120
    _122 = mem[64]
    mem[64] = mem[64] + 128
    mem[_122 + 64] = 0x127074e49566b03ae482de65f0f155740c23dd305be76ad3b1f47869a5264171
    mem[_122 + 96] = 0x1bb65dbcaa6824ef89f06795a959ce0a16cea592601bfe143d1623bf5ac1efc3
    mem[_122] = _122 + 64
    _123 = mem[64]
    mem[64] = mem[64] + 64
    mem[_123] = 0x11abbd8ecdfb23359d74997bca97b893d8f7b5a5f1bc0aeb6542ca4a9330bc56
    mem[_123 + 32] = 0x18e6bb9eaf7a6b8e9db6bb0d134038ed8a7eaf16b0e53d067330487719f481a
    mem[_122 + 32] = _123
    mem[_56 + 64] = _122
    _124 = mem[64]
    mem[64] = mem[64] + 128
    mem[_124 + 64] = 0x1fadd90a747d917f6b389cc524a04bed8d4de39c91f191644dddfa301136a64c
    mem[_124 + 96] = 0x10aec9cd852987a2776cf42daa3f82c4ae9f37c8b58cf4b4e7a600b69560dee0
    mem[_124] = _124 + 64
    _125 = mem[64]
    mem[64] = mem[64] + 64
    mem[_125] = 0x1808f7f6b6e4ff6dc946950a0f967af37f6869da980bfc755a454b6f3932fe32
    mem[_125 + 32] = 0xfd1d89219e59af62fda609baebcfee92dc823ba51f4202210610acb16688746
    mem[_124 + 32] = _125
    mem[_56 + 96] = _124
    _126 = mem[64]
    mem[64] = mem[64] + 64
    mem[_126] = 0xe41e981d4358782d84ac53bf6c1b219d75858fb8bac7f3e073c5805908673c2
    mem[_126 + 32] = 0x2eddc8328b30944af39f6e4378f27a48855d87f91f1a0b509bc1c180f54ce1b0
    mem[_67] = _126
    _128 = mem[64]
    mem[64] = mem[64] + 64
    mem[_128] = 0x17edbdedf976ec9f8b0c96959bd034546a4df7397551d1b8b43ea6287c194d50
    mem[_128 + 32] = 0xf54187379b6b5dd10b8322fc847e779f970e80172b9efd310414e1a77eeef61
    mem[_67 + 32] = _128
    _130 = mem[64]
    mem[64] = mem[64] + 64
    mem[_130] = 0x29c11a4d8e7840ad22c64600d293d30d7ec964e4563c05f13bba27333ca932de
    mem[_130 + 32] = 0xeaaac7596af19b4342a9dd1fc86a039ff0c9ab8cbc9e1213a19442ab7169fbd
    mem[_67 + 64] = _130
    _132 = mem[64]
    mem[64] = mem[64] + 64
    mem[_132] = 0x1a11f164503e582bffa4efe77ad14c3f9c1319a2dea5ad22f04b39c80c864d9
    mem[_132 + 32] = 0xd5a6e1057e4d04ed36548e274e982e117831333749335cd0384915efa451cc5
    mem[_67 + 96] = _132
    _134 = mem[64]
    mem[64] = mem[64] + 64
    mem[_134] = 0x737d91312411a582f03c62677669e24366de42dd1176331cabd4abf9cc855eb
    mem[_134 + 32] = 0xed110356e3510e1152c8b21a49851e4a6f757ddfc4fd26dcb60e891c4e95bae
    mem[_67 + 128] = _134
    _136 = mem[64]
    mem[64] = mem[64] + 64
    mem[_136] = 0x2c0bbcf98b401117f112d847db88a80951e84247b57eba2dd6e1b194ec66404f
    mem[_136 + 32] = 0x1494183f065efface432f62850e0b473728919b80aab65f882d70dd56e1ade0c
    mem[_67 + 160] = _136
    _138 = mem[64]
    mem[64] = mem[64] + 64
    mem[_138] = 0x1c6fe107e1c0cac0fcbd0649b3c76180a6dba77c3a594bd903d287b0b9315170
    mem[_138 + 32] = 0x222992115a58f829b668a08e3709680bed0523444d9ea8a2f0b871e243c0ff27
    mem[_67 + 192] = _138
    _140 = mem[64]
    mem[64] = mem[64] + 64
    mem[_140] = 0x2ea4000dcef3a9b2c0ba82645c439f2203c3f8353ba69f16fcd73e54fdf9b5a9
    mem[_140 + 32] = 0x43ad44d5f9b1c6f6c19e3fdc1ae2bfecc56ef225d76a872f768ea4f723ce4c9
    mem[_67 + 224] = _140
    _142 = mem[64]
    mem[64] = mem[64] + 64
    mem[_142] = 0
    mem[_142 + 32] = 0
    idx = 0
    s = mem[mem[_56 + 128]]
    while idx < 7:
        if mem[(32 * idx) + ceil32(arg1.length) + 128] >= 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001:
            revert with 0, 32, 37, 0xfe76657269666965722d696e7075742d6774652d736e61726b2d7363616c61722d6669656c, mem[mem[64] + 105 len 27]
        require idx + 1 < 8
        _173 = mem[(32 * idx + 1) + mem[_56 + 128]]
        require idx < 7
        _175 = mem[(32 * idx) + ceil32(arg1.length) + 128]
        _183 = mem[64]
        mem[64] = mem[64] + 64
        mem[_183] = 0
        mem[_183 + 32] = 0
        _192 = mem[64]
        mem[64] = mem[64] + 96
        mem[_192 len 96] = call.data[calldata.size len 96]
        _197 = mem[64]
        mem[64] = mem[64] + 96
        mem[_197] = mem[_173]
        mem[_197 + 32] = mem[_173 + 32]
        mem[_197 + 64] = _175
        bn_scalar_mul = bn256ScalarMul(mem[_197 len 64], _175, mem[_197 + 96]) 
        mem[_183 len 96] = bn_scalar_mul
        require bn256ScalarMul.result
        if not bn256ScalarMul.result:
            revert with 0, 'pairing-mul-failed'
        _337 = mem[64]
        mem[64] = mem[64] + 64
        mem[_337] = 0
        mem[_337 + 32] = 0
        _345 = mem[64]
        mem[64] = mem[64] + 128
        mem[_345 len 128] = call.data[calldata.size len 128]
        _348 = mem[64]
        mem[64] = mem[64] + 128
        mem[_348] = mem[s]
        mem[_348 + 32] = mem[s + 32]
        mem[_348 + 64] = bn_scalar_mul
        mem[_348 + 96] = Mask(256, -256, bn_scalar_mul) << 256
        bn_add = bn256Add(mem[_348 len 64], bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256, mem[_348 + 128 len 64]) 
        mem[_337 len 96] = bn_add
        require bn256Add.result
        if not bn256Add.result:
            revert with 0, 'pairing-add-failed'
        idx = idx + 1
        s = _337
        continue 
    _168 = mem[64]
    mem[64] = mem[64] + 64
    mem[_168] = 0
    mem[_168 + 32] = 0
    if mem[ceil32(arg1.length) + 672]:
        _176 = mem[64]
        mem[64] = mem[64] + 64
        mem[_176] = mem[ceil32(arg1.length) + 672]
        mem[_176 + 32] = -(mem[ceil32(arg1.length) + 704] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
        _184 = mem[_56]
        _185 = mem[_56 + 32]
        _186 = mem[_56 + 64]
        _187 = mem[_56 + 96]
        _200 = mem[64]
        mem[64] = mem[64] + 768
        mem[_200 len 768] = call.data[calldata.size len 768]
        _202 = mem[64]
        mem[64] = mem[64] + 768
        mem[_202] = mem[_176]
        mem[_202 + 32] = mem[_176 + 32]
        mem[_202 + 64] = mem[mem[ceil32(arg1.length) + 928]]
        mem[_202 + 96] = mem[mem[ceil32(arg1.length) + 928] + 32]
        mem[_202 + 128] = mem[mem[ceil32(arg1.length) + 960]]
        mem[_202 + 160] = mem[mem[ceil32(arg1.length) + 960] + 32]
        mem[_202 + 192] = mem[_184]
        mem[_202 + 224] = mem[_184 + 32]
        mem[_202 + 256] = mem[mem[_185]]
        mem[_202 + 288] = mem[mem[_185] + 32]
        mem[_202 + 320] = mem[mem[_185 + 32]]
        mem[_202 + 352] = mem[mem[_185 + 32] + 32]
        mem[_202 + 384] = mem[s]
        mem[_202 + 416] = mem[s + 32]
        mem[_202 + 448] = mem[mem[_186]]
        mem[_202 + 480] = mem[mem[_186] + 32]
        mem[_202 + 512] = mem[mem[_186 + 32]]
        mem[_202 + 544] = mem[mem[_186 + 32] + 32]
        mem[_202 + 576] = mem[ceil32(arg1.length) + 1184]
        mem[_202 + 608] = mem[ceil32(arg1.length) + 1216]
        mem[_202 + 640] = mem[mem[_187]]
        mem[_202 + 672] = mem[mem[_187] + 32]
        mem[_202 + 704] = mem[mem[_187 + 32]]
        mem[_202 + 736] = mem[mem[_187 + 32] + 32]
        _285 = mem[64]
        mem[64] = mem[64] + 32
        mem[_285] = call.data[calldata.size]
        bn_pairing = bn256Pairing(mem[_202 len 768]) 
    else:
        if mem[ceil32(arg1.length) + 704]:
            _179 = mem[64]
            mem[64] = mem[64] + 64
            mem[_179] = mem[ceil32(arg1.length) + 672]
            mem[_179 + 32] = -(mem[ceil32(arg1.length) + 704] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            _193 = mem[_56]
            _194 = mem[_56 + 32]
            _195 = mem[_56 + 64]
            _196 = mem[_56 + 96]
            _243 = mem[64]
            mem[64] = mem[64] + 768
            mem[_243 len 768] = call.data[calldata.size len 768]
            _286 = mem[64]
            mem[64] = mem[64] + 768
            mem[_286] = mem[_179]
            mem[_286 + 32] = mem[_179 + 32]
            mem[_286 + 64] = mem[mem[ceil32(arg1.length) + 928]]
            mem[_286 + 96] = mem[mem[ceil32(arg1.length) + 928] + 32]
            mem[_286 + 128] = mem[mem[ceil32(arg1.length) + 960]]
            mem[_286 + 160] = mem[mem[ceil32(arg1.length) + 960] + 32]
            mem[_286 + 192] = mem[_193]
            mem[_286 + 224] = mem[_193 + 32]
            mem[_286 + 256] = mem[mem[_194]]
            mem[_286 + 288] = mem[mem[_194] + 32]
            mem[_286 + 320] = mem[mem[_194 + 32]]
            mem[_286 + 352] = mem[mem[_194 + 32] + 32]
            mem[_286 + 384] = mem[s]
            mem[_286 + 416] = mem[s + 32]
            mem[_286 + 448] = mem[mem[_195]]
            mem[_286 + 480] = mem[mem[_195] + 32]
            mem[_286 + 512] = mem[mem[_195 + 32]]
            mem[_286 + 544] = mem[mem[_195 + 32] + 32]
            mem[_286 + 576] = mem[ceil32(arg1.length) + 1184]
            mem[_286 + 608] = mem[ceil32(arg1.length) + 1216]
            mem[_286 + 640] = mem[mem[_196]]
            mem[_286 + 672] = mem[mem[_196] + 32]
            mem[_286 + 704] = mem[mem[_196 + 32]]
            mem[_286 + 736] = mem[mem[_196 + 32] + 32]
            _330 = mem[64]
            mem[64] = mem[64] + 32
            mem[_330] = call.data[calldata.size]
            bn_pairing = bn256Pairing(mem[_286 len 768]) 
        else:
            _182 = mem[64]
            mem[64] = mem[64] + 64
            mem[_182] = 0
            mem[_182 + 32] = 0
            _188 = mem[_56]
            _189 = mem[_56 + 32]
            _190 = mem[_56 + 64]
            _191 = mem[_56 + 96]
            _201 = mem[64]
            mem[64] = mem[64] + 768
            mem[_201 len 768] = call.data[calldata.size len 768]
            _244 = mem[64]
            mem[64] = mem[64] + 768
            mem[_244] = 0
            mem[_244 + 32] = 0
            mem[_244 + 64] = mem[mem[ceil32(arg1.length) + 928]]
            mem[_244 + 96] = mem[mem[ceil32(arg1.length) + 928] + 32]
            mem[_244 + 128] = mem[mem[ceil32(arg1.length) + 960]]
            mem[_244 + 160] = mem[mem[ceil32(arg1.length) + 960] + 32]
            mem[_244 + 192] = mem[_188]
            mem[_244 + 224] = mem[_188 + 32]
            mem[_244 + 256] = mem[mem[_189]]
            mem[_244 + 288] = mem[mem[_189] + 32]
            mem[_244 + 320] = mem[mem[_189 + 32]]
            mem[_244 + 352] = mem[mem[_189 + 32] + 32]
            mem[_244 + 384] = mem[s]
            mem[_244 + 416] = mem[s + 32]
            mem[_244 + 448] = mem[mem[_190]]
            mem[_244 + 480] = mem[mem[_190] + 32]
            mem[_244 + 512] = mem[mem[_190 + 32]]
            mem[_244 + 544] = mem[mem[_190 + 32] + 32]
            mem[_244 + 576] = mem[ceil32(arg1.length) + 1184]
            mem[_244 + 608] = mem[ceil32(arg1.length) + 1216]
            mem[_244 + 640] = mem[mem[_191]]
            mem[_244 + 672] = mem[mem[_191] + 32]
            mem[_244 + 704] = mem[mem[_191 + 32]]
            mem[_244 + 736] = mem[mem[_191 + 32] + 32]
            _327 = mem[64]
            mem[64] = mem[64] + 32
            mem[_327] = call.data[calldata.size]
            bn_pairing = bn256Pairing(0, 0, mem[_244 + 64 len 704]) 
    require bn256Pairing.result
    if not bn256Pairing.result:
        revert with 0, 'pairing-opcode-failed'
    return bool(bn_pairing)
}



}
