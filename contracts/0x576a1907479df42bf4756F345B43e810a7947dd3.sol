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
    mem[ceil32(arg1.length) + 320] = 0
    require arg1.length >= 256
    idx = 0
    while uint8(idx) < 8:
        if mem[(32 * uint8(idx)) + 128] >= 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47:
            revert with 0, 
                        32,
                        34,
                        0xfe76657269666965722d70726f6f662d656c656d656e742d6774652d7072696d652d,
                        mem[ceil32(arg1.length) + 422 len 30]
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 416] = 0
    mem[ceil32(arg1.length) + 448] = 0
    mem[ceil32(arg1.length) + 544 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 480] = ceil32(arg1.length) + 544
    mem[ceil32(arg1.length) + 608 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 512] = ceil32(arg1.length) + 608
    mem[ceil32(arg1.length) + 672] = 0
    mem[ceil32(arg1.length) + 704] = 0
    mem[ceil32(arg1.length) + 736] = mem[128]
    mem[ceil32(arg1.length) + 768] = mem[160]
    mem[ceil32(arg1.length) + 320] = ceil32(arg1.length) + 736
    mem[ceil32(arg1.length) + 864] = mem[192]
    mem[ceil32(arg1.length) + 896] = mem[224]
    mem[ceil32(arg1.length) + 800] = ceil32(arg1.length) + 864
    mem[ceil32(arg1.length) + 928] = mem[256]
    mem[ceil32(arg1.length) + 960] = mem[288]
    mem[ceil32(arg1.length) + 832] = ceil32(arg1.length) + 928
    mem[ceil32(arg1.length) + 352] = ceil32(arg1.length) + 800
    mem[ceil32(arg1.length) + 992] = mem[320]
    mem[ceil32(arg1.length) + 1024] = mem[352]
    mem[ceil32(arg1.length) + 384] = ceil32(arg1.length) + 992
    mem[ceil32(arg1.length) + 1216] = 0
    mem[ceil32(arg1.length) + 1248] = 0
    mem[ceil32(arg1.length) + 1344 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1280] = ceil32(arg1.length) + 1344
    mem[ceil32(arg1.length) + 1408 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1312] = ceil32(arg1.length) + 1408
    mem[ceil32(arg1.length) + 1536 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1472] = ceil32(arg1.length) + 1536
    mem[ceil32(arg1.length) + 1600 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1504] = ceil32(arg1.length) + 1600
    mem[ceil32(arg1.length) + 1728 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1664] = ceil32(arg1.length) + 1728
    mem[ceil32(arg1.length) + 1792 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg1.length) + 1696] = ceil32(arg1.length) + 1792
    mem[64] = ceil32(arg1.length) + 2144
    mem[ceil32(arg1.length) + 2080] = 0
    mem[ceil32(arg1.length) + 2112] = 0
    mem[var49001] = ceil32(arg1.length) + 2080
    s = var49001
    idx = var49002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(arg1.length) + 2080] = 0
        mem[ceil32(arg1.length) + 2112] = 0
        mem[s + 32] = ceil32(arg1.length) + 2080
        s = s + 32
        idx = idx - 1
        continue 
    mem[ceil32(arg1.length) + 1184] = ceil32(arg1.length) + 1856
    _95 = mem[64]
    mem[64] = mem[64] + 64
    mem[_95] = 0x2dbfc3ec62a3eee5a3b4b464bcf1f8527bbca12adea0f1f12033cd4f61b0e091
    mem[_95 + 32] = 0x19e55bd0b72c126da18665039556776642ff82e2f347f24fcea2475f4db087df
    mem[ceil32(arg1.length) + 1056] = _95
    _96 = mem[64]
    mem[64] = mem[64] + 128
    mem[_96 + 64] = 0x1ae724ab134e5a7c6bd8a116fa5505b259522c0f164a5e8126e3ec7d34465f6e
    mem[_96 + 96] = 0x9f1bcdc853f8e3531756bb625b0d1dc014f4ab57c3f79f4f4e2e7ef7e0ead6
    mem[_96] = _96 + 64
    _97 = mem[64]
    mem[64] = mem[64] + 64
    mem[_97] = 0x23a8ca5760457e726365b92fd0ceb486665797cd68c35dcffd8e4ae8066691e9
    mem[_97 + 32] = 0x13ec7182c9fd68331a10f8be0fe885d730de5c7f89aa7d0b7bafaa009bbc9e3e
    mem[_96 + 32] = _97
    mem[ceil32(arg1.length) + 1088] = _96
    _98 = mem[64]
    mem[64] = mem[64] + 128
    mem[_98 + 64] = 0x198e9393920d483a7260bfb731fb5d25f1aa493335a9e71297e485b7aef312c2
    mem[_98 + 96] = 0x1800deef121f1e76426a00665e5c4479674322d4f75edadd46debd5cd992f6ed
    mem[_98] = _98 + 64
    _99 = mem[64]
    mem[64] = mem[64] + 64
    mem[_99] = 0x90689d0585ff075ec9e99ad690c3395bc4b313370b38ef355acdadcd122975b
    mem[_99 + 32] = 0x12c85ea5db8c6deb4aab71808dcb408fe3d1e7690c43d37b4ce6cc0166fa7daa
    mem[_98 + 32] = _99
    mem[ceil32(arg1.length) + 1120] = _98
    _100 = mem[64]
    mem[64] = mem[64] + 128
    mem[_100 + 64] = 0x2f0c63d0c53b3dfbca27b6b43ae7fbf55a38d78a21470996485b03128accc208
    mem[_100 + 96] = 0x556502356e37ed150db2e36531b0f275fd6835c0fc1945922e270b48c48a86
    mem[_100] = _100 + 64
    _101 = mem[64]
    mem[64] = mem[64] + 64
    mem[_101] = 0x2644c27b5dbd793592a70b735e22c798a5e309fa17a992a7dc2a050e01b298f
    mem[_101 + 32] = 0x194776b6a53439d7336f389d2a8f6651e40885f5ca2538b0dc9cb534fb23f7fa
    mem[_100 + 32] = _101
    mem[ceil32(arg1.length) + 1152] = _100
    _102 = mem[64]
    mem[64] = mem[64] + 64
    mem[_102] = 0x23df1bc9165e9c1c9b2bc036d8ebdd10e7aeae7e5e8019fde68aec7c818bb23e
    mem[_102 + 32] = 0xb6c92080d37c5fb2ddf30892a33665e5478432ef3f71ac8768ecbbe62c77892
    mem[ceil32(arg1.length) + 1856] = _102
    _104 = mem[64]
    mem[64] = mem[64] + 64
    mem[_104] = 0x1c7b2adf45e046caea000956b2ecb2d8617e710d2a7bb201a95ea276f92307b4
    mem[_104 + 32] = 0x2b15f07536f45948cf4abe6596637d902ffabb18c8c2f5c151544c294ce4a672
    mem[ceil32(arg1.length) + 1888] = _104
    _106 = mem[64]
    mem[64] = mem[64] + 64
    mem[_106] = 0x1cecfe92882a8c835a47bf01bfa655cf628cbba7f81cf4042179fd13edcd6a39
    mem[_106 + 32] = 0x154bfbb2cb786ca247d4b69183d1751f267bbc7656be8d0f0e7a5a47e2c1101
    mem[ceil32(arg1.length) + 1920] = _106
    _108 = mem[64]
    mem[64] = mem[64] + 64
    mem[_108] = 0x1584616a7423efcc72f69ea84fa0b2bc01433677297f4e8351bebfc15bcd0cda
    mem[_108 + 32] = 0x623755b1488526daa9fecf0e11b110dd6df12c461579d792e1db65af523c8be
    mem[ceil32(arg1.length) + 1952] = _108
    _110 = mem[64]
    mem[64] = mem[64] + 64
    mem[_110] = 0x12fbb5bfca9d61357ba2d641604cf4852e21ef54faa180fe539c18994dc1da5a
    mem[_110 + 32] = 0x2f09dd9972a1af5f7bcfccf3d7ab600c9d898ea6d6933150ba0ae228ece17e5f
    mem[ceil32(arg1.length) + 1984] = _110
    _112 = mem[64]
    mem[64] = mem[64] + 64
    mem[_112] = 0xadb513796fdf2103022c64151ce05f7c7a6d9200e8d819fa59e654fc4bfe83c
    mem[_112 + 32] = 0x2d64f72ef4eddf9ca032058ed2bf691758387e913a77cf99d6a3cfb37c8ba7ee
    mem[ceil32(arg1.length) + 2016] = _112
    _114 = mem[64]
    mem[64] = mem[64] + 64
    mem[_114] = 0x21e7c9bffda74bfd2c4393b6803d775545de6fa89145f4a23476241d9881b661
    mem[_114 + 32] = 0xbbe41e52237ac13eb7b01f3cb999b7394d08734e71b1c3ada62713e17eb560c
    mem[ceil32(arg1.length) + 2048] = _114
    _116 = mem[64]
    mem[64] = mem[64] + 64
    mem[_116] = 0
    mem[_116 + 32] = 0
    _119 = mem[64]
    mem[64] = mem[64] + 64
    mem[_119] = 0
    mem[_119 + 32] = 0
    _120 = mem[64]
    mem[64] = mem[64] + 128
    mem[_120] = 0
    mem[_120 + 32] = 0
    mem[_120 + 64] = 0x23df1bc9165e9c1c9b2bc036d8ebdd10e7aeae7e5e8019fde68aec7c818bb23e
    mem[_120 + 96] = 0xb6c92080d37c5fb2ddf30892a33665e5478432ef3f71ac8768ecbbe62c77892
    bn_add = bn256Add(0, 0, 0x23df1bc9165e9c1c9b2bc036d8ebdd10e7aeae7e5e8019fde68aec7c818bb23e, 0xb6c92080d37c5fb2ddf30892a33665e5478432ef3f71ac8768ecbbe62c77892, mem[_120 + 128 len 64]) 
    mem[_119 len 96] = bn_add
    require bn256Add.result
    if not bn256Add.result:
        revert with 0, 'pairing-add-failed'
    idx = 0
    s = _119
    while idx < 6:
        if mem[(32 * idx) + ceil32(arg1.length) + 128] >= 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001:
            revert with 0, 'verifier-gte-snark-scalar-field'
        require idx + 1 < 7
        _154 = mem[(32 * idx + 1) + mem[ceil32(arg1.length) + 1184]]
        require idx < 6
        _156 = mem[(32 * idx) + ceil32(arg1.length) + 128]
        _164 = mem[64]
        mem[64] = mem[64] + 64
        mem[_164] = 0
        mem[_164 + 32] = 0
        _177 = mem[64]
        mem[64] = mem[64] + 96
        mem[_177 len 96] = call.data[calldata.size len 96]
        mem[_177] = mem[_154]
        mem[_177 + 32] = mem[_154 + 32]
        mem[_177 + 64] = _156
        bn_scalar_mul = bn256ScalarMul(mem[_177 len 64], _156, mem[_177 + 96]) 
        mem[_164 len 96] = bn_scalar_mul
        require bn256ScalarMul.result
        if not bn256ScalarMul.result:
            revert with 0, 'pairing-mul-failed'
        _212 = mem[64]
        mem[64] = mem[64] + 64
        mem[_212] = 0
        mem[_212 + 32] = 0
        _224 = mem[64]
        mem[64] = mem[64] + 128
        mem[_224 len 128] = call.data[calldata.size len 128]
        mem[_224] = mem[s]
        mem[_224 + 32] = mem[s + 32]
        mem[_224 + 64] = bn_scalar_mul
        mem[_224 + 96] = Mask(256, -256, bn_scalar_mul) << 256
        bn_add = bn256Add(mem[_224 len 64], bn_scalar_mul, Mask(256, -256, bn_scalar_mul) << 256, mem[_224 + 128 len 64]) 
        mem[_212 len 96] = bn_add
        require bn256Add.result
        if not bn256Add.result:
            revert with 0, 'pairing-add-failed'
        idx = idx + 1
        s = _212
        continue 
    _147 = mem[ceil32(arg1.length) + 320]
    _149 = mem[64]
    mem[64] = mem[64] + 64
    mem[_149] = 0
    mem[_149 + 32] = 0
    if mem[_147]:
        _157 = mem[64]
        mem[64] = mem[64] + 64
        mem[_157] = mem[_147]
        mem[_157 + 32] = -(mem[_147 + 32] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
        _165 = mem[ceil32(arg1.length) + 352]
        _166 = mem[ceil32(arg1.length) + 1056]
        _167 = mem[ceil32(arg1.length) + 1088]
        _168 = mem[ceil32(arg1.length) + 1120]
        _169 = mem[ceil32(arg1.length) + 384]
        _170 = mem[ceil32(arg1.length) + 1152]
        _178 = mem[64]
        mem[64] = mem[64] + 128
        mem[_178] = _157
        mem[_178 + 32] = _166
        mem[_178 + 64] = _119 + (6 * _212)
        mem[_178 + 96] = _169
        _179 = mem[64]
        mem[64] = mem[64] + 128
        mem[_179] = _165
        mem[_179 + 32] = _167
        mem[_179 + 64] = _168
        mem[_179 + 96] = _170
        _180 = mem[64]
        mem[mem[64]] = 24
        mem[64] = mem[64] + 800
        mem[_180 + 32 len 768] = call.data[calldata.size len 768]
        idx = 0
        while idx < 4:
            require 6 * idx < mem[_180]
            mem[(32 * 6 * idx) + _180 + 32] = mem[mem[(32 * idx) + _178]]
            require idx < 4
            require (6 * idx) + 1 < mem[_180]
            mem[(32 * (6 * idx) + 1) + _180 + 32] = mem[mem[(32 * idx) + _178] + 32]
            require idx < 4
            require (6 * idx) + 2 < mem[_180]
            mem[(32 * (6 * idx) + 2) + _180 + 32] = mem[mem[mem[(32 * idx) + _179]]]
            require idx < 4
            require (6 * idx) + 3 < mem[_180]
            mem[(32 * (6 * idx) + 3) + _180 + 32] = mem[mem[mem[(32 * idx) + _179]] + 32]
            require idx < 4
            require (6 * idx) + 4 < mem[_180]
            mem[(32 * (6 * idx) + 4) + _180 + 32] = mem[mem[mem[(32 * idx) + _179] + 32]]
            require idx < 4
            require (6 * idx) + 5 < mem[_180]
            mem[(32 * (6 * idx) + 5) + _180 + 32] = mem[mem[mem[(32 * idx) + _179] + 32] + 32]
            idx = idx + 1
            continue 
        _271 = mem[64]
        mem[64] = mem[64] + 32
        mem[_271] = call.data[calldata.size]
        bn_pairing = bn256Pairing(mem[_180 + 32 len 768]) 
    else:
        if mem[_147 + 32]:
            _160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_160] = mem[_147]
            mem[_160 + 32] = -(mem[_147 + 32] % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) + 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            _181 = mem[ceil32(arg1.length) + 352]
            _182 = mem[ceil32(arg1.length) + 1056]
            _183 = mem[ceil32(arg1.length) + 1088]
            _184 = mem[ceil32(arg1.length) + 1120]
            _185 = mem[ceil32(arg1.length) + 384]
            _186 = mem[ceil32(arg1.length) + 1152]
            _192 = mem[64]
            mem[64] = mem[64] + 128
            mem[_192] = _160
            mem[_192 + 32] = _182
            mem[_192 + 64] = _119 + (6 * _212)
            mem[_192 + 96] = _185
            _193 = mem[64]
            mem[64] = mem[64] + 128
            mem[_193] = _181
            mem[_193 + 32] = _183
            mem[_193 + 64] = _184
            mem[_193 + 96] = _186
            _194 = mem[64]
            mem[mem[64]] = 24
            mem[64] = mem[64] + 800
            mem[_194 + 32 len 768] = call.data[calldata.size len 768]
            idx = 0
            while idx < 4:
                require 6 * idx < mem[_194]
                mem[(32 * 6 * idx) + _194 + 32] = mem[mem[(32 * idx) + _192]]
                require idx < 4
                require (6 * idx) + 1 < mem[_194]
                mem[(32 * (6 * idx) + 1) + _194 + 32] = mem[mem[(32 * idx) + _192] + 32]
                require idx < 4
                require (6 * idx) + 2 < mem[_194]
                mem[(32 * (6 * idx) + 2) + _194 + 32] = mem[mem[mem[(32 * idx) + _193]]]
                require idx < 4
                require (6 * idx) + 3 < mem[_194]
                mem[(32 * (6 * idx) + 3) + _194 + 32] = mem[mem[mem[(32 * idx) + _193]] + 32]
                require idx < 4
                require (6 * idx) + 4 < mem[_194]
                mem[(32 * (6 * idx) + 4) + _194 + 32] = mem[mem[mem[(32 * idx) + _193] + 32]]
                require idx < 4
                require (6 * idx) + 5 < mem[_194]
                mem[(32 * (6 * idx) + 5) + _194 + 32] = mem[mem[mem[(32 * idx) + _193] + 32] + 32]
                idx = idx + 1
                continue 
            _275 = mem[64]
            mem[64] = mem[64] + 32
            mem[_275] = call.data[calldata.size]
            bn_pairing = bn256Pairing(mem[_194 + 32 len 768]) 
        else:
            _163 = mem[64]
            mem[64] = mem[64] + 64
            mem[_163] = 0
            mem[_163 + 32] = 0
            _171 = mem[ceil32(arg1.length) + 352]
            _172 = mem[ceil32(arg1.length) + 1056]
            _173 = mem[ceil32(arg1.length) + 1088]
            _174 = mem[ceil32(arg1.length) + 1120]
            _175 = mem[ceil32(arg1.length) + 384]
            _176 = mem[ceil32(arg1.length) + 1152]
            _187 = mem[64]
            mem[64] = mem[64] + 128
            mem[_187] = _163
            mem[_187 + 32] = _172
            mem[_187 + 64] = _119 + (6 * _212)
            mem[_187 + 96] = _175
            _188 = mem[64]
            mem[64] = mem[64] + 128
            mem[_188] = _171
            mem[_188 + 32] = _173
            mem[_188 + 64] = _174
            mem[_188 + 96] = _176
            _189 = mem[64]
            mem[mem[64]] = 24
            mem[64] = mem[64] + 800
            mem[_189 + 32 len 768] = call.data[calldata.size len 768]
            idx = 0
            while idx < 4:
                require 6 * idx < mem[_189]
                mem[(32 * 6 * idx) + _189 + 32] = mem[mem[(32 * idx) + _187]]
                require idx < 4
                require (6 * idx) + 1 < mem[_189]
                mem[(32 * (6 * idx) + 1) + _189 + 32] = mem[mem[(32 * idx) + _187] + 32]
                require idx < 4
                require (6 * idx) + 2 < mem[_189]
                mem[(32 * (6 * idx) + 2) + _189 + 32] = mem[mem[mem[(32 * idx) + _188]]]
                require idx < 4
                require (6 * idx) + 3 < mem[_189]
                mem[(32 * (6 * idx) + 3) + _189 + 32] = mem[mem[mem[(32 * idx) + _188]] + 32]
                require idx < 4
                require (6 * idx) + 4 < mem[_189]
                mem[(32 * (6 * idx) + 4) + _189 + 32] = mem[mem[mem[(32 * idx) + _188] + 32]]
                require idx < 4
                require (6 * idx) + 5 < mem[_189]
                mem[(32 * (6 * idx) + 5) + _189 + 32] = mem[mem[mem[(32 * idx) + _188] + 32] + 32]
                idx = idx + 1
                continue 
            _279 = mem[64]
            mem[64] = mem[64] + 32
            mem[_279] = call.data[calldata.size]
            bn_pairing = bn256Pairing(mem[_189 + 32 len 768]) 
    require bn256Pairing.result
    if not bn256Pairing.result:
        revert with 0, 'pairing-opcode-failed'
    return bool(bn_pairing)
}



}
