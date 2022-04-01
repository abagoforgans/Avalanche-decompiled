contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_8d8f8a5c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = call.data[36]
    mem[ceil32(arg1.length) + 160 len 256] = call.data[calldata.size len 256]
    require arg1.length >= 256
    idx = 0
    while uint8(idx) < 8:
        if mem[(32 * uint8(idx)) + 128] >= 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47:
            revert with 0, 
                        32,
                        34,
                        0x6476657269666965722d70726f6f662d656c656d656e742d6774652d7072696d652d,
                        mem[ceil32(arg1.length) + 518 len 30]
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 416] = 0
    mem[ceil32(arg1.length) + 448] = 0
    mem[ceil32(arg1.length) + 480] = mem[128]
    mem[ceil32(arg1.length) + 512] = mem[160]
    mem[ceil32(arg1.length) + 608 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 544] = ceil32(arg1.length) + 608
    mem[ceil32(arg1.length) + 672 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 576] = ceil32(arg1.length) + 672
    mem[ceil32(arg1.length) + 800] = mem[192]
    mem[ceil32(arg1.length) + 832] = mem[224]
    mem[ceil32(arg1.length) + 736] = ceil32(arg1.length) + 800
    mem[ceil32(arg1.length) + 864] = mem[256]
    mem[ceil32(arg1.length) + 896] = mem[288]
    mem[ceil32(arg1.length) + 768] = ceil32(arg1.length) + 864
    mem[ceil32(arg1.length) + 928] = 0
    mem[ceil32(arg1.length) + 960] = 0
    mem[ceil32(arg1.length) + 992] = mem[320]
    mem[ceil32(arg1.length) + 1024] = mem[352]
    mem[ceil32(arg1.length) + 1216] = 0
    mem[ceil32(arg1.length) + 1248] = 0
    mem[ceil32(arg1.length) + 1056] = ceil32(arg1.length) + 1216
    mem[ceil32(arg1.length) + 1344 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1280] = ceil32(arg1.length) + 1344
    mem[ceil32(arg1.length) + 1408 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1312] = ceil32(arg1.length) + 1408
    mem[ceil32(arg1.length) + 1088] = ceil32(arg1.length) + 1280
    mem[ceil32(arg1.length) + 1536 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1472] = ceil32(arg1.length) + 1536
    mem[ceil32(arg1.length) + 1600 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1504] = ceil32(arg1.length) + 1600
    mem[ceil32(arg1.length) + 1120] = ceil32(arg1.length) + 1472
    mem[ceil32(arg1.length) + 1728 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1664] = ceil32(arg1.length) + 1728
    mem[ceil32(arg1.length) + 1792 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1696] = ceil32(arg1.length) + 1792
    mem[ceil32(arg1.length) + 1152] = ceil32(arg1.length) + 1664
    mem[64] = ceil32(arg1.length) + 1984
    mem[ceil32(arg1.length) + 1920] = 0
    mem[ceil32(arg1.length) + 1952] = 0
    mem[var48001] = ceil32(arg1.length) + 1920
    s = var48001
    idx = var48002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(arg1.length) + 1920] = 0
        mem[ceil32(arg1.length) + 1952] = 0
        mem[s + 32] = ceil32(arg1.length) + 1920
        s = s + 32
        idx = idx - 1
        continue 
    mem[ceil32(arg1.length) + 1184] = ceil32(arg1.length) + 1856
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
    mem[64] = mem[64] + 64
    _106 = mem[64]
    mem[64] = mem[64] + 64
    mem[_106] = 0
    mem[_106 + 32] = 0
    mem[var79001] = _106
    s = var79001
    idx = var79002
    while idx - 1:
        _106 = mem[64]
        mem[64] = mem[64] + 64
        mem[_106] = 0
        mem[_106 + 32] = 0
        mem[s + 32] = _106
        s = s + 32
        idx = idx - 1
        continue 
    mem[_56 + 128] = _67
    _107 = mem[64]
    mem[64] = mem[64] + 64
    mem[_107] = 0x1ae3d28fd39ffdc36e7c699e68bf26e0ac6ff2736e3eee2d01702fb6a7d8efe
    mem[_107 + 32] = 0x21c2768d1f4fd540252d30a04f6637e0b1f513b55bb301549f59faa3de329ddd
    mem[_56] = _107
    _108 = mem[64]
    mem[64] = mem[64] + 128
    mem[_108 + 64] = 0x1b4eb56461d9d9a93fac477b7d6d16309d00c8d7326d203f1fb7efb2e21ad0dc
    mem[_108 + 96] = 0x23d639614eee659958c254c62e6018fa6f77c69322e5d3c53e6dce5837fe26c3
    mem[_108] = _108 + 64
    _109 = mem[64]
    mem[64] = mem[64] + 64
    mem[_109] = 0x113a24e276a5c8af650093b3d3b1705e7038564c23f58442fe77e2cd22174102
    mem[_109 + 32] = 0x132e0be0c797152ef2acb0e5663d755d6952220981cd23be4352b5f8701ee7a4
    mem[_108 + 32] = _109
    mem[_56 + 32] = _108
    _110 = mem[64]
    mem[64] = mem[64] + 128
    mem[_110 + 64] = 0x1054376d36ae68cb2d894fc63dfbe1cbf3a5a766eb73af4e56f6f2f67dc9e9bd
    mem[_110 + 96] = 0x11ba00fbde418487a58edd5e6219ed97c3c21e7d511c226c5b6b1bcb92f695df
    mem[_110] = _110 + 64
    _111 = mem[64]
    mem[64] = mem[64] + 64
    mem[_111] = 0x99607ad224acceef331aa24f6910152140aea0aead9953c61aa3d6ccf0c2bd8
    mem[_111 + 32] = 0x11407c895e8045499207bbf15a05c7e2d92bd2cf633a1ccb299c07186f05d3b7
    mem[_110 + 32] = _111
    mem[_56 + 64] = _110
    _112 = mem[64]
    mem[64] = mem[64] + 128
    mem[_112 + 64] = 0x28aea802136c7f18b70a1bdb11811db5f851c42db2c253e1c5bad882c49e2deb
    mem[_112 + 96] = 0x177531f7eb57fec27843bf8a033a9d8b56c2348d963ec0206d295d46e9bd66ce
    mem[_112] = _112 + 64
    _113 = mem[64]
    mem[64] = mem[64] + 64
    mem[_113] = 0x14a475fe3b70bff588be4c38b72dc942b9722749ac6cbd89e2baf1e473b2852c
    mem[_113 + 32] = 0x243257d8ac45580b99a92bcecb5d5305dee9ba3a2ef352a1a036dc6a9ee30604
    mem[_112 + 32] = _113
    mem[_56 + 96] = _112
    _114 = mem[64]
    mem[64] = mem[64] + 64
    mem[_114] = 0x53811c72d907eb782aecf6f95c656c0e8b06b3e00a11e61246373689c115e9c
    mem[_114 + 32] = 0x296f8f6a7557d501e5f087c8c7222df14e0ced5dbf29224e4a6ec86c39b2b46f
    mem[_67] = _114
    _116 = mem[64]
    mem[64] = mem[64] + 64
    mem[_116] = 0xfa0ac1abd3b91a922805aa85d0a004be16334cfed89ffe5678f50d5d8ae405
    mem[_116 + 32] = 0x18e553d558aed868dea810cf8da7c3cfd698957a72f8f5b7abc356ea526cac0a
    mem[_67 + 32] = _116
    _118 = mem[64]
    mem[64] = mem[64] + 64
    mem[_118] = 0
    mem[_118 + 32] = 0
    idx = 0
    s = mem[mem[_56 + 128]]
    while idx < 1:
        if mem[(32 * idx) + ceil32(arg1.length) + 128] >= 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001:
            revert with 0, 32, 37, 0xfe76657269666965722d696e7075742d6774652d736e61726b2d7363616c61722d6669656c, mem[mem[64] + 105 len 27]
        require idx + 1 < 2
        _149 = mem[(32 * idx + 1) + mem[_56 + 128]]
        require idx < 1
        _151 = mem[(32 * idx) + ceil32(arg1.length) + 128]
        _159 = mem[64]
        mem[64] = mem[64] + 64
        mem[_159] = 0
        mem[_159 + 32] = 0
        _168 = mem[64]
        mem[64] = mem[64] + 96
        mem[_168 len 96] = call.data[calldata.size len 96]
        _173 = mem[64]
        mem[64] = mem[64] + 96
        mem[_173] = mem[_149]
        mem[_173 + 32] = mem[_149 + 32]
        mem[_173 + 64] = _151
        bn_scalar_mul = bn256ScalarMul(mem[_173 len 64], _151, mem[_173 + 96]) 
        mem[_159 len 96] = bn_scalar_mul
        require bn256ScalarMul.result
        if not bn256ScalarMul.result:
            revert with 0, 'pairing-mul-failed'
        _313 = mem[64]
        mem[64] = mem[64] + 64
        mem[_313] = 0
        mem[_313 + 32] = 0
        _321 = mem[64]
        mem[64] = mem[64] + 128
        mem[_321 len 128] = call.data[calldata.size len 128]
        _324 = mem[64]
        mem[64] = mem[64] + 128
        mem[_324] = mem[s]
        mem[_324 + 32] = mem[s + 32]
        mem[_324 + 64] = bn_scalar_mul
        mem[_324 + 96] = Mask(256, -256, bn_scalar_mul) << 256
        bn_add = bn256Add(mem[_324 len 64], bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256, mem[_324 + 128 len 64]) 
        mem[_313 len 96] = bn_add
        require bn256Add.result
        if not bn256Add.result:
            revert with 0, 'pairing-add-failed'
        idx = idx + 1
        s = _313
        continue 
    _144 = mem[64]
    mem[64] = mem[64] + 64
    mem[_144] = 0
    mem[_144 + 32] = 0
    if mem[ceil32(arg1.length) + 480]:
        _152 = mem[64]
        mem[64] = mem[64] + 64
        mem[_152] = mem[ceil32(arg1.length) + 480]
        mem[_152 + 32] = -(mem[ceil32(arg1.length) + 512] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
        _160 = mem[_56]
        _161 = mem[_56 + 32]
        _162 = mem[_56 + 64]
        _163 = mem[_56 + 96]
        _176 = mem[64]
        mem[64] = mem[64] + 768
        mem[_176 len 768] = call.data[calldata.size len 768]
        _178 = mem[64]
        mem[64] = mem[64] + 768
        mem[_178] = mem[_152]
        mem[_178 + 32] = mem[_152 + 32]
        mem[_178 + 64] = mem[mem[ceil32(arg1.length) + 736]]
        mem[_178 + 96] = mem[mem[ceil32(arg1.length) + 736] + 32]
        mem[_178 + 128] = mem[mem[ceil32(arg1.length) + 768]]
        mem[_178 + 160] = mem[mem[ceil32(arg1.length) + 768] + 32]
        mem[_178 + 192] = mem[_160]
        mem[_178 + 224] = mem[_160 + 32]
        mem[_178 + 256] = mem[mem[_161]]
        mem[_178 + 288] = mem[mem[_161] + 32]
        mem[_178 + 320] = mem[mem[_161 + 32]]
        mem[_178 + 352] = mem[mem[_161 + 32] + 32]
        mem[_178 + 384] = mem[s]
        mem[_178 + 416] = mem[s + 32]
        mem[_178 + 448] = mem[mem[_162]]
        mem[_178 + 480] = mem[mem[_162] + 32]
        mem[_178 + 512] = mem[mem[_162 + 32]]
        mem[_178 + 544] = mem[mem[_162 + 32] + 32]
        mem[_178 + 576] = mem[ceil32(arg1.length) + 992]
        mem[_178 + 608] = mem[ceil32(arg1.length) + 1024]
        mem[_178 + 640] = mem[mem[_163]]
        mem[_178 + 672] = mem[mem[_163] + 32]
        mem[_178 + 704] = mem[mem[_163 + 32]]
        mem[_178 + 736] = mem[mem[_163 + 32] + 32]
        _261 = mem[64]
        mem[64] = mem[64] + 32
        mem[_261] = call.data[calldata.size]
        bn_pairing = bn256Pairing(mem[_178 len 768]) 
    else:
        if mem[ceil32(arg1.length) + 512]:
            _155 = mem[64]
            mem[64] = mem[64] + 64
            mem[_155] = mem[ceil32(arg1.length) + 480]
            mem[_155 + 32] = -(mem[ceil32(arg1.length) + 512] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            _169 = mem[_56]
            _170 = mem[_56 + 32]
            _171 = mem[_56 + 64]
            _172 = mem[_56 + 96]
            _219 = mem[64]
            mem[64] = mem[64] + 768
            mem[_219 len 768] = call.data[calldata.size len 768]
            _262 = mem[64]
            mem[64] = mem[64] + 768
            mem[_262] = mem[_155]
            mem[_262 + 32] = mem[_155 + 32]
            mem[_262 + 64] = mem[mem[ceil32(arg1.length) + 736]]
            mem[_262 + 96] = mem[mem[ceil32(arg1.length) + 736] + 32]
            mem[_262 + 128] = mem[mem[ceil32(arg1.length) + 768]]
            mem[_262 + 160] = mem[mem[ceil32(arg1.length) + 768] + 32]
            mem[_262 + 192] = mem[_169]
            mem[_262 + 224] = mem[_169 + 32]
            mem[_262 + 256] = mem[mem[_170]]
            mem[_262 + 288] = mem[mem[_170] + 32]
            mem[_262 + 320] = mem[mem[_170 + 32]]
            mem[_262 + 352] = mem[mem[_170 + 32] + 32]
            mem[_262 + 384] = mem[s]
            mem[_262 + 416] = mem[s + 32]
            mem[_262 + 448] = mem[mem[_171]]
            mem[_262 + 480] = mem[mem[_171] + 32]
            mem[_262 + 512] = mem[mem[_171 + 32]]
            mem[_262 + 544] = mem[mem[_171 + 32] + 32]
            mem[_262 + 576] = mem[ceil32(arg1.length) + 992]
            mem[_262 + 608] = mem[ceil32(arg1.length) + 1024]
            mem[_262 + 640] = mem[mem[_172]]
            mem[_262 + 672] = mem[mem[_172] + 32]
            mem[_262 + 704] = mem[mem[_172 + 32]]
            mem[_262 + 736] = mem[mem[_172 + 32] + 32]
            _306 = mem[64]
            mem[64] = mem[64] + 32
            mem[_306] = call.data[calldata.size]
            bn_pairing = bn256Pairing(mem[_262 len 768]) 
        else:
            _158 = mem[64]
            mem[64] = mem[64] + 64
            mem[_158] = 0
            mem[_158 + 32] = 0
            _164 = mem[_56]
            _165 = mem[_56 + 32]
            _166 = mem[_56 + 64]
            _167 = mem[_56 + 96]
            _177 = mem[64]
            mem[64] = mem[64] + 768
            mem[_177 len 768] = call.data[calldata.size len 768]
            _220 = mem[64]
            mem[64] = mem[64] + 768
            mem[_220] = 0
            mem[_220 + 32] = 0
            mem[_220 + 64] = mem[mem[ceil32(arg1.length) + 736]]
            mem[_220 + 96] = mem[mem[ceil32(arg1.length) + 736] + 32]
            mem[_220 + 128] = mem[mem[ceil32(arg1.length) + 768]]
            mem[_220 + 160] = mem[mem[ceil32(arg1.length) + 768] + 32]
            mem[_220 + 192] = mem[_164]
            mem[_220 + 224] = mem[_164 + 32]
            mem[_220 + 256] = mem[mem[_165]]
            mem[_220 + 288] = mem[mem[_165] + 32]
            mem[_220 + 320] = mem[mem[_165 + 32]]
            mem[_220 + 352] = mem[mem[_165 + 32] + 32]
            mem[_220 + 384] = mem[s]
            mem[_220 + 416] = mem[s + 32]
            mem[_220 + 448] = mem[mem[_166]]
            mem[_220 + 480] = mem[mem[_166] + 32]
            mem[_220 + 512] = mem[mem[_166 + 32]]
            mem[_220 + 544] = mem[mem[_166 + 32] + 32]
            mem[_220 + 576] = mem[ceil32(arg1.length) + 992]
            mem[_220 + 608] = mem[ceil32(arg1.length) + 1024]
            mem[_220 + 640] = mem[mem[_167]]
            mem[_220 + 672] = mem[mem[_167] + 32]
            mem[_220 + 704] = mem[mem[_167 + 32]]
            mem[_220 + 736] = mem[mem[_167 + 32] + 32]
            _303 = mem[64]
            mem[64] = mem[64] + 32
            mem[_303] = call.data[calldata.size]
            bn_pairing = bn256Pairing(0, 0, mem[_220 + 64 len 704]) 
    require bn256Pairing.result
    if not bn256Pairing.result:
        revert with 0, 'pairing-opcode-failed'
    return bool(bn_pairing)
}



}
