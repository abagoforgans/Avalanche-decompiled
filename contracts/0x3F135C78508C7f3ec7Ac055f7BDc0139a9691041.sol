contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function verifyProof(bytes arg1, uint256[12] arg2) payable {
    require calldata.size - 4 >= 416
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len 384] = call.data[36 len 384]
    mem[ceil32(arg1.length) + 512 len 256] = call.data[calldata.size len 256]
    require arg1.length >= 256
    idx = 0
    while uint8(idx) < 8:
        if mem[(32 * uint8(idx)) + 128] >= 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47:
            revert with 0, 
                        32,
                        34,
                        0x6476657269666965722d70726f6f662d656c656d656e742d6774652d7072696d652d,
                        mem[ceil32(arg1.length) + 870 len 30]
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 768] = 0
    mem[ceil32(arg1.length) + 800] = 0
    mem[ceil32(arg1.length) + 832] = mem[128]
    mem[ceil32(arg1.length) + 864] = mem[160]
    mem[ceil32(arg1.length) + 960 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 896] = ceil32(arg1.length) + 960
    mem[ceil32(arg1.length) + 1024 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 928] = ceil32(arg1.length) + 1024
    mem[ceil32(arg1.length) + 1152] = mem[192]
    mem[ceil32(arg1.length) + 1184] = mem[224]
    mem[ceil32(arg1.length) + 1088] = ceil32(arg1.length) + 1152
    mem[ceil32(arg1.length) + 1216] = mem[256]
    mem[ceil32(arg1.length) + 1248] = mem[288]
    mem[ceil32(arg1.length) + 1120] = ceil32(arg1.length) + 1216
    mem[ceil32(arg1.length) + 1280] = 0
    mem[ceil32(arg1.length) + 1312] = 0
    mem[ceil32(arg1.length) + 1344] = mem[320]
    mem[ceil32(arg1.length) + 1376] = mem[352]
    mem[ceil32(arg1.length) + 1568] = 0
    mem[ceil32(arg1.length) + 1600] = 0
    mem[ceil32(arg1.length) + 1408] = ceil32(arg1.length) + 1568
    mem[ceil32(arg1.length) + 1696 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1632] = ceil32(arg1.length) + 1696
    mem[ceil32(arg1.length) + 1760 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1664] = ceil32(arg1.length) + 1760
    mem[ceil32(arg1.length) + 1440] = ceil32(arg1.length) + 1632
    mem[ceil32(arg1.length) + 1888 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1824] = ceil32(arg1.length) + 1888
    mem[ceil32(arg1.length) + 1952 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1856] = ceil32(arg1.length) + 1952
    mem[ceil32(arg1.length) + 1472] = ceil32(arg1.length) + 1824
    mem[ceil32(arg1.length) + 2080 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 2016] = ceil32(arg1.length) + 2080
    mem[ceil32(arg1.length) + 2144 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 2048] = ceil32(arg1.length) + 2144
    mem[ceil32(arg1.length) + 1504] = ceil32(arg1.length) + 2016
    mem[64] = ceil32(arg1.length) + 2688
    mem[ceil32(arg1.length) + 2624] = 0
    mem[ceil32(arg1.length) + 2656] = 0
    mem[var48001] = ceil32(arg1.length) + 2624
    s = var48001
    idx = var48002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(arg1.length) + 2624] = 0
        mem[ceil32(arg1.length) + 2656] = 0
        mem[s + 32] = ceil32(arg1.length) + 2624
        s = s + 32
        idx = idx - 1
        continue 
    mem[ceil32(arg1.length) + 1536] = ceil32(arg1.length) + 2208
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
    mem[64] = mem[64] + 416
    _128 = mem[64]
    mem[64] = mem[64] + 64
    mem[_128] = 0
    mem[_128 + 32] = 0
    mem[var79001] = _128
    s = var79001
    idx = var79002
    while idx - 1:
        _128 = mem[64]
        mem[64] = mem[64] + 64
        mem[_128] = 0
        mem[_128 + 32] = 0
        mem[s + 32] = _128
        s = s + 32
        idx = idx - 1
        continue 
    mem[_56 + 128] = _67
    _129 = mem[64]
    mem[64] = mem[64] + 64
    mem[_129] = 0x5e740ed4cebc378dfeff2b43895455b0bf2c13adf95272bdb331ef90b917943
    mem[_129 + 32] = 0x2fb39526d529d135cd7c170c72229567b882bd674e3467d8ff3b242463371467
    mem[_56] = _129
    _130 = mem[64]
    mem[64] = mem[64] + 128
    mem[_130 + 64] = 0x6d1b3fc75eda082aca3a850f084ea0547eae29812fc6c2cc5129784e2224fb4
    mem[_130 + 96] = 0x1fc076af58c0cdb019b311f3538b8fa8b61c215a6d86663ebdec7b06c45032ac
    mem[_130] = _130 + 64
    _131 = mem[64]
    mem[64] = mem[64] + 64
    mem[_131] = 0x55df7bc81ee00da3eebbba49c137fa615a9516074c4c86cbfb934a43dcae966
    mem[_131 + 32] = 0x2927c6f3eac4dd975107fc3e3f7b92be8f676a8711a5c43f1a88174e603ac422
    mem[_130 + 32] = _131
    mem[_56 + 32] = _130
    _132 = mem[64]
    mem[64] = mem[64] + 128
    mem[_132 + 64] = 0x8b5b3e38ac71b7371c81a637c5dc952ba716fd1eb246a17b8d54e88732281f1
    mem[_132 + 96] = 0x1030863eb7ce176250d3175566c2c33daca99ca9c211016378824d61a7d7ec7b
    mem[_132] = _132 + 64
    _133 = mem[64]
    mem[64] = mem[64] + 64
    mem[_133] = 0x6e8137d44eb28a979e7e18bc690a3530ed7f591a886f27d9655e9c19e6b876e
    mem[_133 + 32] = 0x18a5167f8b7e1411d110cc5b7bf8640de3a9fbd8f2060534542871608307d32c
    mem[_132 + 32] = _133
    mem[_56 + 64] = _132
    _134 = mem[64]
    mem[64] = mem[64] + 128
    mem[_134 + 64] = 0x8063f68a9b1cc566df64e613eab379ebde608f9d3a951d97e43ddfe7c7c46c1
    mem[_134 + 96] = 0x9f8ee105e686aec2ed453d11127b8cbda341761afb6c184e0b21f859e7899e9
    mem[_134] = _134 + 64
    _135 = mem[64]
    mem[64] = mem[64] + 64
    mem[_135] = 0x1963078735fe80763b80ba8602dc39e641b705463f3e39b250309bc41b09bf7e
    mem[_135 + 32] = 0x1d060df57857068a6ba9abaab5c9b280ebe9621b3a876b80a63e3448eaf7fae9
    mem[_134 + 32] = _135
    mem[_56 + 96] = _134
    _136 = mem[64]
    mem[64] = mem[64] + 64
    mem[_136] = 0x2b48fd1012c680bd6932ef912d2562384b95491a3190a13e6d452953c043824a
    mem[_136 + 32] = 0x1fc458a65f0de031f0ea54cf7437537900b5052c7dc740e36a59eb0044b3179a
    mem[_67] = _136
    _138 = mem[64]
    mem[64] = mem[64] + 64
    mem[_138] = 0x52ea753d30fe8accfdcd01d7e441b2f487c03f3c10cd3ce3ee1fceffda37a7b
    mem[_138 + 32] = 0xd510c92c5e8b15c67ac2e1b92d05c279b3d3cbc34dab6b34cc0f2ccbc86c19f
    mem[_67 + 32] = _138
    _140 = mem[64]
    mem[64] = mem[64] + 64
    mem[_140] = 0x104b3b5a94d45604ee0b88fdf6930be2f1680d555f9279b3cd7d0a2003144b4c
    mem[_140 + 32] = 0xe6ddf9869d49779066511ad9b6bbed4cb36adec64a7b75979c41f3bcb008796
    mem[_67 + 64] = _140
    _142 = mem[64]
    mem[64] = mem[64] + 64
    mem[_142] = 0x240753e997d1596999e9710202ead366e72decff6082102e866ae9ee3ed280ea
    mem[_142 + 32] = 0x2e68117dd8908035f7bfd26a47323deaab9b5daf7b66b87b37ffc171504cedf1
    mem[_67 + 96] = _142
    _144 = mem[64]
    mem[64] = mem[64] + 64
    mem[_144] = 0x2613b05d961cdff8f1322cbc93da50717763c9c8fab4ab87fed15775b0871612
    mem[_144 + 32] = 0xf5cbcf4c5bae730d9d223fbcd31c38669d51b93704e44763b92fe1412019a90
    mem[_67 + 128] = _144
    _146 = mem[64]
    mem[64] = mem[64] + 64
    mem[_146] = 0x2e7f8697724e610964b37cf95d0cc8b2a6bf723cc38dee2f89e7be15709daf63
    mem[_146 + 32] = 0x1781ef724fe1da52fa5ebca34ced5eee2dfbcb86d03b1f28366daca9374e074
    mem[_67 + 160] = _146
    _148 = mem[64]
    mem[64] = mem[64] + 64
    mem[_148] = 0x1faa9da79f8399d89de91a97bdca1c86ee6cd0b51a127cad323a304ee90a1966
    mem[_148 + 32] = 0x18bb491dffd6e5f23d1678cc2c06b4a9dbb64e3068cdcba40e783bd4ad1cf96f
    mem[_67 + 192] = _148
    _150 = mem[64]
    mem[64] = mem[64] + 64
    mem[_150] = 0x1c5f046746a17ace765f50768d72f4cb97351705e3e90b34e2fe77c6b9344fc7
    mem[_150 + 32] = 0x1f84f64910718f4afe0655f593fcf8429d7a3085c48524c1f9537a2afccbf91c
    mem[_67 + 224] = _150
    _152 = mem[64]
    mem[64] = mem[64] + 64
    mem[_152] = 0x2b0de3ca7172f14d740b641b62760681f801fbea48562336cad25da212f90ce5
    mem[_152 + 32] = 0xc714293addc33daa3ba500c6f2e63082d416bbfedebd07541b47c89630c75a0
    mem[_67 + 256] = _152
    _154 = mem[64]
    mem[64] = mem[64] + 64
    mem[_154] = 0xce6618902918011fd7958520d3bbea6b31ef5be87d575f2edf1fd53be9e599
    mem[_154 + 32] = 0x16fb3d7bcf2830f2e0479a358a91bcd3130c8a388a50efad0792c1c3394b17fb
    mem[_67 + 288] = _154
    _156 = mem[64]
    mem[64] = mem[64] + 64
    mem[_156] = 0x23c231e3e340c3c8e851d7d0adb87d13cad7d8e9cedc03c96f18c6b5a6776437
    mem[_156 + 32] = 0x2569b8bb4e245969d7ddce19e13253965d2e0bb576033815f36a6655e9d4a542
    mem[_67 + 320] = _156
    _158 = mem[64]
    mem[64] = mem[64] + 64
    mem[_158] = 0x2d1099139794df59a9c7978698371b6ce6ac2ae2226f22537bcf5e434ff4e806
    mem[_158 + 32] = 0x2450055907ffd2ab3cc5939359b00d7400b99f67785c0c7e88040a85856a70b1
    mem[_67 + 352] = _158
    _160 = mem[64]
    mem[64] = mem[64] + 64
    mem[_160] = 0x18a4523b9b9b0204c771bb5013091d2296d0f0e7e72657881cc75c0673acdce6
    mem[_160 + 32] = 0x6948785938f8cbba2d11f63ab81de53e072ec6799a6a385d35f5f4c77c3b368
    mem[_67 + 384] = _160
    _162 = mem[64]
    mem[64] = mem[64] + 64
    mem[_162] = 0
    mem[_162 + 32] = 0
    idx = 0
    s = mem[mem[_56 + 128]]
    while idx < 12:
        if mem[(32 * idx) + ceil32(arg1.length) + 128] >= 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001:
            revert with 0, 32, 37, 0xfe76657269666965722d696e7075742d6774652d736e61726b2d7363616c61722d6669656c, mem[mem[64] + 105 len 27]
        require idx + 1 < 13
        _193 = mem[(32 * idx + 1) + mem[_56 + 128]]
        require idx < 12
        _195 = mem[(32 * idx) + ceil32(arg1.length) + 128]
        _203 = mem[64]
        mem[64] = mem[64] + 64
        mem[_203] = 0
        mem[_203 + 32] = 0
        _212 = mem[64]
        mem[64] = mem[64] + 96
        mem[_212 len 96] = call.data[calldata.size len 96]
        _217 = mem[64]
        mem[64] = mem[64] + 96
        mem[_217] = mem[_193]
        mem[_217 + 32] = mem[_193 + 32]
        mem[_217 + 64] = _195
        bn_scalar_mul = bn256ScalarMul(mem[_217 len 64], _195, mem[_217 + 96]) 
        mem[_203 len 96] = bn_scalar_mul
        require bn256ScalarMul.result
        if not bn256ScalarMul.result:
            revert with 0, 'pairing-mul-failed'
        _357 = mem[64]
        mem[64] = mem[64] + 64
        mem[_357] = 0
        mem[_357 + 32] = 0
        _365 = mem[64]
        mem[64] = mem[64] + 128
        mem[_365 len 128] = call.data[calldata.size len 128]
        _368 = mem[64]
        mem[64] = mem[64] + 128
        mem[_368] = mem[s]
        mem[_368 + 32] = mem[s + 32]
        mem[_368 + 64] = bn_scalar_mul
        mem[_368 + 96] = Mask(256, -256, bn_scalar_mul) << 256
        bn_add = bn256Add(mem[_368 len 64], bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256, mem[_368 + 128 len 64]) 
        mem[_357 len 96] = bn_add
        require bn256Add.result
        if not bn256Add.result:
            revert with 0, 'pairing-add-failed'
        idx = idx + 1
        s = _357
        continue 
    _188 = mem[64]
    mem[64] = mem[64] + 64
    mem[_188] = 0
    mem[_188 + 32] = 0
    if mem[ceil32(arg1.length) + 832]:
        _196 = mem[64]
        mem[64] = mem[64] + 64
        mem[_196] = mem[ceil32(arg1.length) + 832]
        mem[_196 + 32] = -(mem[ceil32(arg1.length) + 864] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
        _204 = mem[_56]
        _205 = mem[_56 + 32]
        _206 = mem[_56 + 64]
        _207 = mem[_56 + 96]
        _220 = mem[64]
        mem[64] = mem[64] + 768
        mem[_220 len 768] = call.data[calldata.size len 768]
        _222 = mem[64]
        mem[64] = mem[64] + 768
        mem[_222] = mem[_196]
        mem[_222 + 32] = mem[_196 + 32]
        mem[_222 + 64] = mem[mem[ceil32(arg1.length) + 1088]]
        mem[_222 + 96] = mem[mem[ceil32(arg1.length) + 1088] + 32]
        mem[_222 + 128] = mem[mem[ceil32(arg1.length) + 1120]]
        mem[_222 + 160] = mem[mem[ceil32(arg1.length) + 1120] + 32]
        mem[_222 + 192] = mem[_204]
        mem[_222 + 224] = mem[_204 + 32]
        mem[_222 + 256] = mem[mem[_205]]
        mem[_222 + 288] = mem[mem[_205] + 32]
        mem[_222 + 320] = mem[mem[_205 + 32]]
        mem[_222 + 352] = mem[mem[_205 + 32] + 32]
        mem[_222 + 384] = mem[s]
        mem[_222 + 416] = mem[s + 32]
        mem[_222 + 448] = mem[mem[_206]]
        mem[_222 + 480] = mem[mem[_206] + 32]
        mem[_222 + 512] = mem[mem[_206 + 32]]
        mem[_222 + 544] = mem[mem[_206 + 32] + 32]
        mem[_222 + 576] = mem[ceil32(arg1.length) + 1344]
        mem[_222 + 608] = mem[ceil32(arg1.length) + 1376]
        mem[_222 + 640] = mem[mem[_207]]
        mem[_222 + 672] = mem[mem[_207] + 32]
        mem[_222 + 704] = mem[mem[_207 + 32]]
        mem[_222 + 736] = mem[mem[_207 + 32] + 32]
        _305 = mem[64]
        mem[64] = mem[64] + 32
        mem[_305] = call.data[calldata.size]
        bn_pairing = bn256Pairing(mem[_222 len 768]) 
    else:
        if mem[ceil32(arg1.length) + 864]:
            _199 = mem[64]
            mem[64] = mem[64] + 64
            mem[_199] = mem[ceil32(arg1.length) + 832]
            mem[_199 + 32] = -(mem[ceil32(arg1.length) + 864] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            _213 = mem[_56]
            _214 = mem[_56 + 32]
            _215 = mem[_56 + 64]
            _216 = mem[_56 + 96]
            _263 = mem[64]
            mem[64] = mem[64] + 768
            mem[_263 len 768] = call.data[calldata.size len 768]
            _306 = mem[64]
            mem[64] = mem[64] + 768
            mem[_306] = mem[_199]
            mem[_306 + 32] = mem[_199 + 32]
            mem[_306 + 64] = mem[mem[ceil32(arg1.length) + 1088]]
            mem[_306 + 96] = mem[mem[ceil32(arg1.length) + 1088] + 32]
            mem[_306 + 128] = mem[mem[ceil32(arg1.length) + 1120]]
            mem[_306 + 160] = mem[mem[ceil32(arg1.length) + 1120] + 32]
            mem[_306 + 192] = mem[_213]
            mem[_306 + 224] = mem[_213 + 32]
            mem[_306 + 256] = mem[mem[_214]]
            mem[_306 + 288] = mem[mem[_214] + 32]
            mem[_306 + 320] = mem[mem[_214 + 32]]
            mem[_306 + 352] = mem[mem[_214 + 32] + 32]
            mem[_306 + 384] = mem[s]
            mem[_306 + 416] = mem[s + 32]
            mem[_306 + 448] = mem[mem[_215]]
            mem[_306 + 480] = mem[mem[_215] + 32]
            mem[_306 + 512] = mem[mem[_215 + 32]]
            mem[_306 + 544] = mem[mem[_215 + 32] + 32]
            mem[_306 + 576] = mem[ceil32(arg1.length) + 1344]
            mem[_306 + 608] = mem[ceil32(arg1.length) + 1376]
            mem[_306 + 640] = mem[mem[_216]]
            mem[_306 + 672] = mem[mem[_216] + 32]
            mem[_306 + 704] = mem[mem[_216 + 32]]
            mem[_306 + 736] = mem[mem[_216 + 32] + 32]
            _350 = mem[64]
            mem[64] = mem[64] + 32
            mem[_350] = call.data[calldata.size]
            bn_pairing = bn256Pairing(mem[_306 len 768]) 
        else:
            _202 = mem[64]
            mem[64] = mem[64] + 64
            mem[_202] = 0
            mem[_202 + 32] = 0
            _208 = mem[_56]
            _209 = mem[_56 + 32]
            _210 = mem[_56 + 64]
            _211 = mem[_56 + 96]
            _221 = mem[64]
            mem[64] = mem[64] + 768
            mem[_221 len 768] = call.data[calldata.size len 768]
            _264 = mem[64]
            mem[64] = mem[64] + 768
            mem[_264] = 0
            mem[_264 + 32] = 0
            mem[_264 + 64] = mem[mem[ceil32(arg1.length) + 1088]]
            mem[_264 + 96] = mem[mem[ceil32(arg1.length) + 1088] + 32]
            mem[_264 + 128] = mem[mem[ceil32(arg1.length) + 1120]]
            mem[_264 + 160] = mem[mem[ceil32(arg1.length) + 1120] + 32]
            mem[_264 + 192] = mem[_208]
            mem[_264 + 224] = mem[_208 + 32]
            mem[_264 + 256] = mem[mem[_209]]
            mem[_264 + 288] = mem[mem[_209] + 32]
            mem[_264 + 320] = mem[mem[_209 + 32]]
            mem[_264 + 352] = mem[mem[_209 + 32] + 32]
            mem[_264 + 384] = mem[s]
            mem[_264 + 416] = mem[s + 32]
            mem[_264 + 448] = mem[mem[_210]]
            mem[_264 + 480] = mem[mem[_210] + 32]
            mem[_264 + 512] = mem[mem[_210 + 32]]
            mem[_264 + 544] = mem[mem[_210 + 32] + 32]
            mem[_264 + 576] = mem[ceil32(arg1.length) + 1344]
            mem[_264 + 608] = mem[ceil32(arg1.length) + 1376]
            mem[_264 + 640] = mem[mem[_211]]
            mem[_264 + 672] = mem[mem[_211] + 32]
            mem[_264 + 704] = mem[mem[_211 + 32]]
            mem[_264 + 736] = mem[mem[_211 + 32] + 32]
            _347 = mem[64]
            mem[64] = mem[64] + 32
            mem[_347] = call.data[calldata.size]
            bn_pairing = bn256Pairing(0, 0, mem[_264 + 64 len 704]) 
    require bn256Pairing.result
    if not bn256Pairing.result:
        revert with 0, 'pairing-opcode-failed'
    return bool(bn_pairing)
}



}
