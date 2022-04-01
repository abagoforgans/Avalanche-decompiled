contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function verifyProof(bytes arg1, uint256[4] arg2) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len 128] = call.data[36 len 128]
    mem[ceil32(arg1.length) + 256 len 256] = call.data[calldata.size len 256]
    require arg1.length >= 256
    idx = 0
    while uint8(idx) < 8:
        if mem[(32 * uint8(idx)) + 128] >= 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47:
            revert with 0, 
                        32,
                        34,
                        0x6476657269666965722d70726f6f662d656c656d656e742d6774652d7072696d652d,
                        mem[ceil32(arg1.length) + 614 len 30]
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 512] = 0
    mem[ceil32(arg1.length) + 544] = 0
    mem[ceil32(arg1.length) + 576] = mem[128]
    mem[ceil32(arg1.length) + 608] = mem[160]
    mem[ceil32(arg1.length) + 704 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 640] = ceil32(arg1.length) + 704
    mem[ceil32(arg1.length) + 768 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 672] = ceil32(arg1.length) + 768
    mem[ceil32(arg1.length) + 896] = mem[192]
    mem[ceil32(arg1.length) + 928] = mem[224]
    mem[ceil32(arg1.length) + 832] = ceil32(arg1.length) + 896
    mem[ceil32(arg1.length) + 960] = mem[256]
    mem[ceil32(arg1.length) + 992] = mem[288]
    mem[ceil32(arg1.length) + 864] = ceil32(arg1.length) + 960
    mem[ceil32(arg1.length) + 1024] = 0
    mem[ceil32(arg1.length) + 1056] = 0
    mem[ceil32(arg1.length) + 1088] = mem[320]
    mem[ceil32(arg1.length) + 1120] = mem[352]
    mem[ceil32(arg1.length) + 1312] = 0
    mem[ceil32(arg1.length) + 1344] = 0
    mem[ceil32(arg1.length) + 1152] = ceil32(arg1.length) + 1312
    mem[ceil32(arg1.length) + 1440 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1376] = ceil32(arg1.length) + 1440
    mem[ceil32(arg1.length) + 1504 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1408] = ceil32(arg1.length) + 1504
    mem[ceil32(arg1.length) + 1184] = ceil32(arg1.length) + 1376
    mem[ceil32(arg1.length) + 1632 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1568] = ceil32(arg1.length) + 1632
    mem[ceil32(arg1.length) + 1696 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1600] = ceil32(arg1.length) + 1696
    mem[ceil32(arg1.length) + 1216] = ceil32(arg1.length) + 1568
    mem[ceil32(arg1.length) + 1824 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1760] = ceil32(arg1.length) + 1824
    mem[ceil32(arg1.length) + 1888 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1792] = ceil32(arg1.length) + 1888
    mem[ceil32(arg1.length) + 1248] = ceil32(arg1.length) + 1760
    mem[64] = ceil32(arg1.length) + 2176
    mem[ceil32(arg1.length) + 2112] = 0
    mem[ceil32(arg1.length) + 2144] = 0
    mem[var48001] = ceil32(arg1.length) + 2112
    s = var48001
    idx = var48002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(arg1.length) + 2112] = 0
        mem[ceil32(arg1.length) + 2144] = 0
        mem[s + 32] = ceil32(arg1.length) + 2112
        s = s + 32
        idx = idx - 1
        continue 
    mem[ceil32(arg1.length) + 1280] = ceil32(arg1.length) + 1952
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
    mem[64] = mem[64] + 160
    _112 = mem[64]
    mem[64] = mem[64] + 64
    mem[_112] = 0
    mem[_112 + 32] = 0
    mem[var79001] = _112
    s = var79001
    idx = var79002
    while idx - 1:
        _112 = mem[64]
        mem[64] = mem[64] + 64
        mem[_112] = 0
        mem[_112 + 32] = 0
        mem[s + 32] = _112
        s = s + 32
        idx = idx - 1
        continue 
    mem[_56 + 128] = _67
    _113 = mem[64]
    mem[64] = mem[64] + 64
    mem[_113] = 0x1784a73a98044797903896615baa7bee6d76cb4af3eecab02997828780484a30
    mem[_113 + 32] = 0x127b81f6126a4054b9e103aa5b1d16af8b70641191d94ab886c593990eee1923
    mem[_56] = _113
    _114 = mem[64]
    mem[64] = mem[64] + 128
    mem[_114 + 64] = 0x144efcad0e49d6ece89b3006ee36cf0146dc90eb1d7082fcb3ec01e2c8067ba7
    mem[_114 + 96] = 0x1928f65e82e3be0c81017c51e26a4fcb625449d3dd2137f78ed0c8553a9bcb2
    mem[_114] = _114 + 64
    _115 = mem[64]
    mem[64] = mem[64] + 64
    mem[_115] = 0x697fe7205764578e999f75237b36a0989ee922cec8638c56e0203f1f8e0a7df
    mem[_115 + 32] = 0x2499f3f10f73a588cf526827b51a94a94082949e1cc35606417c89c42775cabb
    mem[_114 + 32] = _115
    mem[_56 + 32] = _114
    _116 = mem[64]
    mem[64] = mem[64] + 128
    mem[_116 + 64] = 0x16e6f9d473e3a0d0eaa5e0b6a24fe3efb52d1b3ad5692e753376b5aa2a0281e0
    mem[_116 + 96] = 0x831421d572e68e112f6bcb4cff1d9afa33bf3c85da52c3ad3a06e16b7d7bc38
    mem[_116] = _116 + 64
    _117 = mem[64]
    mem[64] = mem[64] + 64
    mem[_117] = 0x28f0a9a9342728959ea335014f0d532ad92e4d719a038172631af8df5628c89f
    mem[_117 + 32] = 0x27cc662e47b6f84bbd91f19da4bfd11dd1d1f6421e6e5e47ba19f01ba269e458
    mem[_116 + 32] = _117
    mem[_56 + 64] = _116
    _118 = mem[64]
    mem[64] = mem[64] + 128
    mem[_118 + 64] = 0x2ea40862af6f7c8c4952871c645c5f07072b1f3089d68d644d9aa5dfbb802efa
    mem[_118 + 96] = 0x19fa2e4fa394e74fb3eea048fb0442e2d07feaa828cd7cba824a2cb3631af2e8
    mem[_118] = _118 + 64
    _119 = mem[64]
    mem[64] = mem[64] + 64
    mem[_119] = 0x1683626055f8a8a3f3b6dd67eb088c23f8dc55c765433b6689054d1a58450a80
    mem[_119 + 32] = 0x4097c610efc97afd12aa073d065382b3f0911c6030d0062c815dae2a034f0af
    mem[_118 + 32] = _119
    mem[_56 + 96] = _118
    _120 = mem[64]
    mem[64] = mem[64] + 64
    mem[_120] = 0x2681fdddb5b0ecae184d64968fdaa78d8f288f314ba479ca869c7b5804074d9c
    mem[_120 + 32] = 0xb472685636297ae03a9370304529f6d4979a6e047355e31e6dc92d943b84d2d
    mem[_67] = _120
    _122 = mem[64]
    mem[64] = mem[64] + 64
    mem[_122] = 0x1daba7f40f2a9f32bc689dc611fbc85bdcd03d3e2368084afe53ccba7426d501
    mem[_122 + 32] = 0x27fc5aa26ec998d38e54cbe2c2af49ad7b7959c088274870dfc340ec731be374
    mem[_67 + 32] = _122
    _124 = mem[64]
    mem[64] = mem[64] + 64
    mem[_124] = 0x167c702fd82755388a195eb1e26abaf226f5c5391b33cea280fd7d4fb2d87f25
    mem[_124 + 32] = 0x29c156af6bd217cdbf355a96a8f766739693b40852832207293f83137e7a21f9
    mem[_67 + 64] = _124
    _126 = mem[64]
    mem[64] = mem[64] + 64
    mem[_126] = 0xc00f8dc4b50387a4aaa092d1ed77e60a356d3968db5c26c8d5276701da30eaa
    mem[_126 + 32] = 0x180cd13b140ca02c836ad44ee51aeddc808585d93dd23bc5463ed7f1c2578b32
    mem[_67 + 96] = _126
    _128 = mem[64]
    mem[64] = mem[64] + 64
    mem[_128] = 0x15798b8c2fd2cd3be307a6c8701936f4ba8d850bc4678bf44e042f5f210f6a13
    mem[_128 + 32] = 0x2eadcafbb4278a22334dceb1819b66f038a56f6fd4bef74216bf52028995959a
    mem[_67 + 128] = _128
    _130 = mem[64]
    mem[64] = mem[64] + 64
    mem[_130] = 0
    mem[_130 + 32] = 0
    idx = 0
    s = mem[mem[_56 + 128]]
    while idx < 4:
        if mem[(32 * idx) + ceil32(arg1.length) + 128] >= 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001:
            revert with 0, 32, 37, 0xfe76657269666965722d696e7075742d6774652d736e61726b2d7363616c61722d6669656c, mem[mem[64] + 105 len 27]
        require idx + 1 < 5
        _161 = mem[(32 * idx + 1) + mem[_56 + 128]]
        require idx < 4
        _163 = mem[(32 * idx) + ceil32(arg1.length) + 128]
        _171 = mem[64]
        mem[64] = mem[64] + 64
        mem[_171] = 0
        mem[_171 + 32] = 0
        _180 = mem[64]
        mem[64] = mem[64] + 96
        mem[_180 len 96] = call.data[calldata.size len 96]
        _185 = mem[64]
        mem[64] = mem[64] + 96
        mem[_185] = mem[_161]
        mem[_185 + 32] = mem[_161 + 32]
        mem[_185 + 64] = _163
        bn_scalar_mul = bn256ScalarMul(mem[_185 len 64], _163, mem[_185 + 96]) 
        mem[_171 len 96] = bn_scalar_mul
        require bn256ScalarMul.result
        if not bn256ScalarMul.result:
            revert with 0, 'pairing-mul-failed'
        _325 = mem[64]
        mem[64] = mem[64] + 64
        mem[_325] = 0
        mem[_325 + 32] = 0
        _333 = mem[64]
        mem[64] = mem[64] + 128
        mem[_333 len 128] = call.data[calldata.size len 128]
        _336 = mem[64]
        mem[64] = mem[64] + 128
        mem[_336] = mem[s]
        mem[_336 + 32] = mem[s + 32]
        mem[_336 + 64] = bn_scalar_mul
        mem[_336 + 96] = Mask(256, -256, bn_scalar_mul) << 256
        bn_add = bn256Add(mem[_336 len 64], bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256, mem[_336 + 128 len 64]) 
        mem[_325 len 96] = bn_add
        require bn256Add.result
        if not bn256Add.result:
            revert with 0, 'pairing-add-failed'
        idx = idx + 1
        s = _325
        continue 
    _156 = mem[64]
    mem[64] = mem[64] + 64
    mem[_156] = 0
    mem[_156 + 32] = 0
    if mem[ceil32(arg1.length) + 576]:
        _164 = mem[64]
        mem[64] = mem[64] + 64
        mem[_164] = mem[ceil32(arg1.length) + 576]
        mem[_164 + 32] = -(mem[ceil32(arg1.length) + 608] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
        _172 = mem[_56]
        _173 = mem[_56 + 32]
        _174 = mem[_56 + 64]
        _175 = mem[_56 + 96]
        _188 = mem[64]
        mem[64] = mem[64] + 768
        mem[_188 len 768] = call.data[calldata.size len 768]
        _190 = mem[64]
        mem[64] = mem[64] + 768
        mem[_190] = mem[_164]
        mem[_190 + 32] = mem[_164 + 32]
        mem[_190 + 64] = mem[mem[ceil32(arg1.length) + 832]]
        mem[_190 + 96] = mem[mem[ceil32(arg1.length) + 832] + 32]
        mem[_190 + 128] = mem[mem[ceil32(arg1.length) + 864]]
        mem[_190 + 160] = mem[mem[ceil32(arg1.length) + 864] + 32]
        mem[_190 + 192] = mem[_172]
        mem[_190 + 224] = mem[_172 + 32]
        mem[_190 + 256] = mem[mem[_173]]
        mem[_190 + 288] = mem[mem[_173] + 32]
        mem[_190 + 320] = mem[mem[_173 + 32]]
        mem[_190 + 352] = mem[mem[_173 + 32] + 32]
        mem[_190 + 384] = mem[s]
        mem[_190 + 416] = mem[s + 32]
        mem[_190 + 448] = mem[mem[_174]]
        mem[_190 + 480] = mem[mem[_174] + 32]
        mem[_190 + 512] = mem[mem[_174 + 32]]
        mem[_190 + 544] = mem[mem[_174 + 32] + 32]
        mem[_190 + 576] = mem[ceil32(arg1.length) + 1088]
        mem[_190 + 608] = mem[ceil32(arg1.length) + 1120]
        mem[_190 + 640] = mem[mem[_175]]
        mem[_190 + 672] = mem[mem[_175] + 32]
        mem[_190 + 704] = mem[mem[_175 + 32]]
        mem[_190 + 736] = mem[mem[_175 + 32] + 32]
        _273 = mem[64]
        mem[64] = mem[64] + 32
        mem[_273] = call.data[calldata.size]
        bn_pairing = bn256Pairing(mem[_190 len 768]) 
    else:
        if mem[ceil32(arg1.length) + 608]:
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = mem[ceil32(arg1.length) + 576]
            mem[_167 + 32] = -(mem[ceil32(arg1.length) + 608] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            _181 = mem[_56]
            _182 = mem[_56 + 32]
            _183 = mem[_56 + 64]
            _184 = mem[_56 + 96]
            _231 = mem[64]
            mem[64] = mem[64] + 768
            mem[_231 len 768] = call.data[calldata.size len 768]
            _274 = mem[64]
            mem[64] = mem[64] + 768
            mem[_274] = mem[_167]
            mem[_274 + 32] = mem[_167 + 32]
            mem[_274 + 64] = mem[mem[ceil32(arg1.length) + 832]]
            mem[_274 + 96] = mem[mem[ceil32(arg1.length) + 832] + 32]
            mem[_274 + 128] = mem[mem[ceil32(arg1.length) + 864]]
            mem[_274 + 160] = mem[mem[ceil32(arg1.length) + 864] + 32]
            mem[_274 + 192] = mem[_181]
            mem[_274 + 224] = mem[_181 + 32]
            mem[_274 + 256] = mem[mem[_182]]
            mem[_274 + 288] = mem[mem[_182] + 32]
            mem[_274 + 320] = mem[mem[_182 + 32]]
            mem[_274 + 352] = mem[mem[_182 + 32] + 32]
            mem[_274 + 384] = mem[s]
            mem[_274 + 416] = mem[s + 32]
            mem[_274 + 448] = mem[mem[_183]]
            mem[_274 + 480] = mem[mem[_183] + 32]
            mem[_274 + 512] = mem[mem[_183 + 32]]
            mem[_274 + 544] = mem[mem[_183 + 32] + 32]
            mem[_274 + 576] = mem[ceil32(arg1.length) + 1088]
            mem[_274 + 608] = mem[ceil32(arg1.length) + 1120]
            mem[_274 + 640] = mem[mem[_184]]
            mem[_274 + 672] = mem[mem[_184] + 32]
            mem[_274 + 704] = mem[mem[_184 + 32]]
            mem[_274 + 736] = mem[mem[_184 + 32] + 32]
            _318 = mem[64]
            mem[64] = mem[64] + 32
            mem[_318] = call.data[calldata.size]
            bn_pairing = bn256Pairing(mem[_274 len 768]) 
        else:
            _170 = mem[64]
            mem[64] = mem[64] + 64
            mem[_170] = 0
            mem[_170 + 32] = 0
            _176 = mem[_56]
            _177 = mem[_56 + 32]
            _178 = mem[_56 + 64]
            _179 = mem[_56 + 96]
            _189 = mem[64]
            mem[64] = mem[64] + 768
            mem[_189 len 768] = call.data[calldata.size len 768]
            _232 = mem[64]
            mem[64] = mem[64] + 768
            mem[_232] = 0
            mem[_232 + 32] = 0
            mem[_232 + 64] = mem[mem[ceil32(arg1.length) + 832]]
            mem[_232 + 96] = mem[mem[ceil32(arg1.length) + 832] + 32]
            mem[_232 + 128] = mem[mem[ceil32(arg1.length) + 864]]
            mem[_232 + 160] = mem[mem[ceil32(arg1.length) + 864] + 32]
            mem[_232 + 192] = mem[_176]
            mem[_232 + 224] = mem[_176 + 32]
            mem[_232 + 256] = mem[mem[_177]]
            mem[_232 + 288] = mem[mem[_177] + 32]
            mem[_232 + 320] = mem[mem[_177 + 32]]
            mem[_232 + 352] = mem[mem[_177 + 32] + 32]
            mem[_232 + 384] = mem[s]
            mem[_232 + 416] = mem[s + 32]
            mem[_232 + 448] = mem[mem[_178]]
            mem[_232 + 480] = mem[mem[_178] + 32]
            mem[_232 + 512] = mem[mem[_178 + 32]]
            mem[_232 + 544] = mem[mem[_178 + 32] + 32]
            mem[_232 + 576] = mem[ceil32(arg1.length) + 1088]
            mem[_232 + 608] = mem[ceil32(arg1.length) + 1120]
            mem[_232 + 640] = mem[mem[_179]]
            mem[_232 + 672] = mem[mem[_179] + 32]
            mem[_232 + 704] = mem[mem[_179 + 32]]
            mem[_232 + 736] = mem[mem[_179 + 32] + 32]
            _315 = mem[64]
            mem[64] = mem[64] + 32
            mem[_315] = call.data[calldata.size]
            bn_pairing = bn256Pairing(0, 0, mem[_232 + 64 len 704]) 
    require bn256Pairing.result
    if not bn256Pairing.result:
        revert with 0, 'pairing-opcode-failed'
    return bool(bn_pairing)
}



}
