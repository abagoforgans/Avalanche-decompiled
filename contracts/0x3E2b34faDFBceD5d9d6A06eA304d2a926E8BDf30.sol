contract main {




// =====================  Runtime code  =====================


#
#  - sub_53424f57(?)
#  - getTeamId(uint256 arg1)
#  - _fallback()
#
const sub_1b04ca56(?) = 0xa32608e873f9ddef944b24798db69d80bbb4d1ed

const sub_2071b68b(?) = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const sub_4563696a(?) = 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330

const sub_6621afeb(?) = 384003419006059110

const sub_97a71bd6(?) = 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172

const sub_b70b23a3(?) = 0xc7198437980c041c805a1edcba50c1ce5db95118

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


function sub_658ed398(?) {
    require calldata.size - 4 >= 64
    require arg1 < 7
    require arg2 < 7
    if arg1 > 6:
        revert with 0, 33
    if arg2 > 6:
        revert with 0, 33
    if 28 * arg2 > !(4 * arg1):
        revert with 0, 17
    return (Mask(256, (-28 * arg2) - (4 * arg1), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg2) - (4 * arg1) % 16)
}

function sub_08160d97(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
    staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    return 6
}

function teamInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[160] = 0
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
            gas gas_remaining wei
           args arg1
    mem[320 len 256] = ext_call.return_data[0 len 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    mem[128] = ext_call.return_data[192]
    mem[192] = ext_call.return_data[158 len 2]
    mem[288] = ext_call.return_data[96]
    mem[256] = ext_call.return_data[64]
    mem[224] = ext_call.return_data[32]
    mem[64] = ceil32(return_data.size) + 544
    mem[ceil32(return_data.size) + 320 len 224] = call.data[calldata.size len 224]
    idx = 0
    while idx < 3:
        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + 224]
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_35 + 96] == mem[_35 + 120 len 8]
        require mem[_35 + 128] == mem[_35 + 159 len 1]
        _46 = mem[ceil32(return_data.size) + 512]
        if mem[ceil32(return_data.size) + 512] == -1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 512] = mem[ceil32(return_data.size) + 512] + 1
        if _46 + 1 != 2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[160] = 6
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = mem[128]
        mem[mem[64] + 64] = 6
        mem[mem[64] + 96] = mem[222 len 2]
        return arg1, mem[mem[64] + 32], 6, mem[mem[64] + 96]
    mem[160] = 0
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = mem[128]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = mem[222 len 2]
    return arg1, mem[mem[64] + 32], 0, mem[mem[64] + 96]
}

function refill(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > eth.balance(msg.sender):
        if arg1 < eth.balance(msg.sender):
            revert with 0, 17
        mem[96] = 2
        mem[128] = 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172
        mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[196] = msg.sender
        require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
        staticcall 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 196] = msg.sender
        mem[ceil32(return_data.size) + 228] = this.address
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
        call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
        staticcall 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 3600 > !block.timestamp:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x7a42416a00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg1 - eth.balance(msg.sender)
        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 3600
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapTokensForExactAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1 - eth.balance(msg.sender), ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), msg.sender, block.timestamp + 3600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _36 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1 - eth.balance(msg.sender)) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1 - eth.balance(msg.sender)) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1 - eth.balance(msg.sender)) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _37 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1 - eth.balance(msg.sender)) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1 - eth.balance(msg.sender)) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1 - eth.balance(msg.sender)) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1 - eth.balance(msg.sender)) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1 - eth.balance(msg.sender)) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _37
        require return_data.size >= _36 + (32 * _37) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _37] = mem[(4 * ceil32(return_data.size)) + _36 + 224 len 32 * _37]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
        staticcall 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _51 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _52 = mem[_51]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _52
        require ext_code.size(0xf693248f96fe03422fea95ac0afbbbc4a8fdd172)
        call 0xf693248f96fe03422fea95ac0afbbbc4a8fdd172.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _52
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_55] == bool(mem[_55])
}

function sub_b99bc37f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            s = 0
            while s <= ('cd', 4).length:
                if s >= ('cd', 4).length:
                    revert with 0, 50
                _1369 = mem[64]
                mem[mem[64] + 36] = cd[((32 * s) + cd[4] + 36)]
                _1370 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_1370 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_1370 + 36 len 28]
                _1374 = mem[_1370]
                t = 0
                while t < _1374:
                    mem[t + _1369 + 68] = mem[_1370 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_1374) <= _1374:
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1374 + _1369 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _2076 = mem[128]
                            require mem[160] == mem[176 len 16]
                            require mem[192] == mem[208 len 16]
                            require mem[224] == mem[252 len 4]
                            require mem[256] == mem[284 len 4]
                            require mem[288] == mem[316 len 4]
                            if mem[128]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2138 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2138] == mem[_2138 + 30 len 2]
                                require mem[_2138 + 32] == mem[_2138 + 62 len 2]
                                if not mem[_2138 + 30 len 2]:
                                    _2168 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2168] = 0
                                    mem[_2168 + 32] = 0
                                    mem[_2168 + 64] = 0
                                    mem[_2168 + 96] = 0
                                    _2176 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2176 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _2076
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2192 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_2192] == mem[_2192 + 12 len 20]
                                    _2200 = mem[_2192 + 32]
                                    _2201 = mem[_2192 + 64]
                                    _2202 = mem[_2192 + 96]
                                    _2208 = mem[_2192 + 128]
                                    require mem[_2192 + 128] == mem[_2192 + 158 len 2]
                                    require mem[_2192 + 160] == mem[_2192 + 190 len 2]
                                    require mem[_2192 + 224] == mem[_2192 + 240 len 16]
                                    mem[_2168 + 32] = mem[_2192 + 192]
                                    mem[_2168 + 96] = uint16(_2208)
                                    mem[_2176 + 64] = _2202
                                    mem[_2176 + 32] = _2201
                                    mem[_2176] = _2200
                                    _2252 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2252 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _2176]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2768 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_2768 + 96] == mem[_2768 + 120 len 8]
                                        require mem[_2768 + 128] == mem[_2768 + 159 len 1]
                                        _2859 = mem[_2252 + 192]
                                        if mem[_2252 + 192] == -1:
                                            revert with 0, 17
                                        mem[_2252 + 192] = mem[_2252 + 192] + 1
                                        if _2859 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_2168 + 64] = 6
                                        mem[_2168] = _2076
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_2168 + 126 len 2] and 100 > 65535 / mem[_2168 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_2168 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_2168 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _2971 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_2971] = 0
                                            mem[_2971 + 32] = 0
                                            mem[_2971 + 64] = 0
                                            mem[_2971 + 96] = 0
                                            _2994 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_2994 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3022 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_3022] == mem[_3022 + 12 len 20]
                                            _3051 = mem[_3022 + 32]
                                            _3052 = mem[_3022 + 64]
                                            _3053 = mem[_3022 + 96]
                                            _3071 = mem[_3022 + 128]
                                            require mem[_3022 + 128] == mem[_3022 + 158 len 2]
                                            require mem[_3022 + 160] == mem[_3022 + 190 len 2]
                                            require mem[_3022 + 224] == mem[_3022 + 240 len 16]
                                            mem[_2971 + 32] = mem[_3022 + 192]
                                            mem[_2971 + 96] = uint16(_3071)
                                            mem[_2994 + 64] = _3053
                                            mem[_2994 + 32] = _3052
                                            mem[_2994] = _3051
                                            _3153 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_3153 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _2994]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3905 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_3905 + 96] == mem[_3905 + 120 len 8]
                                                require mem[_3905 + 128] == mem[_3905 + 159 len 1]
                                                _4015 = mem[_3153 + 192]
                                                if mem[_3153 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_3153 + 192] = mem[_3153 + 192] + 1
                                                if _4015 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_2971 + 64] = 6
                                                mem[_2971] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _2971
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_2168 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_2168 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16 < 8:
                                                        if mem[_2971 + 126 len 2] > mem[_2168 + 126 len 2]:
                                                            if mem[_2971 + 126 len 2] < mem[_2168 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_2971 + 126 len 2] - mem[_2168 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2971 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2971 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) > mem[_2168 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) < mem[_2168 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) - mem[_2168 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_2168 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) > 65535 / mem[_2168 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16 < 8:
                                                        if mem[_2971 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                            if mem[_2971 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_2971 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2971 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2971 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_2971 + 64] = 0
                                            mem[_2971] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2971
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2168 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2168 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16 < 8:
                                                    if mem[_2971 + 126 len 2] > mem[_2168 + 126 len 2]:
                                                        if mem[_2971 + 126 len 2] < mem[_2168 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2971 + 126 len 2] - mem[_2168 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2971 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) > 65535 / mem[_2971 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) > mem[_2168 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) < mem[_2168 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) - mem[_2168 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_2168 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) > 65535 / mem[_2168 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16 < 8:
                                                    if mem[_2971 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                        if mem[_2971 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2971 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2971 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) > 65535 / mem[_2971 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2971 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_2168 + 64] = 0
                                    mem[_2168] = _2076
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_2168 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_2168 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_2168 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_2168 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_2168 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_2168 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2168 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_2168 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _2820 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_2820] = 0
                                        mem[_2820 + 32] = 0
                                        mem[_2820 + 64] = 0
                                        mem[_2820 + 96] = 0
                                        _2834 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_2834 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2853 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_2853] == mem[_2853 + 12 len 20]
                                        _2872 = mem[_2853 + 32]
                                        _2873 = mem[_2853 + 64]
                                        _2874 = mem[_2853 + 96]
                                        _2888 = mem[_2853 + 128]
                                        require mem[_2853 + 128] == mem[_2853 + 158 len 2]
                                        require mem[_2853 + 160] == mem[_2853 + 190 len 2]
                                        require mem[_2853 + 224] == mem[_2853 + 240 len 16]
                                        mem[_2820 + 32] = mem[_2853 + 192]
                                        mem[_2820 + 96] = uint16(_2888)
                                        mem[_2834 + 64] = _2874
                                        mem[_2834 + 32] = _2873
                                        mem[_2834] = _2872
                                        _2985 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_2985 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _2834]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3903 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_3903 + 96] == mem[_3903 + 120 len 8]
                                            require mem[_3903 + 128] == mem[_3903 + 159 len 1]
                                            _4014 = mem[_2985 + 192]
                                            if mem[_2985 + 192] == -1:
                                                revert with 0, 17
                                            mem[_2985 + 192] = mem[_2985 + 192] + 1
                                            if _4014 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_2820 + 64] = 6
                                            mem[_2820] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2820
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2168 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2168 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16 < 8:
                                                    if mem[_2820 + 126 len 2] > mem[_2168 + 126 len 2]:
                                                        if mem[_2820 + 126 len 2] < mem[_2168 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2820 + 126 len 2] - mem[_2168 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2820 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2820 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) > mem[_2168 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) < mem[_2168 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) - mem[_2168 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_2168 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) > 65535 / mem[_2168 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16 < 8:
                                                    if mem[_2820 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                        if mem[_2820 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2820 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2820 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2820 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2168 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2168 + 64]) + 24 % 16) + 100) * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_2820 + 64] = 0
                                        mem[_2820] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _2820
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_2168 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_2168 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16 < 8:
                                                if mem[_2820 + 126 len 2] > mem[_2168 + 126 len 2]:
                                                    if mem[_2820 + 126 len 2] < mem[_2168 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_2820 + 126 len 2] - mem[_2168 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2820 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) > 65535 / mem[_2820 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) > mem[_2168 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) < mem[_2168 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) - mem[_2168 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2168 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) > 65535 / mem[_2168 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16 < 8:
                                                if mem[_2820 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                    if mem[_2820 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_2820 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2820 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) > 65535 / mem[_2820 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) + 8) * mem[_2820 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2168 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2168 + 64] % 16) + 100) * mem[_2168 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _2067 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2067] = return_data.size
                        mem[_2067 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _2077 = mem[_2067 + 32]
                            require mem[_2067 + 64] == mem[_2067 + 80 len 16]
                            require mem[_2067 + 96] == mem[_2067 + 112 len 16]
                            require mem[_2067 + 128] == mem[_2067 + 156 len 4]
                            require mem[_2067 + 160] == mem[_2067 + 188 len 4]
                            require mem[_2067 + 192] == mem[_2067 + 220 len 4]
                            if mem[_2067 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2139 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2139] == mem[_2139 + 30 len 2]
                                require mem[_2139 + 32] == mem[_2139 + 62 len 2]
                                if not mem[_2139 + 30 len 2]:
                                    _2169 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2169] = 0
                                    mem[_2169 + 32] = 0
                                    mem[_2169 + 64] = 0
                                    mem[_2169 + 96] = 0
                                    _2177 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2177 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _2077
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2193 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_2193] == mem[_2193 + 12 len 20]
                                    _2203 = mem[_2193 + 32]
                                    _2204 = mem[_2193 + 64]
                                    _2205 = mem[_2193 + 96]
                                    _2209 = mem[_2193 + 128]
                                    require mem[_2193 + 128] == mem[_2193 + 158 len 2]
                                    require mem[_2193 + 160] == mem[_2193 + 190 len 2]
                                    require mem[_2193 + 224] == mem[_2193 + 240 len 16]
                                    mem[_2169 + 32] = mem[_2193 + 192]
                                    mem[_2169 + 96] = uint16(_2209)
                                    mem[_2177 + 64] = _2205
                                    mem[_2177 + 32] = _2204
                                    mem[_2177] = _2203
                                    _2253 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2253 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _2177]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2770 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_2770 + 96] == mem[_2770 + 120 len 8]
                                        require mem[_2770 + 128] == mem[_2770 + 159 len 1]
                                        _2860 = mem[_2253 + 192]
                                        if mem[_2253 + 192] == -1:
                                            revert with 0, 17
                                        mem[_2253 + 192] = mem[_2253 + 192] + 1
                                        if _2860 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_2169 + 64] = 6
                                        mem[_2169] = _2077
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_2169 + 126 len 2] and 100 > 65535 / mem[_2169 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_2169 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_2169 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _2974 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_2974] = 0
                                            mem[_2974 + 32] = 0
                                            mem[_2974 + 64] = 0
                                            mem[_2974 + 96] = 0
                                            _2996 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_2996 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3026 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_3026] == mem[_3026 + 12 len 20]
                                            _3054 = mem[_3026 + 32]
                                            _3055 = mem[_3026 + 64]
                                            _3056 = mem[_3026 + 96]
                                            _3076 = mem[_3026 + 128]
                                            require mem[_3026 + 128] == mem[_3026 + 158 len 2]
                                            require mem[_3026 + 160] == mem[_3026 + 190 len 2]
                                            require mem[_3026 + 224] == mem[_3026 + 240 len 16]
                                            mem[_2974 + 32] = mem[_3026 + 192]
                                            mem[_2974 + 96] = uint16(_3076)
                                            mem[_2996 + 64] = _3056
                                            mem[_2996 + 32] = _3055
                                            mem[_2996] = _3054
                                            _3154 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_3154 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _2996]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3909 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_3909 + 96] == mem[_3909 + 120 len 8]
                                                require mem[_3909 + 128] == mem[_3909 + 159 len 1]
                                                _4017 = mem[_3154 + 192]
                                                if mem[_3154 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_3154 + 192] = mem[_3154 + 192] + 1
                                                if _4017 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_2974 + 64] = 6
                                                mem[_2974] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _2974
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_2169 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_2169 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16 < 8:
                                                        if mem[_2974 + 126 len 2] > mem[_2169 + 126 len 2]:
                                                            if mem[_2974 + 126 len 2] < mem[_2169 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_2974 + 126 len 2] - mem[_2169 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2974 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2974 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) > mem[_2169 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) < mem[_2169 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) - mem[_2169 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_2169 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) > 65535 / mem[_2169 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16 < 8:
                                                        if mem[_2974 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                            if mem[_2974 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_2974 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2974 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2974 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_2974 + 64] = 0
                                            mem[_2974] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2974
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2169 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2169 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16 < 8:
                                                    if mem[_2974 + 126 len 2] > mem[_2169 + 126 len 2]:
                                                        if mem[_2974 + 126 len 2] < mem[_2169 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2974 + 126 len 2] - mem[_2169 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2974 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) > 65535 / mem[_2974 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) > mem[_2169 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) < mem[_2169 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) - mem[_2169 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_2169 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) > 65535 / mem[_2169 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16 < 8:
                                                    if mem[_2974 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                        if mem[_2974 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2974 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2974 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) > 65535 / mem[_2974 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2974 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_2169 + 64] = 0
                                    mem[_2169] = _2077
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_2169 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_2169 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_2169 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_2169 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_2169 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_2169 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2169 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_2169 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _2823 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_2823] = 0
                                        mem[_2823 + 32] = 0
                                        mem[_2823 + 64] = 0
                                        mem[_2823 + 96] = 0
                                        _2835 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_2835 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2854 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_2854] == mem[_2854 + 12 len 20]
                                        _2875 = mem[_2854 + 32]
                                        _2876 = mem[_2854 + 64]
                                        _2877 = mem[_2854 + 96]
                                        _2889 = mem[_2854 + 128]
                                        require mem[_2854 + 128] == mem[_2854 + 158 len 2]
                                        require mem[_2854 + 160] == mem[_2854 + 190 len 2]
                                        require mem[_2854 + 224] == mem[_2854 + 240 len 16]
                                        mem[_2823 + 32] = mem[_2854 + 192]
                                        mem[_2823 + 96] = uint16(_2889)
                                        mem[_2835 + 64] = _2877
                                        mem[_2835 + 32] = _2876
                                        mem[_2835] = _2875
                                        _2986 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_2986 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _2835]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3907 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_3907 + 96] == mem[_3907 + 120 len 8]
                                            require mem[_3907 + 128] == mem[_3907 + 159 len 1]
                                            _4016 = mem[_2986 + 192]
                                            if mem[_2986 + 192] == -1:
                                                revert with 0, 17
                                            mem[_2986 + 192] = mem[_2986 + 192] + 1
                                            if _4016 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_2823 + 64] = 6
                                            mem[_2823] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2823
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2169 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2169 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16 < 8:
                                                    if mem[_2823 + 126 len 2] > mem[_2169 + 126 len 2]:
                                                        if mem[_2823 + 126 len 2] < mem[_2169 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2823 + 126 len 2] - mem[_2169 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2823 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2823 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) > mem[_2169 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) < mem[_2169 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) - mem[_2169 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_2169 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) > 65535 / mem[_2169 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16 < 8:
                                                    if mem[_2823 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                        if mem[_2823 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2823 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2823 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2823 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2169 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2169 + 64]) + 24 % 16) + 100) * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_2823 + 64] = 0
                                        mem[_2823] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _2823
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_2169 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_2169 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16 < 8:
                                                if mem[_2823 + 126 len 2] > mem[_2169 + 126 len 2]:
                                                    if mem[_2823 + 126 len 2] < mem[_2169 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_2823 + 126 len 2] - mem[_2169 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2823 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) > 65535 / mem[_2823 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) > mem[_2169 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) < mem[_2169 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) - mem[_2169 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2169 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) > 65535 / mem[_2169 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16 < 8:
                                                if mem[_2823 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                    if mem[_2823 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_2823 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2823 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) > 65535 / mem[_2823 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) + 8) * mem[_2823 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2169 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2169 + 64] % 16) + 100) * mem[_2169 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                else:
                    mem[_1369 + _1374 + 68] = 0
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1374 + _1369 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _2080 = mem[128]
                            require mem[160] == mem[176 len 16]
                            require mem[192] == mem[208 len 16]
                            require mem[224] == mem[252 len 4]
                            require mem[256] == mem[284 len 4]
                            require mem[288] == mem[316 len 4]
                            if mem[128]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2140 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2140] == mem[_2140 + 30 len 2]
                                require mem[_2140 + 32] == mem[_2140 + 62 len 2]
                                if not mem[_2140 + 30 len 2]:
                                    _2172 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2172] = 0
                                    mem[_2172 + 32] = 0
                                    mem[_2172 + 64] = 0
                                    mem[_2172 + 96] = 0
                                    _2184 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2184 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _2080
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2196 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_2196] == mem[_2196 + 12 len 20]
                                    _2210 = mem[_2196 + 32]
                                    _2211 = mem[_2196 + 64]
                                    _2212 = mem[_2196 + 96]
                                    _2216 = mem[_2196 + 128]
                                    require mem[_2196 + 128] == mem[_2196 + 158 len 2]
                                    require mem[_2196 + 160] == mem[_2196 + 190 len 2]
                                    require mem[_2196 + 224] == mem[_2196 + 240 len 16]
                                    mem[_2172 + 32] = mem[_2196 + 192]
                                    mem[_2172 + 96] = uint16(_2216)
                                    mem[_2184 + 64] = _2212
                                    mem[_2184 + 32] = _2211
                                    mem[_2184] = _2210
                                    _2262 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2262 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _2184]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2772 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_2772 + 96] == mem[_2772 + 120 len 8]
                                        require mem[_2772 + 128] == mem[_2772 + 159 len 1]
                                        _2861 = mem[_2262 + 192]
                                        if mem[_2262 + 192] == -1:
                                            revert with 0, 17
                                        mem[_2262 + 192] = mem[_2262 + 192] + 1
                                        if _2861 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_2172 + 64] = 6
                                        mem[_2172] = _2080
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_2172 + 126 len 2] and 100 > 65535 / mem[_2172 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_2172 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_2172 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _2977 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_2977] = 0
                                            mem[_2977 + 32] = 0
                                            mem[_2977 + 64] = 0
                                            mem[_2977 + 96] = 0
                                            _2998 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_2998 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3030 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_3030] == mem[_3030 + 12 len 20]
                                            _3057 = mem[_3030 + 32]
                                            _3058 = mem[_3030 + 64]
                                            _3059 = mem[_3030 + 96]
                                            _3081 = mem[_3030 + 128]
                                            require mem[_3030 + 128] == mem[_3030 + 158 len 2]
                                            require mem[_3030 + 160] == mem[_3030 + 190 len 2]
                                            require mem[_3030 + 224] == mem[_3030 + 240 len 16]
                                            mem[_2977 + 32] = mem[_3030 + 192]
                                            mem[_2977 + 96] = uint16(_3081)
                                            mem[_2998 + 64] = _3059
                                            mem[_2998 + 32] = _3058
                                            mem[_2998] = _3057
                                            _3155 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_3155 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _2998]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3913 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_3913 + 96] == mem[_3913 + 120 len 8]
                                                require mem[_3913 + 128] == mem[_3913 + 159 len 1]
                                                _4019 = mem[_3155 + 192]
                                                if mem[_3155 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_3155 + 192] = mem[_3155 + 192] + 1
                                                if _4019 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_2977 + 64] = 6
                                                mem[_2977] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _2977
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_2172 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_2172 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16 < 8:
                                                        if mem[_2977 + 126 len 2] > mem[_2172 + 126 len 2]:
                                                            if mem[_2977 + 126 len 2] < mem[_2172 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_2977 + 126 len 2] - mem[_2172 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2977 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2977 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) > mem[_2172 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) < mem[_2172 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) - mem[_2172 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_2172 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) > 65535 / mem[_2172 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16 < 8:
                                                        if mem[_2977 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                            if mem[_2977 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_2977 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2977 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2977 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_2977 + 64] = 0
                                            mem[_2977] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2977
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2172 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2172 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16 < 8:
                                                    if mem[_2977 + 126 len 2] > mem[_2172 + 126 len 2]:
                                                        if mem[_2977 + 126 len 2] < mem[_2172 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2977 + 126 len 2] - mem[_2172 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2977 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) > 65535 / mem[_2977 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) > mem[_2172 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) < mem[_2172 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) - mem[_2172 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_2172 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) > 65535 / mem[_2172 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16 < 8:
                                                    if mem[_2977 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                        if mem[_2977 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2977 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2977 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) > 65535 / mem[_2977 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_2172 + 64] = 0
                                    mem[_2172] = _2080
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_2172 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_2172 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_2172 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_2172 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_2172 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_2172 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2172 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_2172 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _2826 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_2826] = 0
                                        mem[_2826 + 32] = 0
                                        mem[_2826 + 64] = 0
                                        mem[_2826 + 96] = 0
                                        _2836 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_2836 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2855 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_2855] == mem[_2855 + 12 len 20]
                                        _2878 = mem[_2855 + 32]
                                        _2879 = mem[_2855 + 64]
                                        _2880 = mem[_2855 + 96]
                                        _2890 = mem[_2855 + 128]
                                        require mem[_2855 + 128] == mem[_2855 + 158 len 2]
                                        require mem[_2855 + 160] == mem[_2855 + 190 len 2]
                                        require mem[_2855 + 224] == mem[_2855 + 240 len 16]
                                        mem[_2826 + 32] = mem[_2855 + 192]
                                        mem[_2826 + 96] = uint16(_2890)
                                        mem[_2836 + 64] = _2880
                                        mem[_2836 + 32] = _2879
                                        mem[_2836] = _2878
                                        _2987 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_2987 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _2836]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3911 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_3911 + 96] == mem[_3911 + 120 len 8]
                                            require mem[_3911 + 128] == mem[_3911 + 159 len 1]
                                            _4018 = mem[_2987 + 192]
                                            if mem[_2987 + 192] == -1:
                                                revert with 0, 17
                                            mem[_2987 + 192] = mem[_2987 + 192] + 1
                                            if _4018 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_2826 + 64] = 6
                                            mem[_2826] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2826
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2172 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2172 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16 < 8:
                                                    if mem[_2826 + 126 len 2] > mem[_2172 + 126 len 2]:
                                                        if mem[_2826 + 126 len 2] < mem[_2172 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2826 + 126 len 2] - mem[_2172 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2826 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2826 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) > mem[_2172 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) < mem[_2172 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) - mem[_2172 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_2172 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) > 65535 / mem[_2172 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16 < 8:
                                                    if mem[_2826 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                        if mem[_2826 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2826 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2826 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2826 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2172 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2172 + 64]) + 24 % 16) + 100) * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_2826 + 64] = 0
                                        mem[_2826] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _2826
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_2172 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_2172 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16 < 8:
                                                if mem[_2826 + 126 len 2] > mem[_2172 + 126 len 2]:
                                                    if mem[_2826 + 126 len 2] < mem[_2172 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_2826 + 126 len 2] - mem[_2172 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2826 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) > 65535 / mem[_2826 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) > mem[_2172 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) < mem[_2172 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) - mem[_2172 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2172 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) > 65535 / mem[_2172 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16 < 8:
                                                if mem[_2826 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                    if mem[_2826 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_2826 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2826 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) > 65535 / mem[_2826 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2172 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2172 + 64] % 16) + 100) * mem[_2172 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _2069 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2069] = return_data.size
                        mem[_2069 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _2081 = mem[_2069 + 32]
                            require mem[_2069 + 64] == mem[_2069 + 80 len 16]
                            require mem[_2069 + 96] == mem[_2069 + 112 len 16]
                            require mem[_2069 + 128] == mem[_2069 + 156 len 4]
                            require mem[_2069 + 160] == mem[_2069 + 188 len 4]
                            require mem[_2069 + 192] == mem[_2069 + 220 len 4]
                            if mem[_2069 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2141 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2141] == mem[_2141 + 30 len 2]
                                require mem[_2141 + 32] == mem[_2141 + 62 len 2]
                                if not mem[_2141 + 30 len 2]:
                                    _2173 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2173] = 0
                                    mem[_2173 + 32] = 0
                                    mem[_2173 + 64] = 0
                                    mem[_2173 + 96] = 0
                                    _2185 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2185 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _2081
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2197 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_2197] == mem[_2197 + 12 len 20]
                                    _2213 = mem[_2197 + 32]
                                    _2214 = mem[_2197 + 64]
                                    _2215 = mem[_2197 + 96]
                                    _2217 = mem[_2197 + 128]
                                    require mem[_2197 + 128] == mem[_2197 + 158 len 2]
                                    require mem[_2197 + 160] == mem[_2197 + 190 len 2]
                                    require mem[_2197 + 224] == mem[_2197 + 240 len 16]
                                    mem[_2173 + 32] = mem[_2197 + 192]
                                    mem[_2173 + 96] = uint16(_2217)
                                    mem[_2185 + 64] = _2215
                                    mem[_2185 + 32] = _2214
                                    mem[_2185] = _2213
                                    _2263 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2263 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _2185]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2774 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_2774 + 96] == mem[_2774 + 120 len 8]
                                        require mem[_2774 + 128] == mem[_2774 + 159 len 1]
                                        _2862 = mem[_2263 + 192]
                                        if mem[_2263 + 192] == -1:
                                            revert with 0, 17
                                        mem[_2263 + 192] = mem[_2263 + 192] + 1
                                        if _2862 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_2173 + 64] = 6
                                        mem[_2173] = _2081
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_2173 + 126 len 2] and 100 > 65535 / mem[_2173 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_2173 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_2173 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _2980 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_2980] = 0
                                            mem[_2980 + 32] = 0
                                            mem[_2980 + 64] = 0
                                            mem[_2980 + 96] = 0
                                            _3000 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3000 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3034 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_3034] == mem[_3034 + 12 len 20]
                                            _3060 = mem[_3034 + 32]
                                            _3061 = mem[_3034 + 64]
                                            _3062 = mem[_3034 + 96]
                                            _3086 = mem[_3034 + 128]
                                            require mem[_3034 + 128] == mem[_3034 + 158 len 2]
                                            require mem[_3034 + 160] == mem[_3034 + 190 len 2]
                                            require mem[_3034 + 224] == mem[_3034 + 240 len 16]
                                            mem[_2980 + 32] = mem[_3034 + 192]
                                            mem[_2980 + 96] = uint16(_3086)
                                            mem[_3000 + 64] = _3062
                                            mem[_3000 + 32] = _3061
                                            mem[_3000] = _3060
                                            _3156 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_3156 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _3000]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3917 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_3917 + 96] == mem[_3917 + 120 len 8]
                                                require mem[_3917 + 128] == mem[_3917 + 159 len 1]
                                                _4021 = mem[_3156 + 192]
                                                if mem[_3156 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_3156 + 192] = mem[_3156 + 192] + 1
                                                if _4021 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_2980 + 64] = 6
                                                mem[_2980] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _2980
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_2173 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_2173 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16 < 8:
                                                        if mem[_2980 + 126 len 2] > mem[_2173 + 126 len 2]:
                                                            if mem[_2980 + 126 len 2] < mem[_2173 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_2980 + 126 len 2] - mem[_2173 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2980 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2980 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) > mem[_2173 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) < mem[_2173 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) - mem[_2173 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_2173 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) > 65535 / mem[_2173 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16 < 8:
                                                        if mem[_2980 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                            if mem[_2980 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_2980 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2980 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2980 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_2980 + 64] = 0
                                            mem[_2980] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2980
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2173 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2173 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16 < 8:
                                                    if mem[_2980 + 126 len 2] > mem[_2173 + 126 len 2]:
                                                        if mem[_2980 + 126 len 2] < mem[_2173 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2980 + 126 len 2] - mem[_2173 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2980 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) > 65535 / mem[_2980 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) > mem[_2173 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) < mem[_2173 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) - mem[_2173 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_2173 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) > 65535 / mem[_2173 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16 < 8:
                                                    if mem[_2980 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                        if mem[_2980 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2980 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2980 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) > 65535 / mem[_2980 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_2173 + 64] = 0
                                    mem[_2173] = _2081
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_2173 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_2173 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_2173 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_2173 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_2173 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_2173 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2173 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_2173 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _2829 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_2829] = 0
                                        mem[_2829 + 32] = 0
                                        mem[_2829 + 64] = 0
                                        mem[_2829 + 96] = 0
                                        _2837 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_2837 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2856 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_2856] == mem[_2856 + 12 len 20]
                                        _2881 = mem[_2856 + 32]
                                        _2882 = mem[_2856 + 64]
                                        _2883 = mem[_2856 + 96]
                                        _2891 = mem[_2856 + 128]
                                        require mem[_2856 + 128] == mem[_2856 + 158 len 2]
                                        require mem[_2856 + 160] == mem[_2856 + 190 len 2]
                                        require mem[_2856 + 224] == mem[_2856 + 240 len 16]
                                        mem[_2829 + 32] = mem[_2856 + 192]
                                        mem[_2829 + 96] = uint16(_2891)
                                        mem[_2837 + 64] = _2883
                                        mem[_2837 + 32] = _2882
                                        mem[_2837] = _2881
                                        _2988 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_2988 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _2837]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3915 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_3915 + 96] == mem[_3915 + 120 len 8]
                                            require mem[_3915 + 128] == mem[_3915 + 159 len 1]
                                            _4020 = mem[_2988 + 192]
                                            if mem[_2988 + 192] == -1:
                                                revert with 0, 17
                                            mem[_2988 + 192] = mem[_2988 + 192] + 1
                                            if _4020 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_2829 + 64] = 6
                                            mem[_2829] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2829
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2173 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2173 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16 < 8:
                                                    if mem[_2829 + 126 len 2] > mem[_2173 + 126 len 2]:
                                                        if mem[_2829 + 126 len 2] < mem[_2173 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2829 + 126 len 2] - mem[_2173 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2829 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2829 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) > mem[_2173 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) < mem[_2173 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) - mem[_2173 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_2173 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) > 65535 / mem[_2173 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16 < 8:
                                                    if mem[_2829 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                        if mem[_2829 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2829 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2829 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2829 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2173 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2173 + 64]) + 24 % 16) + 100) * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_2829 + 64] = 0
                                        mem[_2829] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _2829
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_2173 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_2173 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16 < 8:
                                                if mem[_2829 + 126 len 2] > mem[_2173 + 126 len 2]:
                                                    if mem[_2829 + 126 len 2] < mem[_2173 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_2829 + 126 len 2] - mem[_2173 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2829 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) > 65535 / mem[_2829 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) > mem[_2173 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) < mem[_2173 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) - mem[_2173 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2173 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) > 65535 / mem[_2173 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16 < 8:
                                                if mem[_2829 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                    if mem[_2829 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_2829 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2829 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) > 65535 / mem[_2829 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2173 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2173 + 64] % 16) + 100) * mem[_2173 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return 0
    mem[64] = (32 * ('cd', 36).length) + 256
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[var29002] = 0
    mem[var29002 + 32] = 0
    mem[var31002] = var31001
    if not var31003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            s = 0
            while s <= ('cd', 4).length:
                if s >= ('cd', 4).length:
                    revert with 0, 50
                _4829 = mem[64]
                mem[mem[64] + 36] = cd[((32 * s) + cd[4] + 36)]
                _4831 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_4831 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_4831 + 36 len 28]
                _4834 = mem[_4831]
                t = 0
                while t < _4834:
                    mem[t + _4829 + 68] = mem[_4831 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_4834) <= _4834:
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4834 + _4829 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _5536 = mem[128]
                            require mem[160] == mem[176 len 16]
                            require mem[192] == mem[208 len 16]
                            require mem[224] == mem[252 len 4]
                            require mem[256] == mem[284 len 4]
                            require mem[288] == mem[316 len 4]
                            if mem[128]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5598 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_5598] == mem[_5598 + 30 len 2]
                                require mem[_5598 + 32] == mem[_5598 + 62 len 2]
                                if not mem[_5598 + 30 len 2]:
                                    _5630 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_5630] = 0
                                    mem[_5630 + 32] = 0
                                    mem[_5630 + 64] = 0
                                    mem[_5630 + 96] = 0
                                    _5638 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5638 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _5536
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5654 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_5654] == mem[_5654 + 12 len 20]
                                    _5660 = mem[_5654 + 32]
                                    _5661 = mem[_5654 + 64]
                                    _5662 = mem[_5654 + 96]
                                    _5668 = mem[_5654 + 128]
                                    require mem[_5654 + 128] == mem[_5654 + 158 len 2]
                                    require mem[_5654 + 160] == mem[_5654 + 190 len 2]
                                    require mem[_5654 + 224] == mem[_5654 + 240 len 16]
                                    mem[_5630 + 32] = mem[_5654 + 192]
                                    mem[_5630 + 96] = uint16(_5668)
                                    mem[_5638 + 64] = _5662
                                    mem[_5638 + 32] = _5661
                                    mem[_5638] = _5660
                                    _5720 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_5720 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _5638]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6229 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_6229 + 96] == mem[_6229 + 120 len 8]
                                        require mem[_6229 + 128] == mem[_6229 + 159 len 1]
                                        _6321 = mem[_5720 + 192]
                                        if mem[_5720 + 192] == -1:
                                            revert with 0, 17
                                        mem[_5720 + 192] = mem[_5720 + 192] + 1
                                        if _6321 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_5630 + 64] = 6
                                        mem[_5630] = _5536
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_5630 + 126 len 2] and 100 > 65535 / mem[_5630 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_5630 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_5630 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _6435 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_6435] = 0
                                            mem[_6435 + 32] = 0
                                            mem[_6435 + 64] = 0
                                            mem[_6435 + 96] = 0
                                            _6458 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_6458 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6484 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_6484] == mem[_6484 + 12 len 20]
                                            _6515 = mem[_6484 + 32]
                                            _6516 = mem[_6484 + 64]
                                            _6517 = mem[_6484 + 96]
                                            _6533 = mem[_6484 + 128]
                                            require mem[_6484 + 128] == mem[_6484 + 158 len 2]
                                            require mem[_6484 + 160] == mem[_6484 + 190 len 2]
                                            require mem[_6484 + 224] == mem[_6484 + 240 len 16]
                                            mem[_6435 + 32] = mem[_6484 + 192]
                                            mem[_6435 + 96] = uint16(_6533)
                                            mem[_6458 + 64] = _6517
                                            mem[_6458 + 32] = _6516
                                            mem[_6458] = _6515
                                            _6615 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_6615 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _6458]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7366 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_7366 + 96] == mem[_7366 + 120 len 8]
                                                require mem[_7366 + 128] == mem[_7366 + 159 len 1]
                                                _7480 = mem[_6615 + 192]
                                                if mem[_6615 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_6615 + 192] = mem[_6615 + 192] + 1
                                                if _7480 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_6435 + 64] = 6
                                                mem[_6435] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _6435
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_5630 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_5630 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16 < 8:
                                                        if mem[_6435 + 126 len 2] > mem[_5630 + 126 len 2]:
                                                            if mem[_6435 + 126 len 2] < mem[_5630 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_6435 + 126 len 2] - mem[_5630 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6435 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6435 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) > mem[_5630 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) < mem[_5630 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) - mem[_5630 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_5630 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) > 65535 / mem[_5630 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16 < 8:
                                                        if mem[_6435 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                            if mem[_6435 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_6435 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6435 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6435 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_6435 + 64] = 0
                                            mem[_6435] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6435
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5630 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5630 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16 < 8:
                                                    if mem[_6435 + 126 len 2] > mem[_5630 + 126 len 2]:
                                                        if mem[_6435 + 126 len 2] < mem[_5630 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6435 + 126 len 2] - mem[_5630 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6435 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) > 65535 / mem[_6435 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) > mem[_5630 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) < mem[_5630 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) - mem[_5630 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_5630 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) > 65535 / mem[_5630 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16 < 8:
                                                    if mem[_6435 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                        if mem[_6435 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6435 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6435 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) > 65535 / mem[_6435 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6435 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_5630 + 64] = 0
                                    mem[_5630] = _5536
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_5630 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_5630 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_5630 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_5630 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_5630 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_5630 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5630 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_5630 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _6282 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_6282] = 0
                                        mem[_6282 + 32] = 0
                                        mem[_6282 + 64] = 0
                                        mem[_6282 + 96] = 0
                                        _6297 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_6297 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6315 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_6315] == mem[_6315 + 12 len 20]
                                        _6336 = mem[_6315 + 32]
                                        _6337 = mem[_6315 + 64]
                                        _6338 = mem[_6315 + 96]
                                        _6353 = mem[_6315 + 128]
                                        require mem[_6315 + 128] == mem[_6315 + 158 len 2]
                                        require mem[_6315 + 160] == mem[_6315 + 190 len 2]
                                        require mem[_6315 + 224] == mem[_6315 + 240 len 16]
                                        mem[_6282 + 32] = mem[_6315 + 192]
                                        mem[_6282 + 96] = uint16(_6353)
                                        mem[_6297 + 64] = _6338
                                        mem[_6297 + 32] = _6337
                                        mem[_6297] = _6336
                                        _6447 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_6447 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _6297]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7364 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_7364 + 96] == mem[_7364 + 120 len 8]
                                            require mem[_7364 + 128] == mem[_7364 + 159 len 1]
                                            _7479 = mem[_6447 + 192]
                                            if mem[_6447 + 192] == -1:
                                                revert with 0, 17
                                            mem[_6447 + 192] = mem[_6447 + 192] + 1
                                            if _7479 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_6282 + 64] = 6
                                            mem[_6282] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6282
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5630 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5630 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16 < 8:
                                                    if mem[_6282 + 126 len 2] > mem[_5630 + 126 len 2]:
                                                        if mem[_6282 + 126 len 2] < mem[_5630 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6282 + 126 len 2] - mem[_5630 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6282 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6282 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) > mem[_5630 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) < mem[_5630 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) - mem[_5630 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_5630 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) > 65535 / mem[_5630 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16 < 8:
                                                    if mem[_6282 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                        if mem[_6282 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6282 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6282 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6282 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5630 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5630 + 64]) + 24 % 16) + 100) * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_6282 + 64] = 0
                                        mem[_6282] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _6282
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_5630 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_5630 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16 < 8:
                                                if mem[_6282 + 126 len 2] > mem[_5630 + 126 len 2]:
                                                    if mem[_6282 + 126 len 2] < mem[_5630 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_6282 + 126 len 2] - mem[_5630 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6282 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) > 65535 / mem[_6282 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) > mem[_5630 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) < mem[_5630 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) - mem[_5630 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5630 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) > 65535 / mem[_5630 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16 < 8:
                                                if mem[_6282 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                    if mem[_6282 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_6282 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6282 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) > 65535 / mem[_6282 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) + 8) * mem[_6282 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5630 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5630 + 64] % 16) + 100) * mem[_5630 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _5527 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5527] = return_data.size
                        mem[_5527 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _5537 = mem[_5527 + 32]
                            require mem[_5527 + 64] == mem[_5527 + 80 len 16]
                            require mem[_5527 + 96] == mem[_5527 + 112 len 16]
                            require mem[_5527 + 128] == mem[_5527 + 156 len 4]
                            require mem[_5527 + 160] == mem[_5527 + 188 len 4]
                            require mem[_5527 + 192] == mem[_5527 + 220 len 4]
                            if mem[_5527 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5599 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_5599] == mem[_5599 + 30 len 2]
                                require mem[_5599 + 32] == mem[_5599 + 62 len 2]
                                if not mem[_5599 + 30 len 2]:
                                    _5631 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_5631] = 0
                                    mem[_5631 + 32] = 0
                                    mem[_5631 + 64] = 0
                                    mem[_5631 + 96] = 0
                                    _5639 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5639 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _5537
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5655 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_5655] == mem[_5655 + 12 len 20]
                                    _5663 = mem[_5655 + 32]
                                    _5664 = mem[_5655 + 64]
                                    _5665 = mem[_5655 + 96]
                                    _5669 = mem[_5655 + 128]
                                    require mem[_5655 + 128] == mem[_5655 + 158 len 2]
                                    require mem[_5655 + 160] == mem[_5655 + 190 len 2]
                                    require mem[_5655 + 224] == mem[_5655 + 240 len 16]
                                    mem[_5631 + 32] = mem[_5655 + 192]
                                    mem[_5631 + 96] = uint16(_5669)
                                    mem[_5639 + 64] = _5665
                                    mem[_5639 + 32] = _5664
                                    mem[_5639] = _5663
                                    _5721 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_5721 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _5639]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6231 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_6231 + 96] == mem[_6231 + 120 len 8]
                                        require mem[_6231 + 128] == mem[_6231 + 159 len 1]
                                        _6322 = mem[_5721 + 192]
                                        if mem[_5721 + 192] == -1:
                                            revert with 0, 17
                                        mem[_5721 + 192] = mem[_5721 + 192] + 1
                                        if _6322 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_5631 + 64] = 6
                                        mem[_5631] = _5537
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_5631 + 126 len 2] and 100 > 65535 / mem[_5631 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_5631 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_5631 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _6438 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_6438] = 0
                                            mem[_6438 + 32] = 0
                                            mem[_6438 + 64] = 0
                                            mem[_6438 + 96] = 0
                                            _6460 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_6460 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6488 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_6488] == mem[_6488 + 12 len 20]
                                            _6518 = mem[_6488 + 32]
                                            _6519 = mem[_6488 + 64]
                                            _6520 = mem[_6488 + 96]
                                            _6538 = mem[_6488 + 128]
                                            require mem[_6488 + 128] == mem[_6488 + 158 len 2]
                                            require mem[_6488 + 160] == mem[_6488 + 190 len 2]
                                            require mem[_6488 + 224] == mem[_6488 + 240 len 16]
                                            mem[_6438 + 32] = mem[_6488 + 192]
                                            mem[_6438 + 96] = uint16(_6538)
                                            mem[_6460 + 64] = _6520
                                            mem[_6460 + 32] = _6519
                                            mem[_6460] = _6518
                                            _6616 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_6616 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _6460]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7370 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_7370 + 96] == mem[_7370 + 120 len 8]
                                                require mem[_7370 + 128] == mem[_7370 + 159 len 1]
                                                _7482 = mem[_6616 + 192]
                                                if mem[_6616 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_6616 + 192] = mem[_6616 + 192] + 1
                                                if _7482 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_6438 + 64] = 6
                                                mem[_6438] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _6438
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_5631 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_5631 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16 < 8:
                                                        if mem[_6438 + 126 len 2] > mem[_5631 + 126 len 2]:
                                                            if mem[_6438 + 126 len 2] < mem[_5631 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_6438 + 126 len 2] - mem[_5631 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6438 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6438 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) > mem[_5631 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) < mem[_5631 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) - mem[_5631 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_5631 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) > 65535 / mem[_5631 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16 < 8:
                                                        if mem[_6438 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                            if mem[_6438 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_6438 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6438 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6438 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_6438 + 64] = 0
                                            mem[_6438] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6438
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5631 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5631 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16 < 8:
                                                    if mem[_6438 + 126 len 2] > mem[_5631 + 126 len 2]:
                                                        if mem[_6438 + 126 len 2] < mem[_5631 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6438 + 126 len 2] - mem[_5631 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6438 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) > 65535 / mem[_6438 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) > mem[_5631 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) < mem[_5631 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) - mem[_5631 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_5631 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) > 65535 / mem[_5631 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16 < 8:
                                                    if mem[_6438 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                        if mem[_6438 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6438 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6438 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) > 65535 / mem[_6438 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6438 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_5631 + 64] = 0
                                    mem[_5631] = _5537
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_5631 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_5631 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_5631 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_5631 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_5631 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_5631 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5631 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_5631 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _6285 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_6285] = 0
                                        mem[_6285 + 32] = 0
                                        mem[_6285 + 64] = 0
                                        mem[_6285 + 96] = 0
                                        _6298 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_6298 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6316 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_6316] == mem[_6316 + 12 len 20]
                                        _6339 = mem[_6316 + 32]
                                        _6340 = mem[_6316 + 64]
                                        _6341 = mem[_6316 + 96]
                                        _6354 = mem[_6316 + 128]
                                        require mem[_6316 + 128] == mem[_6316 + 158 len 2]
                                        require mem[_6316 + 160] == mem[_6316 + 190 len 2]
                                        require mem[_6316 + 224] == mem[_6316 + 240 len 16]
                                        mem[_6285 + 32] = mem[_6316 + 192]
                                        mem[_6285 + 96] = uint16(_6354)
                                        mem[_6298 + 64] = _6341
                                        mem[_6298 + 32] = _6340
                                        mem[_6298] = _6339
                                        _6448 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_6448 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _6298]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7368 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_7368 + 96] == mem[_7368 + 120 len 8]
                                            require mem[_7368 + 128] == mem[_7368 + 159 len 1]
                                            _7481 = mem[_6448 + 192]
                                            if mem[_6448 + 192] == -1:
                                                revert with 0, 17
                                            mem[_6448 + 192] = mem[_6448 + 192] + 1
                                            if _7481 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_6285 + 64] = 6
                                            mem[_6285] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6285
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5631 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5631 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16 < 8:
                                                    if mem[_6285 + 126 len 2] > mem[_5631 + 126 len 2]:
                                                        if mem[_6285 + 126 len 2] < mem[_5631 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6285 + 126 len 2] - mem[_5631 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6285 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6285 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) > mem[_5631 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) < mem[_5631 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) - mem[_5631 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_5631 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) > 65535 / mem[_5631 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16 < 8:
                                                    if mem[_6285 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                        if mem[_6285 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6285 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6285 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6285 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5631 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5631 + 64]) + 24 % 16) + 100) * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_6285 + 64] = 0
                                        mem[_6285] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _6285
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_5631 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_5631 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16 < 8:
                                                if mem[_6285 + 126 len 2] > mem[_5631 + 126 len 2]:
                                                    if mem[_6285 + 126 len 2] < mem[_5631 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_6285 + 126 len 2] - mem[_5631 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6285 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) > 65535 / mem[_6285 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) > mem[_5631 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) < mem[_5631 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) - mem[_5631 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5631 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) > 65535 / mem[_5631 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16 < 8:
                                                if mem[_6285 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                    if mem[_6285 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_6285 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6285 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) > 65535 / mem[_6285 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) + 8) * mem[_6285 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5631 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5631 + 64] % 16) + 100) * mem[_5631 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                else:
                    mem[_4829 + _4834 + 68] = 0
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4834 + _4829 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _5541 = mem[128]
                            require mem[160] == mem[176 len 16]
                            require mem[192] == mem[208 len 16]
                            require mem[224] == mem[252 len 4]
                            require mem[256] == mem[284 len 4]
                            require mem[288] == mem[316 len 4]
                            if mem[128]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5602 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_5602] == mem[_5602 + 30 len 2]
                                require mem[_5602 + 32] == mem[_5602 + 62 len 2]
                                if not mem[_5602 + 30 len 2]:
                                    _5632 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_5632] = 0
                                    mem[_5632 + 32] = 0
                                    mem[_5632 + 64] = 0
                                    mem[_5632 + 96] = 0
                                    _5644 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5644 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _5541
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5656 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_5656] == mem[_5656 + 12 len 20]
                                    _5670 = mem[_5656 + 32]
                                    _5671 = mem[_5656 + 64]
                                    _5672 = mem[_5656 + 96]
                                    _5676 = mem[_5656 + 128]
                                    require mem[_5656 + 128] == mem[_5656 + 158 len 2]
                                    require mem[_5656 + 160] == mem[_5656 + 190 len 2]
                                    require mem[_5656 + 224] == mem[_5656 + 240 len 16]
                                    mem[_5632 + 32] = mem[_5656 + 192]
                                    mem[_5632 + 96] = uint16(_5676)
                                    mem[_5644 + 64] = _5672
                                    mem[_5644 + 32] = _5671
                                    mem[_5644] = _5670
                                    _5730 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_5730 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _5644]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6233 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_6233 + 96] == mem[_6233 + 120 len 8]
                                        require mem[_6233 + 128] == mem[_6233 + 159 len 1]
                                        _6323 = mem[_5730 + 192]
                                        if mem[_5730 + 192] == -1:
                                            revert with 0, 17
                                        mem[_5730 + 192] = mem[_5730 + 192] + 1
                                        if _6323 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_5632 + 64] = 6
                                        mem[_5632] = _5541
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_5632 + 126 len 2] and 100 > 65535 / mem[_5632 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_5632 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_5632 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _6441 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_6441] = 0
                                            mem[_6441 + 32] = 0
                                            mem[_6441 + 64] = 0
                                            mem[_6441 + 96] = 0
                                            _6462 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_6462 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6492 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_6492] == mem[_6492 + 12 len 20]
                                            _6521 = mem[_6492 + 32]
                                            _6522 = mem[_6492 + 64]
                                            _6523 = mem[_6492 + 96]
                                            _6543 = mem[_6492 + 128]
                                            require mem[_6492 + 128] == mem[_6492 + 158 len 2]
                                            require mem[_6492 + 160] == mem[_6492 + 190 len 2]
                                            require mem[_6492 + 224] == mem[_6492 + 240 len 16]
                                            mem[_6441 + 32] = mem[_6492 + 192]
                                            mem[_6441 + 96] = uint16(_6543)
                                            mem[_6462 + 64] = _6523
                                            mem[_6462 + 32] = _6522
                                            mem[_6462] = _6521
                                            _6617 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_6617 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _6462]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7374 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_7374 + 96] == mem[_7374 + 120 len 8]
                                                require mem[_7374 + 128] == mem[_7374 + 159 len 1]
                                                _7484 = mem[_6617 + 192]
                                                if mem[_6617 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_6617 + 192] = mem[_6617 + 192] + 1
                                                if _7484 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_6441 + 64] = 6
                                                mem[_6441] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _6441
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_5632 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_5632 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16 < 8:
                                                        if mem[_6441 + 126 len 2] > mem[_5632 + 126 len 2]:
                                                            if mem[_6441 + 126 len 2] < mem[_5632 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_6441 + 126 len 2] - mem[_5632 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6441 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6441 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) > mem[_5632 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) < mem[_5632 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) - mem[_5632 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_5632 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) > 65535 / mem[_5632 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16 < 8:
                                                        if mem[_6441 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                            if mem[_6441 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_6441 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6441 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6441 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_6441 + 64] = 0
                                            mem[_6441] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6441
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5632 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5632 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16 < 8:
                                                    if mem[_6441 + 126 len 2] > mem[_5632 + 126 len 2]:
                                                        if mem[_6441 + 126 len 2] < mem[_5632 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6441 + 126 len 2] - mem[_5632 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6441 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) > 65535 / mem[_6441 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) > mem[_5632 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) < mem[_5632 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) - mem[_5632 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_5632 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) > 65535 / mem[_5632 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16 < 8:
                                                    if mem[_6441 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                        if mem[_6441 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6441 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6441 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) > 65535 / mem[_6441 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_5632 + 64] = 0
                                    mem[_5632] = _5541
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_5632 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_5632 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_5632 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_5632 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_5632 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_5632 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5632 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_5632 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _6288 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_6288] = 0
                                        mem[_6288 + 32] = 0
                                        mem[_6288 + 64] = 0
                                        mem[_6288 + 96] = 0
                                        _6299 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_6299 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6317 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_6317] == mem[_6317 + 12 len 20]
                                        _6342 = mem[_6317 + 32]
                                        _6343 = mem[_6317 + 64]
                                        _6344 = mem[_6317 + 96]
                                        _6355 = mem[_6317 + 128]
                                        require mem[_6317 + 128] == mem[_6317 + 158 len 2]
                                        require mem[_6317 + 160] == mem[_6317 + 190 len 2]
                                        require mem[_6317 + 224] == mem[_6317 + 240 len 16]
                                        mem[_6288 + 32] = mem[_6317 + 192]
                                        mem[_6288 + 96] = uint16(_6355)
                                        mem[_6299 + 64] = _6344
                                        mem[_6299 + 32] = _6343
                                        mem[_6299] = _6342
                                        _6449 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_6449 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _6299]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7372 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_7372 + 96] == mem[_7372 + 120 len 8]
                                            require mem[_7372 + 128] == mem[_7372 + 159 len 1]
                                            _7483 = mem[_6449 + 192]
                                            if mem[_6449 + 192] == -1:
                                                revert with 0, 17
                                            mem[_6449 + 192] = mem[_6449 + 192] + 1
                                            if _7483 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_6288 + 64] = 6
                                            mem[_6288] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6288
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5632 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5632 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16 < 8:
                                                    if mem[_6288 + 126 len 2] > mem[_5632 + 126 len 2]:
                                                        if mem[_6288 + 126 len 2] < mem[_5632 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6288 + 126 len 2] - mem[_5632 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6288 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6288 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) > mem[_5632 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) < mem[_5632 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) - mem[_5632 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_5632 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) > 65535 / mem[_5632 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16 < 8:
                                                    if mem[_6288 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                        if mem[_6288 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6288 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6288 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6288 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5632 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5632 + 64]) + 24 % 16) + 100) * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_6288 + 64] = 0
                                        mem[_6288] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _6288
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_5632 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_5632 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16 < 8:
                                                if mem[_6288 + 126 len 2] > mem[_5632 + 126 len 2]:
                                                    if mem[_6288 + 126 len 2] < mem[_5632 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_6288 + 126 len 2] - mem[_5632 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6288 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) > 65535 / mem[_6288 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) > mem[_5632 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) < mem[_5632 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) - mem[_5632 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5632 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) > 65535 / mem[_5632 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16 < 8:
                                                if mem[_6288 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                    if mem[_6288 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_6288 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6288 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) > 65535 / mem[_6288 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5632 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5632 + 64] % 16) + 100) * mem[_5632 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _5529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5529] = return_data.size
                        mem[_5529 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _5542 = mem[_5529 + 32]
                            require mem[_5529 + 64] == mem[_5529 + 80 len 16]
                            require mem[_5529 + 96] == mem[_5529 + 112 len 16]
                            require mem[_5529 + 128] == mem[_5529 + 156 len 4]
                            require mem[_5529 + 160] == mem[_5529 + 188 len 4]
                            require mem[_5529 + 192] == mem[_5529 + 220 len 4]
                            if mem[_5529 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5603 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_5603] == mem[_5603 + 30 len 2]
                                require mem[_5603 + 32] == mem[_5603 + 62 len 2]
                                if not mem[_5603 + 30 len 2]:
                                    _5633 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_5633] = 0
                                    mem[_5633 + 32] = 0
                                    mem[_5633 + 64] = 0
                                    mem[_5633 + 96] = 0
                                    _5645 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5645 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _5542
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5657 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_5657] == mem[_5657 + 12 len 20]
                                    _5673 = mem[_5657 + 32]
                                    _5674 = mem[_5657 + 64]
                                    _5675 = mem[_5657 + 96]
                                    _5677 = mem[_5657 + 128]
                                    require mem[_5657 + 128] == mem[_5657 + 158 len 2]
                                    require mem[_5657 + 160] == mem[_5657 + 190 len 2]
                                    require mem[_5657 + 224] == mem[_5657 + 240 len 16]
                                    mem[_5633 + 32] = mem[_5657 + 192]
                                    mem[_5633 + 96] = uint16(_5677)
                                    mem[_5645 + 64] = _5675
                                    mem[_5645 + 32] = _5674
                                    mem[_5645] = _5673
                                    _5731 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_5731 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _5645]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6235 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_6235 + 96] == mem[_6235 + 120 len 8]
                                        require mem[_6235 + 128] == mem[_6235 + 159 len 1]
                                        _6324 = mem[_5731 + 192]
                                        if mem[_5731 + 192] == -1:
                                            revert with 0, 17
                                        mem[_5731 + 192] = mem[_5731 + 192] + 1
                                        if _6324 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_5633 + 64] = 6
                                        mem[_5633] = _5542
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_5633 + 126 len 2] and 100 > 65535 / mem[_5633 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_5633 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_5633 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _6444 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_6444] = 0
                                            mem[_6444 + 32] = 0
                                            mem[_6444 + 64] = 0
                                            mem[_6444 + 96] = 0
                                            _6464 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_6464 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6496 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_6496] == mem[_6496 + 12 len 20]
                                            _6524 = mem[_6496 + 32]
                                            _6525 = mem[_6496 + 64]
                                            _6526 = mem[_6496 + 96]
                                            _6548 = mem[_6496 + 128]
                                            require mem[_6496 + 128] == mem[_6496 + 158 len 2]
                                            require mem[_6496 + 160] == mem[_6496 + 190 len 2]
                                            require mem[_6496 + 224] == mem[_6496 + 240 len 16]
                                            mem[_6444 + 32] = mem[_6496 + 192]
                                            mem[_6444 + 96] = uint16(_6548)
                                            mem[_6464 + 64] = _6526
                                            mem[_6464 + 32] = _6525
                                            mem[_6464] = _6524
                                            _6618 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_6618 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _6464]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7378 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_7378 + 96] == mem[_7378 + 120 len 8]
                                                require mem[_7378 + 128] == mem[_7378 + 159 len 1]
                                                _7486 = mem[_6618 + 192]
                                                if mem[_6618 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_6618 + 192] = mem[_6618 + 192] + 1
                                                if _7486 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_6444 + 64] = 6
                                                mem[_6444] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _6444
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_5633 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_5633 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16 < 8:
                                                        if mem[_6444 + 126 len 2] > mem[_5633 + 126 len 2]:
                                                            if mem[_6444 + 126 len 2] < mem[_5633 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_6444 + 126 len 2] - mem[_5633 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6444 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6444 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) > mem[_5633 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) < mem[_5633 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) - mem[_5633 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_5633 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) > 65535 / mem[_5633 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16 < 8:
                                                        if mem[_6444 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                            if mem[_6444 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_6444 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6444 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6444 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_6444 + 64] = 0
                                            mem[_6444] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6444
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5633 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5633 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16 < 8:
                                                    if mem[_6444 + 126 len 2] > mem[_5633 + 126 len 2]:
                                                        if mem[_6444 + 126 len 2] < mem[_5633 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6444 + 126 len 2] - mem[_5633 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6444 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) > 65535 / mem[_6444 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) > mem[_5633 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) < mem[_5633 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) - mem[_5633 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_5633 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) > 65535 / mem[_5633 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16 < 8:
                                                    if mem[_6444 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                        if mem[_6444 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6444 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6444 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) > 65535 / mem[_6444 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_5633 + 64] = 0
                                    mem[_5633] = _5542
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_5633 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_5633 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_5633 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_5633 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_5633 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_5633 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5633 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_5633 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _6291 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_6291] = 0
                                        mem[_6291 + 32] = 0
                                        mem[_6291 + 64] = 0
                                        mem[_6291 + 96] = 0
                                        _6300 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_6300 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6318 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_6318] == mem[_6318 + 12 len 20]
                                        _6345 = mem[_6318 + 32]
                                        _6346 = mem[_6318 + 64]
                                        _6347 = mem[_6318 + 96]
                                        _6356 = mem[_6318 + 128]
                                        require mem[_6318 + 128] == mem[_6318 + 158 len 2]
                                        require mem[_6318 + 160] == mem[_6318 + 190 len 2]
                                        require mem[_6318 + 224] == mem[_6318 + 240 len 16]
                                        mem[_6291 + 32] = mem[_6318 + 192]
                                        mem[_6291 + 96] = uint16(_6356)
                                        mem[_6300 + 64] = _6347
                                        mem[_6300 + 32] = _6346
                                        mem[_6300] = _6345
                                        _6450 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_6450 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _6300]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7376 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_7376 + 96] == mem[_7376 + 120 len 8]
                                            require mem[_7376 + 128] == mem[_7376 + 159 len 1]
                                            _7485 = mem[_6450 + 192]
                                            if mem[_6450 + 192] == -1:
                                                revert with 0, 17
                                            mem[_6450 + 192] = mem[_6450 + 192] + 1
                                            if _7485 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_6291 + 64] = 6
                                            mem[_6291] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6291
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5633 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5633 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16 < 8:
                                                    if mem[_6291 + 126 len 2] > mem[_5633 + 126 len 2]:
                                                        if mem[_6291 + 126 len 2] < mem[_5633 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6291 + 126 len 2] - mem[_5633 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6291 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6291 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) > mem[_5633 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) < mem[_5633 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) - mem[_5633 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_5633 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) > 65535 / mem[_5633 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16 < 8:
                                                    if mem[_6291 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                        if mem[_6291 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6291 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6291 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6291 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5633 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5633 + 64]) + 24 % 16) + 100) * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_6291 + 64] = 0
                                        mem[_6291] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _6291
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_5633 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_5633 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16 < 8:
                                                if mem[_6291 + 126 len 2] > mem[_5633 + 126 len 2]:
                                                    if mem[_6291 + 126 len 2] < mem[_5633 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_6291 + 126 len 2] - mem[_5633 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6291 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) > 65535 / mem[_6291 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) > mem[_5633 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) < mem[_5633 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) - mem[_5633 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5633 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) > 65535 / mem[_5633 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16 < 8:
                                                if mem[_6291 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                    if mem[_6291 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_6291 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6291 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) > 65535 / mem[_6291 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5633 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5633 + 64] % 16) + 100) * mem[_5633 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return 0
    mem[64] = (32 * ('cd', 36).length) + 384
    mem[(32 * ('cd', 36).length) + 256] = 0
    mem[(32 * ('cd', 36).length) + 288] = 0
    mem[var37002] = 0
    mem[var37002 + 32] = 0
    mem[var39002] = var39001
    if not var39003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            s = 0
            while s <= ('cd', 4).length:
                if s >= ('cd', 4).length:
                    revert with 0, 50
                _8289 = mem[64]
                mem[mem[64] + 36] = cd[((32 * s) + cd[4] + 36)]
                _8291 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_8291 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_8291 + 36 len 28]
                _8294 = mem[_8291]
                t = 0
                while t < _8294:
                    mem[t + _8289 + 68] = mem[_8291 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_8294) <= _8294:
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8294 + _8289 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _8996 = mem[128]
                            require mem[160] == mem[176 len 16]
                            require mem[192] == mem[208 len 16]
                            require mem[224] == mem[252 len 4]
                            require mem[256] == mem[284 len 4]
                            require mem[288] == mem[316 len 4]
                            if mem[128]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9058 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_9058] == mem[_9058 + 30 len 2]
                                require mem[_9058 + 32] == mem[_9058 + 62 len 2]
                                if not mem[_9058 + 30 len 2]:
                                    _9090 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9090] = 0
                                    mem[_9090 + 32] = 0
                                    mem[_9090 + 64] = 0
                                    mem[_9090 + 96] = 0
                                    _9098 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9098 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _8996
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9114 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_9114] == mem[_9114 + 12 len 20]
                                    _9120 = mem[_9114 + 32]
                                    _9121 = mem[_9114 + 64]
                                    _9122 = mem[_9114 + 96]
                                    _9128 = mem[_9114 + 128]
                                    require mem[_9114 + 128] == mem[_9114 + 158 len 2]
                                    require mem[_9114 + 160] == mem[_9114 + 190 len 2]
                                    require mem[_9114 + 224] == mem[_9114 + 240 len 16]
                                    mem[_9090 + 32] = mem[_9114 + 192]
                                    mem[_9090 + 96] = uint16(_9128)
                                    mem[_9098 + 64] = _9122
                                    mem[_9098 + 32] = _9121
                                    mem[_9098] = _9120
                                    _9180 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_9180 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _9098]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9689 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_9689 + 96] == mem[_9689 + 120 len 8]
                                        require mem[_9689 + 128] == mem[_9689 + 159 len 1]
                                        _9781 = mem[_9180 + 192]
                                        if mem[_9180 + 192] == -1:
                                            revert with 0, 17
                                        mem[_9180 + 192] = mem[_9180 + 192] + 1
                                        if _9781 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_9090 + 64] = 6
                                        mem[_9090] = _8996
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_9090 + 126 len 2] and 100 > 65535 / mem[_9090 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_9090 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_9090 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _9895 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_9895] = 0
                                            mem[_9895 + 32] = 0
                                            mem[_9895 + 64] = 0
                                            mem[_9895 + 96] = 0
                                            _9918 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_9918 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9944 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_9944] == mem[_9944 + 12 len 20]
                                            _9975 = mem[_9944 + 32]
                                            _9976 = mem[_9944 + 64]
                                            _9977 = mem[_9944 + 96]
                                            _9993 = mem[_9944 + 128]
                                            require mem[_9944 + 128] == mem[_9944 + 158 len 2]
                                            require mem[_9944 + 160] == mem[_9944 + 190 len 2]
                                            require mem[_9944 + 224] == mem[_9944 + 240 len 16]
                                            mem[_9895 + 32] = mem[_9944 + 192]
                                            mem[_9895 + 96] = uint16(_9993)
                                            mem[_9918 + 64] = _9977
                                            mem[_9918 + 32] = _9976
                                            mem[_9918] = _9975
                                            _10075 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_10075 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _9918]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10826 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_10826 + 96] == mem[_10826 + 120 len 8]
                                                require mem[_10826 + 128] == mem[_10826 + 159 len 1]
                                                _10940 = mem[_10075 + 192]
                                                if mem[_10075 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_10075 + 192] = mem[_10075 + 192] + 1
                                                if _10940 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_9895 + 64] = 6
                                                mem[_9895] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _9895
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_9090 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_9090 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16 < 8:
                                                        if mem[_9895 + 126 len 2] > mem[_9090 + 126 len 2]:
                                                            if mem[_9895 + 126 len 2] < mem[_9090 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_9895 + 126 len 2] - mem[_9090 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9895 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9895 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) > mem[_9090 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) < mem[_9090 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) - mem[_9090 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_9090 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) > 65535 / mem[_9090 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16 < 8:
                                                        if mem[_9895 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                            if mem[_9895 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_9895 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9895 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9895 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_9895 + 64] = 0
                                            mem[_9895] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9895
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9090 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9090 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16 < 8:
                                                    if mem[_9895 + 126 len 2] > mem[_9090 + 126 len 2]:
                                                        if mem[_9895 + 126 len 2] < mem[_9090 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9895 + 126 len 2] - mem[_9090 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9895 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) > 65535 / mem[_9895 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) > mem[_9090 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) < mem[_9090 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) - mem[_9090 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_9090 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) > 65535 / mem[_9090 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16 < 8:
                                                    if mem[_9895 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                        if mem[_9895 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9895 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9895 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) > 65535 / mem[_9895 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9895 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_9090 + 64] = 0
                                    mem[_9090] = _8996
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_9090 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_9090 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_9090 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_9090 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_9090 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_9090 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9090 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_9090 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _9742 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_9742] = 0
                                        mem[_9742 + 32] = 0
                                        mem[_9742 + 64] = 0
                                        mem[_9742 + 96] = 0
                                        _9757 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9757 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9775 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_9775] == mem[_9775 + 12 len 20]
                                        _9796 = mem[_9775 + 32]
                                        _9797 = mem[_9775 + 64]
                                        _9798 = mem[_9775 + 96]
                                        _9813 = mem[_9775 + 128]
                                        require mem[_9775 + 128] == mem[_9775 + 158 len 2]
                                        require mem[_9775 + 160] == mem[_9775 + 190 len 2]
                                        require mem[_9775 + 224] == mem[_9775 + 240 len 16]
                                        mem[_9742 + 32] = mem[_9775 + 192]
                                        mem[_9742 + 96] = uint16(_9813)
                                        mem[_9757 + 64] = _9798
                                        mem[_9757 + 32] = _9797
                                        mem[_9757] = _9796
                                        _9907 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_9907 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _9757]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10824 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_10824 + 96] == mem[_10824 + 120 len 8]
                                            require mem[_10824 + 128] == mem[_10824 + 159 len 1]
                                            _10939 = mem[_9907 + 192]
                                            if mem[_9907 + 192] == -1:
                                                revert with 0, 17
                                            mem[_9907 + 192] = mem[_9907 + 192] + 1
                                            if _10939 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_9742 + 64] = 6
                                            mem[_9742] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9742
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9090 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9090 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16 < 8:
                                                    if mem[_9742 + 126 len 2] > mem[_9090 + 126 len 2]:
                                                        if mem[_9742 + 126 len 2] < mem[_9090 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9742 + 126 len 2] - mem[_9090 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9742 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9742 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) > mem[_9090 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) < mem[_9090 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) - mem[_9090 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_9090 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) > 65535 / mem[_9090 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16 < 8:
                                                    if mem[_9742 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                        if mem[_9742 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9742 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9742 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9742 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9090 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9090 + 64]) + 24 % 16) + 100) * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_9742 + 64] = 0
                                        mem[_9742] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _9742
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_9090 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_9090 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16 < 8:
                                                if mem[_9742 + 126 len 2] > mem[_9090 + 126 len 2]:
                                                    if mem[_9742 + 126 len 2] < mem[_9090 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_9742 + 126 len 2] - mem[_9090 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9742 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) > 65535 / mem[_9742 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) > mem[_9090 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) < mem[_9090 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) - mem[_9090 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9090 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) > 65535 / mem[_9090 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16 < 8:
                                                if mem[_9742 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                    if mem[_9742 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_9742 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9742 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) > 65535 / mem[_9742 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) + 8) * mem[_9742 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9090 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9090 + 64] % 16) + 100) * mem[_9090 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _8987 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8987] = return_data.size
                        mem[_8987 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _8997 = mem[_8987 + 32]
                            require mem[_8987 + 64] == mem[_8987 + 80 len 16]
                            require mem[_8987 + 96] == mem[_8987 + 112 len 16]
                            require mem[_8987 + 128] == mem[_8987 + 156 len 4]
                            require mem[_8987 + 160] == mem[_8987 + 188 len 4]
                            require mem[_8987 + 192] == mem[_8987 + 220 len 4]
                            if mem[_8987 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9059 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_9059] == mem[_9059 + 30 len 2]
                                require mem[_9059 + 32] == mem[_9059 + 62 len 2]
                                if not mem[_9059 + 30 len 2]:
                                    _9091 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9091] = 0
                                    mem[_9091 + 32] = 0
                                    mem[_9091 + 64] = 0
                                    mem[_9091 + 96] = 0
                                    _9099 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9099 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _8997
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9115 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_9115] == mem[_9115 + 12 len 20]
                                    _9123 = mem[_9115 + 32]
                                    _9124 = mem[_9115 + 64]
                                    _9125 = mem[_9115 + 96]
                                    _9129 = mem[_9115 + 128]
                                    require mem[_9115 + 128] == mem[_9115 + 158 len 2]
                                    require mem[_9115 + 160] == mem[_9115 + 190 len 2]
                                    require mem[_9115 + 224] == mem[_9115 + 240 len 16]
                                    mem[_9091 + 32] = mem[_9115 + 192]
                                    mem[_9091 + 96] = uint16(_9129)
                                    mem[_9099 + 64] = _9125
                                    mem[_9099 + 32] = _9124
                                    mem[_9099] = _9123
                                    _9181 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_9181 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _9099]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9691 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_9691 + 96] == mem[_9691 + 120 len 8]
                                        require mem[_9691 + 128] == mem[_9691 + 159 len 1]
                                        _9782 = mem[_9181 + 192]
                                        if mem[_9181 + 192] == -1:
                                            revert with 0, 17
                                        mem[_9181 + 192] = mem[_9181 + 192] + 1
                                        if _9782 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_9091 + 64] = 6
                                        mem[_9091] = _8997
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_9091 + 126 len 2] and 100 > 65535 / mem[_9091 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_9091 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_9091 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _9898 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_9898] = 0
                                            mem[_9898 + 32] = 0
                                            mem[_9898 + 64] = 0
                                            mem[_9898 + 96] = 0
                                            _9920 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_9920 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9948 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_9948] == mem[_9948 + 12 len 20]
                                            _9978 = mem[_9948 + 32]
                                            _9979 = mem[_9948 + 64]
                                            _9980 = mem[_9948 + 96]
                                            _9998 = mem[_9948 + 128]
                                            require mem[_9948 + 128] == mem[_9948 + 158 len 2]
                                            require mem[_9948 + 160] == mem[_9948 + 190 len 2]
                                            require mem[_9948 + 224] == mem[_9948 + 240 len 16]
                                            mem[_9898 + 32] = mem[_9948 + 192]
                                            mem[_9898 + 96] = uint16(_9998)
                                            mem[_9920 + 64] = _9980
                                            mem[_9920 + 32] = _9979
                                            mem[_9920] = _9978
                                            _10076 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_10076 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _9920]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10830 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_10830 + 96] == mem[_10830 + 120 len 8]
                                                require mem[_10830 + 128] == mem[_10830 + 159 len 1]
                                                _10942 = mem[_10076 + 192]
                                                if mem[_10076 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_10076 + 192] = mem[_10076 + 192] + 1
                                                if _10942 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_9898 + 64] = 6
                                                mem[_9898] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _9898
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_9091 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_9091 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16 < 8:
                                                        if mem[_9898 + 126 len 2] > mem[_9091 + 126 len 2]:
                                                            if mem[_9898 + 126 len 2] < mem[_9091 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_9898 + 126 len 2] - mem[_9091 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9898 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9898 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) > mem[_9091 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) < mem[_9091 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) - mem[_9091 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_9091 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) > 65535 / mem[_9091 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16 < 8:
                                                        if mem[_9898 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                            if mem[_9898 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_9898 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9898 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9898 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_9898 + 64] = 0
                                            mem[_9898] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9898
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9091 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9091 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16 < 8:
                                                    if mem[_9898 + 126 len 2] > mem[_9091 + 126 len 2]:
                                                        if mem[_9898 + 126 len 2] < mem[_9091 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9898 + 126 len 2] - mem[_9091 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9898 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) > 65535 / mem[_9898 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) > mem[_9091 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) < mem[_9091 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) - mem[_9091 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_9091 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) > 65535 / mem[_9091 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16 < 8:
                                                    if mem[_9898 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                        if mem[_9898 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9898 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9898 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) > 65535 / mem[_9898 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9898 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_9091 + 64] = 0
                                    mem[_9091] = _8997
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_9091 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_9091 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_9091 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_9091 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_9091 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_9091 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9091 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_9091 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _9745 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_9745] = 0
                                        mem[_9745 + 32] = 0
                                        mem[_9745 + 64] = 0
                                        mem[_9745 + 96] = 0
                                        _9758 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9758 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9776 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_9776] == mem[_9776 + 12 len 20]
                                        _9799 = mem[_9776 + 32]
                                        _9800 = mem[_9776 + 64]
                                        _9801 = mem[_9776 + 96]
                                        _9814 = mem[_9776 + 128]
                                        require mem[_9776 + 128] == mem[_9776 + 158 len 2]
                                        require mem[_9776 + 160] == mem[_9776 + 190 len 2]
                                        require mem[_9776 + 224] == mem[_9776 + 240 len 16]
                                        mem[_9745 + 32] = mem[_9776 + 192]
                                        mem[_9745 + 96] = uint16(_9814)
                                        mem[_9758 + 64] = _9801
                                        mem[_9758 + 32] = _9800
                                        mem[_9758] = _9799
                                        _9908 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_9908 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _9758]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10828 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_10828 + 96] == mem[_10828 + 120 len 8]
                                            require mem[_10828 + 128] == mem[_10828 + 159 len 1]
                                            _10941 = mem[_9908 + 192]
                                            if mem[_9908 + 192] == -1:
                                                revert with 0, 17
                                            mem[_9908 + 192] = mem[_9908 + 192] + 1
                                            if _10941 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_9745 + 64] = 6
                                            mem[_9745] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9745
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9091 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9091 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16 < 8:
                                                    if mem[_9745 + 126 len 2] > mem[_9091 + 126 len 2]:
                                                        if mem[_9745 + 126 len 2] < mem[_9091 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9745 + 126 len 2] - mem[_9091 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9745 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9745 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) > mem[_9091 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) < mem[_9091 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) - mem[_9091 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_9091 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) > 65535 / mem[_9091 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16 < 8:
                                                    if mem[_9745 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                        if mem[_9745 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9745 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9745 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9745 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9091 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9091 + 64]) + 24 % 16) + 100) * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_9745 + 64] = 0
                                        mem[_9745] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _9745
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_9091 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_9091 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16 < 8:
                                                if mem[_9745 + 126 len 2] > mem[_9091 + 126 len 2]:
                                                    if mem[_9745 + 126 len 2] < mem[_9091 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_9745 + 126 len 2] - mem[_9091 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9745 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) > 65535 / mem[_9745 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) > mem[_9091 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) < mem[_9091 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) - mem[_9091 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9091 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) > 65535 / mem[_9091 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16 < 8:
                                                if mem[_9745 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                    if mem[_9745 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_9745 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9745 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) > 65535 / mem[_9745 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) + 8) * mem[_9745 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9091 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9091 + 64] % 16) + 100) * mem[_9091 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                else:
                    mem[_8289 + _8294 + 68] = 0
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8294 + _8289 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _9001 = mem[128]
                            require mem[160] == mem[176 len 16]
                            require mem[192] == mem[208 len 16]
                            require mem[224] == mem[252 len 4]
                            require mem[256] == mem[284 len 4]
                            require mem[288] == mem[316 len 4]
                            if mem[128]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9062 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_9062] == mem[_9062 + 30 len 2]
                                require mem[_9062 + 32] == mem[_9062 + 62 len 2]
                                if not mem[_9062 + 30 len 2]:
                                    _9092 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9092] = 0
                                    mem[_9092 + 32] = 0
                                    mem[_9092 + 64] = 0
                                    mem[_9092 + 96] = 0
                                    _9104 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9104 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _9001
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9116 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_9116] == mem[_9116 + 12 len 20]
                                    _9130 = mem[_9116 + 32]
                                    _9131 = mem[_9116 + 64]
                                    _9132 = mem[_9116 + 96]
                                    _9136 = mem[_9116 + 128]
                                    require mem[_9116 + 128] == mem[_9116 + 158 len 2]
                                    require mem[_9116 + 160] == mem[_9116 + 190 len 2]
                                    require mem[_9116 + 224] == mem[_9116 + 240 len 16]
                                    mem[_9092 + 32] = mem[_9116 + 192]
                                    mem[_9092 + 96] = uint16(_9136)
                                    mem[_9104 + 64] = _9132
                                    mem[_9104 + 32] = _9131
                                    mem[_9104] = _9130
                                    _9190 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_9190 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _9104]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9693 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_9693 + 96] == mem[_9693 + 120 len 8]
                                        require mem[_9693 + 128] == mem[_9693 + 159 len 1]
                                        _9783 = mem[_9190 + 192]
                                        if mem[_9190 + 192] == -1:
                                            revert with 0, 17
                                        mem[_9190 + 192] = mem[_9190 + 192] + 1
                                        if _9783 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_9092 + 64] = 6
                                        mem[_9092] = _9001
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_9092 + 126 len 2] and 100 > 65535 / mem[_9092 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_9092 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_9092 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _9901 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_9901] = 0
                                            mem[_9901 + 32] = 0
                                            mem[_9901 + 64] = 0
                                            mem[_9901 + 96] = 0
                                            _9922 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_9922 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9952 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_9952] == mem[_9952 + 12 len 20]
                                            _9981 = mem[_9952 + 32]
                                            _9982 = mem[_9952 + 64]
                                            _9983 = mem[_9952 + 96]
                                            _10003 = mem[_9952 + 128]
                                            require mem[_9952 + 128] == mem[_9952 + 158 len 2]
                                            require mem[_9952 + 160] == mem[_9952 + 190 len 2]
                                            require mem[_9952 + 224] == mem[_9952 + 240 len 16]
                                            mem[_9901 + 32] = mem[_9952 + 192]
                                            mem[_9901 + 96] = uint16(_10003)
                                            mem[_9922 + 64] = _9983
                                            mem[_9922 + 32] = _9982
                                            mem[_9922] = _9981
                                            _10077 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_10077 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _9922]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10834 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_10834 + 96] == mem[_10834 + 120 len 8]
                                                require mem[_10834 + 128] == mem[_10834 + 159 len 1]
                                                _10944 = mem[_10077 + 192]
                                                if mem[_10077 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_10077 + 192] = mem[_10077 + 192] + 1
                                                if _10944 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_9901 + 64] = 6
                                                mem[_9901] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _9901
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_9092 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_9092 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16 < 8:
                                                        if mem[_9901 + 126 len 2] > mem[_9092 + 126 len 2]:
                                                            if mem[_9901 + 126 len 2] < mem[_9092 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_9901 + 126 len 2] - mem[_9092 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9901 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9901 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) > mem[_9092 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) < mem[_9092 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) - mem[_9092 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_9092 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) > 65535 / mem[_9092 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16 < 8:
                                                        if mem[_9901 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                            if mem[_9901 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_9901 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9901 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9901 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_9901 + 64] = 0
                                            mem[_9901] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9901
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9092 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9092 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16 < 8:
                                                    if mem[_9901 + 126 len 2] > mem[_9092 + 126 len 2]:
                                                        if mem[_9901 + 126 len 2] < mem[_9092 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9901 + 126 len 2] - mem[_9092 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9901 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) > 65535 / mem[_9901 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) > mem[_9092 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) < mem[_9092 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) - mem[_9092 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_9092 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) > 65535 / mem[_9092 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16 < 8:
                                                    if mem[_9901 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                        if mem[_9901 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9901 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9901 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) > 65535 / mem[_9901 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_9092 + 64] = 0
                                    mem[_9092] = _9001
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_9092 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_9092 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_9092 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_9092 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_9092 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_9092 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9092 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_9092 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _9748 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_9748] = 0
                                        mem[_9748 + 32] = 0
                                        mem[_9748 + 64] = 0
                                        mem[_9748 + 96] = 0
                                        _9759 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9759 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9777 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_9777] == mem[_9777 + 12 len 20]
                                        _9802 = mem[_9777 + 32]
                                        _9803 = mem[_9777 + 64]
                                        _9804 = mem[_9777 + 96]
                                        _9815 = mem[_9777 + 128]
                                        require mem[_9777 + 128] == mem[_9777 + 158 len 2]
                                        require mem[_9777 + 160] == mem[_9777 + 190 len 2]
                                        require mem[_9777 + 224] == mem[_9777 + 240 len 16]
                                        mem[_9748 + 32] = mem[_9777 + 192]
                                        mem[_9748 + 96] = uint16(_9815)
                                        mem[_9759 + 64] = _9804
                                        mem[_9759 + 32] = _9803
                                        mem[_9759] = _9802
                                        _9909 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_9909 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _9759]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10832 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_10832 + 96] == mem[_10832 + 120 len 8]
                                            require mem[_10832 + 128] == mem[_10832 + 159 len 1]
                                            _10943 = mem[_9909 + 192]
                                            if mem[_9909 + 192] == -1:
                                                revert with 0, 17
                                            mem[_9909 + 192] = mem[_9909 + 192] + 1
                                            if _10943 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_9748 + 64] = 6
                                            mem[_9748] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9748
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9092 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9092 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16 < 8:
                                                    if mem[_9748 + 126 len 2] > mem[_9092 + 126 len 2]:
                                                        if mem[_9748 + 126 len 2] < mem[_9092 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9748 + 126 len 2] - mem[_9092 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9748 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9748 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) > mem[_9092 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) < mem[_9092 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) - mem[_9092 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_9092 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) > 65535 / mem[_9092 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16 < 8:
                                                    if mem[_9748 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                        if mem[_9748 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9748 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9748 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9748 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9092 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9092 + 64]) + 24 % 16) + 100) * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_9748 + 64] = 0
                                        mem[_9748] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _9748
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_9092 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_9092 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16 < 8:
                                                if mem[_9748 + 126 len 2] > mem[_9092 + 126 len 2]:
                                                    if mem[_9748 + 126 len 2] < mem[_9092 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_9748 + 126 len 2] - mem[_9092 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9748 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) > 65535 / mem[_9748 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) > mem[_9092 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) < mem[_9092 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) - mem[_9092 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9092 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) > 65535 / mem[_9092 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16 < 8:
                                                if mem[_9748 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                    if mem[_9748 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_9748 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9748 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) > 65535 / mem[_9748 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9092 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9092 + 64] % 16) + 100) * mem[_9092 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _8989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8989] = return_data.size
                        mem[_8989 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _9002 = mem[_8989 + 32]
                            require mem[_8989 + 64] == mem[_8989 + 80 len 16]
                            require mem[_8989 + 96] == mem[_8989 + 112 len 16]
                            require mem[_8989 + 128] == mem[_8989 + 156 len 4]
                            require mem[_8989 + 160] == mem[_8989 + 188 len 4]
                            require mem[_8989 + 192] == mem[_8989 + 220 len 4]
                            if mem[_8989 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9063 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_9063] == mem[_9063 + 30 len 2]
                                require mem[_9063 + 32] == mem[_9063 + 62 len 2]
                                if not mem[_9063 + 30 len 2]:
                                    _9093 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9093] = 0
                                    mem[_9093 + 32] = 0
                                    mem[_9093 + 64] = 0
                                    mem[_9093 + 96] = 0
                                    _9105 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9105 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _9002
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9117 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_9117] == mem[_9117 + 12 len 20]
                                    _9133 = mem[_9117 + 32]
                                    _9134 = mem[_9117 + 64]
                                    _9135 = mem[_9117 + 96]
                                    _9137 = mem[_9117 + 128]
                                    require mem[_9117 + 128] == mem[_9117 + 158 len 2]
                                    require mem[_9117 + 160] == mem[_9117 + 190 len 2]
                                    require mem[_9117 + 224] == mem[_9117 + 240 len 16]
                                    mem[_9093 + 32] = mem[_9117 + 192]
                                    mem[_9093 + 96] = uint16(_9137)
                                    mem[_9105 + 64] = _9135
                                    mem[_9105 + 32] = _9134
                                    mem[_9105] = _9133
                                    _9191 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_9191 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _9105]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9695 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_9695 + 96] == mem[_9695 + 120 len 8]
                                        require mem[_9695 + 128] == mem[_9695 + 159 len 1]
                                        _9784 = mem[_9191 + 192]
                                        if mem[_9191 + 192] == -1:
                                            revert with 0, 17
                                        mem[_9191 + 192] = mem[_9191 + 192] + 1
                                        if _9784 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_9093 + 64] = 6
                                        mem[_9093] = _9002
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_9093 + 126 len 2] and 100 > 65535 / mem[_9093 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_9093 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_9093 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _9904 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_9904] = 0
                                            mem[_9904 + 32] = 0
                                            mem[_9904 + 64] = 0
                                            mem[_9904 + 96] = 0
                                            _9924 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_9924 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9956 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_9956] == mem[_9956 + 12 len 20]
                                            _9984 = mem[_9956 + 32]
                                            _9985 = mem[_9956 + 64]
                                            _9986 = mem[_9956 + 96]
                                            _10008 = mem[_9956 + 128]
                                            require mem[_9956 + 128] == mem[_9956 + 158 len 2]
                                            require mem[_9956 + 160] == mem[_9956 + 190 len 2]
                                            require mem[_9956 + 224] == mem[_9956 + 240 len 16]
                                            mem[_9904 + 32] = mem[_9956 + 192]
                                            mem[_9904 + 96] = uint16(_10008)
                                            mem[_9924 + 64] = _9986
                                            mem[_9924 + 32] = _9985
                                            mem[_9924] = _9984
                                            _10078 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_10078 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _9924]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10838 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_10838 + 96] == mem[_10838 + 120 len 8]
                                                require mem[_10838 + 128] == mem[_10838 + 159 len 1]
                                                _10946 = mem[_10078 + 192]
                                                if mem[_10078 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_10078 + 192] = mem[_10078 + 192] + 1
                                                if _10946 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_9904 + 64] = 6
                                                mem[_9904] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _9904
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_9093 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_9093 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16 < 8:
                                                        if mem[_9904 + 126 len 2] > mem[_9093 + 126 len 2]:
                                                            if mem[_9904 + 126 len 2] < mem[_9093 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_9904 + 126 len 2] - mem[_9093 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9904 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9904 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) > mem[_9093 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) < mem[_9093 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) - mem[_9093 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_9093 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) > 65535 / mem[_9093 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16 < 8:
                                                        if mem[_9904 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                            if mem[_9904 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_9904 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9904 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9904 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_9904 + 64] = 0
                                            mem[_9904] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9904
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9093 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9093 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16 < 8:
                                                    if mem[_9904 + 126 len 2] > mem[_9093 + 126 len 2]:
                                                        if mem[_9904 + 126 len 2] < mem[_9093 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9904 + 126 len 2] - mem[_9093 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9904 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) > 65535 / mem[_9904 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) > mem[_9093 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) < mem[_9093 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) - mem[_9093 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_9093 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) > 65535 / mem[_9093 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16 < 8:
                                                    if mem[_9904 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                        if mem[_9904 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9904 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9904 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) > 65535 / mem[_9904 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_9093 + 64] = 0
                                    mem[_9093] = _9002
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_9093 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_9093 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_9093 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_9093 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_9093 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_9093 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9093 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_9093 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _9751 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_9751] = 0
                                        mem[_9751 + 32] = 0
                                        mem[_9751 + 64] = 0
                                        mem[_9751 + 96] = 0
                                        _9760 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9760 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9778 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_9778] == mem[_9778 + 12 len 20]
                                        _9805 = mem[_9778 + 32]
                                        _9806 = mem[_9778 + 64]
                                        _9807 = mem[_9778 + 96]
                                        _9816 = mem[_9778 + 128]
                                        require mem[_9778 + 128] == mem[_9778 + 158 len 2]
                                        require mem[_9778 + 160] == mem[_9778 + 190 len 2]
                                        require mem[_9778 + 224] == mem[_9778 + 240 len 16]
                                        mem[_9751 + 32] = mem[_9778 + 192]
                                        mem[_9751 + 96] = uint16(_9816)
                                        mem[_9760 + 64] = _9807
                                        mem[_9760 + 32] = _9806
                                        mem[_9760] = _9805
                                        _9910 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_9910 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _9760]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10836 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_10836 + 96] == mem[_10836 + 120 len 8]
                                            require mem[_10836 + 128] == mem[_10836 + 159 len 1]
                                            _10945 = mem[_9910 + 192]
                                            if mem[_9910 + 192] == -1:
                                                revert with 0, 17
                                            mem[_9910 + 192] = mem[_9910 + 192] + 1
                                            if _10945 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_9751 + 64] = 6
                                            mem[_9751] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9751
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9093 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9093 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16 < 8:
                                                    if mem[_9751 + 126 len 2] > mem[_9093 + 126 len 2]:
                                                        if mem[_9751 + 126 len 2] < mem[_9093 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9751 + 126 len 2] - mem[_9093 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9751 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9751 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) > mem[_9093 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) < mem[_9093 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) - mem[_9093 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_9093 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) > 65535 / mem[_9093 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16 < 8:
                                                    if mem[_9751 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                        if mem[_9751 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9751 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9751 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9751 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9093 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9093 + 64]) + 24 % 16) + 100) * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_9751 + 64] = 0
                                        mem[_9751] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _9751
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_9093 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_9093 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16 < 8:
                                                if mem[_9751 + 126 len 2] > mem[_9093 + 126 len 2]:
                                                    if mem[_9751 + 126 len 2] < mem[_9093 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_9751 + 126 len 2] - mem[_9093 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9751 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) > 65535 / mem[_9751 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) > mem[_9093 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) < mem[_9093 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) - mem[_9093 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9093 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) > 65535 / mem[_9093 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16 < 8:
                                                if mem[_9751 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                    if mem[_9751 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_9751 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9751 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) > 65535 / mem[_9751 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9093 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9093 + 64] % 16) + 100) * mem[_9093 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return 0
    mem[64] = (32 * ('cd', 36).length) + 512
    mem[(32 * ('cd', 36).length) + 384] = 0
    mem[(32 * ('cd', 36).length) + 416] = 0
    mem[var45002] = 0
    mem[var45002 + 32] = 0
    mem[var47002] = var47001
    if not var47003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            s = 0
            while s <= ('cd', 4).length:
                if s >= ('cd', 4).length:
                    revert with 0, 50
                _11749 = mem[64]
                mem[mem[64] + 36] = cd[((32 * s) + cd[4] + 36)]
                _11751 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_11751 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_11751 + 36 len 28]
                _11754 = mem[_11751]
                t = 0
                while t < _11754:
                    mem[t + _11749 + 68] = mem[_11751 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_11754) <= _11754:
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _11754 + _11749 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _12456 = mem[128]
                            require mem[160] == mem[176 len 16]
                            require mem[192] == mem[208 len 16]
                            require mem[224] == mem[252 len 4]
                            require mem[256] == mem[284 len 4]
                            require mem[288] == mem[316 len 4]
                            if mem[128]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12518 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_12518] == mem[_12518 + 30 len 2]
                                require mem[_12518 + 32] == mem[_12518 + 62 len 2]
                                if not mem[_12518 + 30 len 2]:
                                    _12550 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_12550] = 0
                                    mem[_12550 + 32] = 0
                                    mem[_12550 + 64] = 0
                                    mem[_12550 + 96] = 0
                                    _12558 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_12558 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _12456
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12574 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_12574] == mem[_12574 + 12 len 20]
                                    _12580 = mem[_12574 + 32]
                                    _12581 = mem[_12574 + 64]
                                    _12582 = mem[_12574 + 96]
                                    _12588 = mem[_12574 + 128]
                                    require mem[_12574 + 128] == mem[_12574 + 158 len 2]
                                    require mem[_12574 + 160] == mem[_12574 + 190 len 2]
                                    require mem[_12574 + 224] == mem[_12574 + 240 len 16]
                                    mem[_12550 + 32] = mem[_12574 + 192]
                                    mem[_12550 + 96] = uint16(_12588)
                                    mem[_12558 + 64] = _12582
                                    mem[_12558 + 32] = _12581
                                    mem[_12558] = _12580
                                    _12640 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_12640 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _12558]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13149 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_13149 + 96] == mem[_13149 + 120 len 8]
                                        require mem[_13149 + 128] == mem[_13149 + 159 len 1]
                                        _13241 = mem[_12640 + 192]
                                        if mem[_12640 + 192] == -1:
                                            revert with 0, 17
                                        mem[_12640 + 192] = mem[_12640 + 192] + 1
                                        if _13241 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_12550 + 64] = 6
                                        mem[_12550] = _12456
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_12550 + 126 len 2] and 100 > 65535 / mem[_12550 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_12550 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_12550 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _13355 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_13355] = 0
                                            mem[_13355 + 32] = 0
                                            mem[_13355 + 64] = 0
                                            mem[_13355 + 96] = 0
                                            _13378 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_13378 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13404 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_13404] == mem[_13404 + 12 len 20]
                                            _13435 = mem[_13404 + 32]
                                            _13436 = mem[_13404 + 64]
                                            _13437 = mem[_13404 + 96]
                                            _13453 = mem[_13404 + 128]
                                            require mem[_13404 + 128] == mem[_13404 + 158 len 2]
                                            require mem[_13404 + 160] == mem[_13404 + 190 len 2]
                                            require mem[_13404 + 224] == mem[_13404 + 240 len 16]
                                            mem[_13355 + 32] = mem[_13404 + 192]
                                            mem[_13355 + 96] = uint16(_13453)
                                            mem[_13378 + 64] = _13437
                                            mem[_13378 + 32] = _13436
                                            mem[_13378] = _13435
                                            _13535 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_13535 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _13378]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _14286 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_14286 + 96] == mem[_14286 + 120 len 8]
                                                require mem[_14286 + 128] == mem[_14286 + 159 len 1]
                                                _14400 = mem[_13535 + 192]
                                                if mem[_13535 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_13535 + 192] = mem[_13535 + 192] + 1
                                                if _14400 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_13355 + 64] = 6
                                                mem[_13355] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _13355
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_12550 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_12550 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16 < 8:
                                                        if mem[_13355 + 126 len 2] > mem[_12550 + 126 len 2]:
                                                            if mem[_13355 + 126 len 2] < mem[_12550 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_13355 + 126 len 2] - mem[_12550 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13355 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13355 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) > mem[_12550 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) < mem[_12550 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) - mem[_12550 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_12550 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) > 65535 / mem[_12550 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16 < 8:
                                                        if mem[_13355 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                            if mem[_13355 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_13355 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13355 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13355 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_13355 + 64] = 0
                                            mem[_13355] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13355
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12550 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12550 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16 < 8:
                                                    if mem[_13355 + 126 len 2] > mem[_12550 + 126 len 2]:
                                                        if mem[_13355 + 126 len 2] < mem[_12550 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13355 + 126 len 2] - mem[_12550 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13355 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) > 65535 / mem[_13355 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) > mem[_12550 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) < mem[_12550 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) - mem[_12550 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_12550 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) > 65535 / mem[_12550 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16 < 8:
                                                    if mem[_13355 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                        if mem[_13355 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13355 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13355 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) > 65535 / mem[_13355 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13355 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_12550 + 64] = 0
                                    mem[_12550] = _12456
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_12550 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_12550 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_12550 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_12550 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_12550 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_12550 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12550 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_12550 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _13202 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_13202] = 0
                                        mem[_13202 + 32] = 0
                                        mem[_13202 + 64] = 0
                                        mem[_13202 + 96] = 0
                                        _13217 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13217 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13235 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_13235] == mem[_13235 + 12 len 20]
                                        _13256 = mem[_13235 + 32]
                                        _13257 = mem[_13235 + 64]
                                        _13258 = mem[_13235 + 96]
                                        _13273 = mem[_13235 + 128]
                                        require mem[_13235 + 128] == mem[_13235 + 158 len 2]
                                        require mem[_13235 + 160] == mem[_13235 + 190 len 2]
                                        require mem[_13235 + 224] == mem[_13235 + 240 len 16]
                                        mem[_13202 + 32] = mem[_13235 + 192]
                                        mem[_13202 + 96] = uint16(_13273)
                                        mem[_13217 + 64] = _13258
                                        mem[_13217 + 32] = _13257
                                        mem[_13217] = _13256
                                        _13367 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_13367 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _13217]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _14284 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_14284 + 96] == mem[_14284 + 120 len 8]
                                            require mem[_14284 + 128] == mem[_14284 + 159 len 1]
                                            _14399 = mem[_13367 + 192]
                                            if mem[_13367 + 192] == -1:
                                                revert with 0, 17
                                            mem[_13367 + 192] = mem[_13367 + 192] + 1
                                            if _14399 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_13202 + 64] = 6
                                            mem[_13202] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13202
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12550 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12550 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16 < 8:
                                                    if mem[_13202 + 126 len 2] > mem[_12550 + 126 len 2]:
                                                        if mem[_13202 + 126 len 2] < mem[_12550 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13202 + 126 len 2] - mem[_12550 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13202 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13202 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) > mem[_12550 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) < mem[_12550 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) - mem[_12550 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_12550 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) > 65535 / mem[_12550 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16 < 8:
                                                    if mem[_13202 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                        if mem[_13202 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13202 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13202 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13202 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12550 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12550 + 64]) + 24 % 16) + 100) * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_13202 + 64] = 0
                                        mem[_13202] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _13202
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_12550 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_12550 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16 < 8:
                                                if mem[_13202 + 126 len 2] > mem[_12550 + 126 len 2]:
                                                    if mem[_13202 + 126 len 2] < mem[_12550 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_13202 + 126 len 2] - mem[_12550 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13202 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) > 65535 / mem[_13202 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) > mem[_12550 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) < mem[_12550 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) - mem[_12550 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12550 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) > 65535 / mem[_12550 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16 < 8:
                                                if mem[_13202 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                    if mem[_13202 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_13202 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13202 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) > 65535 / mem[_13202 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) + 8) * mem[_13202 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12550 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12550 + 64] % 16) + 100) * mem[_12550 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _12447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12447] = return_data.size
                        mem[_12447 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _12457 = mem[_12447 + 32]
                            require mem[_12447 + 64] == mem[_12447 + 80 len 16]
                            require mem[_12447 + 96] == mem[_12447 + 112 len 16]
                            require mem[_12447 + 128] == mem[_12447 + 156 len 4]
                            require mem[_12447 + 160] == mem[_12447 + 188 len 4]
                            require mem[_12447 + 192] == mem[_12447 + 220 len 4]
                            if mem[_12447 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12519 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_12519] == mem[_12519 + 30 len 2]
                                require mem[_12519 + 32] == mem[_12519 + 62 len 2]
                                if not mem[_12519 + 30 len 2]:
                                    _12551 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_12551] = 0
                                    mem[_12551 + 32] = 0
                                    mem[_12551 + 64] = 0
                                    mem[_12551 + 96] = 0
                                    _12559 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_12559 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _12457
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12575 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_12575] == mem[_12575 + 12 len 20]
                                    _12583 = mem[_12575 + 32]
                                    _12584 = mem[_12575 + 64]
                                    _12585 = mem[_12575 + 96]
                                    _12589 = mem[_12575 + 128]
                                    require mem[_12575 + 128] == mem[_12575 + 158 len 2]
                                    require mem[_12575 + 160] == mem[_12575 + 190 len 2]
                                    require mem[_12575 + 224] == mem[_12575 + 240 len 16]
                                    mem[_12551 + 32] = mem[_12575 + 192]
                                    mem[_12551 + 96] = uint16(_12589)
                                    mem[_12559 + 64] = _12585
                                    mem[_12559 + 32] = _12584
                                    mem[_12559] = _12583
                                    _12641 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_12641 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _12559]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13151 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_13151 + 96] == mem[_13151 + 120 len 8]
                                        require mem[_13151 + 128] == mem[_13151 + 159 len 1]
                                        _13242 = mem[_12641 + 192]
                                        if mem[_12641 + 192] == -1:
                                            revert with 0, 17
                                        mem[_12641 + 192] = mem[_12641 + 192] + 1
                                        if _13242 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_12551 + 64] = 6
                                        mem[_12551] = _12457
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_12551 + 126 len 2] and 100 > 65535 / mem[_12551 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_12551 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_12551 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _13358 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_13358] = 0
                                            mem[_13358 + 32] = 0
                                            mem[_13358 + 64] = 0
                                            mem[_13358 + 96] = 0
                                            _13380 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_13380 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13408 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_13408] == mem[_13408 + 12 len 20]
                                            _13438 = mem[_13408 + 32]
                                            _13439 = mem[_13408 + 64]
                                            _13440 = mem[_13408 + 96]
                                            _13458 = mem[_13408 + 128]
                                            require mem[_13408 + 128] == mem[_13408 + 158 len 2]
                                            require mem[_13408 + 160] == mem[_13408 + 190 len 2]
                                            require mem[_13408 + 224] == mem[_13408 + 240 len 16]
                                            mem[_13358 + 32] = mem[_13408 + 192]
                                            mem[_13358 + 96] = uint16(_13458)
                                            mem[_13380 + 64] = _13440
                                            mem[_13380 + 32] = _13439
                                            mem[_13380] = _13438
                                            _13536 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_13536 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _13380]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _14290 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_14290 + 96] == mem[_14290 + 120 len 8]
                                                require mem[_14290 + 128] == mem[_14290 + 159 len 1]
                                                _14402 = mem[_13536 + 192]
                                                if mem[_13536 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_13536 + 192] = mem[_13536 + 192] + 1
                                                if _14402 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_13358 + 64] = 6
                                                mem[_13358] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _13358
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_12551 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_12551 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16 < 8:
                                                        if mem[_13358 + 126 len 2] > mem[_12551 + 126 len 2]:
                                                            if mem[_13358 + 126 len 2] < mem[_12551 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_13358 + 126 len 2] - mem[_12551 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13358 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13358 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) > mem[_12551 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) < mem[_12551 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) - mem[_12551 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_12551 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) > 65535 / mem[_12551 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16 < 8:
                                                        if mem[_13358 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                            if mem[_13358 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_13358 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13358 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13358 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_13358 + 64] = 0
                                            mem[_13358] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13358
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12551 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12551 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16 < 8:
                                                    if mem[_13358 + 126 len 2] > mem[_12551 + 126 len 2]:
                                                        if mem[_13358 + 126 len 2] < mem[_12551 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13358 + 126 len 2] - mem[_12551 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13358 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) > 65535 / mem[_13358 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) > mem[_12551 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) < mem[_12551 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) - mem[_12551 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_12551 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) > 65535 / mem[_12551 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16 < 8:
                                                    if mem[_13358 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                        if mem[_13358 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13358 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13358 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) > 65535 / mem[_13358 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13358 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_12551 + 64] = 0
                                    mem[_12551] = _12457
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_12551 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_12551 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_12551 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_12551 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_12551 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_12551 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12551 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_12551 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _13205 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_13205] = 0
                                        mem[_13205 + 32] = 0
                                        mem[_13205 + 64] = 0
                                        mem[_13205 + 96] = 0
                                        _13218 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13218 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13236 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_13236] == mem[_13236 + 12 len 20]
                                        _13259 = mem[_13236 + 32]
                                        _13260 = mem[_13236 + 64]
                                        _13261 = mem[_13236 + 96]
                                        _13274 = mem[_13236 + 128]
                                        require mem[_13236 + 128] == mem[_13236 + 158 len 2]
                                        require mem[_13236 + 160] == mem[_13236 + 190 len 2]
                                        require mem[_13236 + 224] == mem[_13236 + 240 len 16]
                                        mem[_13205 + 32] = mem[_13236 + 192]
                                        mem[_13205 + 96] = uint16(_13274)
                                        mem[_13218 + 64] = _13261
                                        mem[_13218 + 32] = _13260
                                        mem[_13218] = _13259
                                        _13368 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_13368 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _13218]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _14288 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_14288 + 96] == mem[_14288 + 120 len 8]
                                            require mem[_14288 + 128] == mem[_14288 + 159 len 1]
                                            _14401 = mem[_13368 + 192]
                                            if mem[_13368 + 192] == -1:
                                                revert with 0, 17
                                            mem[_13368 + 192] = mem[_13368 + 192] + 1
                                            if _14401 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_13205 + 64] = 6
                                            mem[_13205] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13205
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12551 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12551 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16 < 8:
                                                    if mem[_13205 + 126 len 2] > mem[_12551 + 126 len 2]:
                                                        if mem[_13205 + 126 len 2] < mem[_12551 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13205 + 126 len 2] - mem[_12551 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13205 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13205 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) > mem[_12551 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) < mem[_12551 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) - mem[_12551 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_12551 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) > 65535 / mem[_12551 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16 < 8:
                                                    if mem[_13205 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                        if mem[_13205 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13205 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13205 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13205 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12551 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12551 + 64]) + 24 % 16) + 100) * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_13205 + 64] = 0
                                        mem[_13205] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _13205
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_12551 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_12551 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16 < 8:
                                                if mem[_13205 + 126 len 2] > mem[_12551 + 126 len 2]:
                                                    if mem[_13205 + 126 len 2] < mem[_12551 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_13205 + 126 len 2] - mem[_12551 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13205 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) > 65535 / mem[_13205 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) > mem[_12551 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) < mem[_12551 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) - mem[_12551 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12551 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) > 65535 / mem[_12551 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16 < 8:
                                                if mem[_13205 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                    if mem[_13205 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_13205 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13205 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) > 65535 / mem[_13205 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) + 8) * mem[_13205 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12551 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12551 + 64] % 16) + 100) * mem[_12551 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                else:
                    mem[_11749 + _11754 + 68] = 0
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _11754 + _11749 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _12461 = mem[128]
                            require mem[160] == mem[176 len 16]
                            require mem[192] == mem[208 len 16]
                            require mem[224] == mem[252 len 4]
                            require mem[256] == mem[284 len 4]
                            require mem[288] == mem[316 len 4]
                            if mem[128]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12522 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_12522] == mem[_12522 + 30 len 2]
                                require mem[_12522 + 32] == mem[_12522 + 62 len 2]
                                if not mem[_12522 + 30 len 2]:
                                    _12552 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_12552] = 0
                                    mem[_12552 + 32] = 0
                                    mem[_12552 + 64] = 0
                                    mem[_12552 + 96] = 0
                                    _12564 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_12564 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _12461
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12576 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_12576] == mem[_12576 + 12 len 20]
                                    _12590 = mem[_12576 + 32]
                                    _12591 = mem[_12576 + 64]
                                    _12592 = mem[_12576 + 96]
                                    _12596 = mem[_12576 + 128]
                                    require mem[_12576 + 128] == mem[_12576 + 158 len 2]
                                    require mem[_12576 + 160] == mem[_12576 + 190 len 2]
                                    require mem[_12576 + 224] == mem[_12576 + 240 len 16]
                                    mem[_12552 + 32] = mem[_12576 + 192]
                                    mem[_12552 + 96] = uint16(_12596)
                                    mem[_12564 + 64] = _12592
                                    mem[_12564 + 32] = _12591
                                    mem[_12564] = _12590
                                    _12650 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_12650 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _12564]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13153 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_13153 + 96] == mem[_13153 + 120 len 8]
                                        require mem[_13153 + 128] == mem[_13153 + 159 len 1]
                                        _13243 = mem[_12650 + 192]
                                        if mem[_12650 + 192] == -1:
                                            revert with 0, 17
                                        mem[_12650 + 192] = mem[_12650 + 192] + 1
                                        if _13243 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_12552 + 64] = 6
                                        mem[_12552] = _12461
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_12552 + 126 len 2] and 100 > 65535 / mem[_12552 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_12552 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_12552 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _13361 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_13361] = 0
                                            mem[_13361 + 32] = 0
                                            mem[_13361 + 64] = 0
                                            mem[_13361 + 96] = 0
                                            _13382 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_13382 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13412 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_13412] == mem[_13412 + 12 len 20]
                                            _13441 = mem[_13412 + 32]
                                            _13442 = mem[_13412 + 64]
                                            _13443 = mem[_13412 + 96]
                                            _13463 = mem[_13412 + 128]
                                            require mem[_13412 + 128] == mem[_13412 + 158 len 2]
                                            require mem[_13412 + 160] == mem[_13412 + 190 len 2]
                                            require mem[_13412 + 224] == mem[_13412 + 240 len 16]
                                            mem[_13361 + 32] = mem[_13412 + 192]
                                            mem[_13361 + 96] = uint16(_13463)
                                            mem[_13382 + 64] = _13443
                                            mem[_13382 + 32] = _13442
                                            mem[_13382] = _13441
                                            _13537 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_13537 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _13382]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _14294 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_14294 + 96] == mem[_14294 + 120 len 8]
                                                require mem[_14294 + 128] == mem[_14294 + 159 len 1]
                                                _14404 = mem[_13537 + 192]
                                                if mem[_13537 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_13537 + 192] = mem[_13537 + 192] + 1
                                                if _14404 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_13361 + 64] = 6
                                                mem[_13361] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _13361
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_12552 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_12552 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16 < 8:
                                                        if mem[_13361 + 126 len 2] > mem[_12552 + 126 len 2]:
                                                            if mem[_13361 + 126 len 2] < mem[_12552 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_13361 + 126 len 2] - mem[_12552 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13361 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13361 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) > mem[_12552 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) < mem[_12552 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) - mem[_12552 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_12552 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) > 65535 / mem[_12552 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16 < 8:
                                                        if mem[_13361 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                            if mem[_13361 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_13361 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13361 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13361 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_13361 + 64] = 0
                                            mem[_13361] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13361
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12552 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12552 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16 < 8:
                                                    if mem[_13361 + 126 len 2] > mem[_12552 + 126 len 2]:
                                                        if mem[_13361 + 126 len 2] < mem[_12552 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13361 + 126 len 2] - mem[_12552 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13361 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) > 65535 / mem[_13361 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) > mem[_12552 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) < mem[_12552 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) - mem[_12552 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_12552 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) > 65535 / mem[_12552 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16 < 8:
                                                    if mem[_13361 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                        if mem[_13361 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13361 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13361 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) > 65535 / mem[_13361 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_12552 + 64] = 0
                                    mem[_12552] = _12461
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_12552 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_12552 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_12552 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_12552 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_12552 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_12552 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12552 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_12552 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _13208 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_13208] = 0
                                        mem[_13208 + 32] = 0
                                        mem[_13208 + 64] = 0
                                        mem[_13208 + 96] = 0
                                        _13219 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13219 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13237 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_13237] == mem[_13237 + 12 len 20]
                                        _13262 = mem[_13237 + 32]
                                        _13263 = mem[_13237 + 64]
                                        _13264 = mem[_13237 + 96]
                                        _13275 = mem[_13237 + 128]
                                        require mem[_13237 + 128] == mem[_13237 + 158 len 2]
                                        require mem[_13237 + 160] == mem[_13237 + 190 len 2]
                                        require mem[_13237 + 224] == mem[_13237 + 240 len 16]
                                        mem[_13208 + 32] = mem[_13237 + 192]
                                        mem[_13208 + 96] = uint16(_13275)
                                        mem[_13219 + 64] = _13264
                                        mem[_13219 + 32] = _13263
                                        mem[_13219] = _13262
                                        _13369 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_13369 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _13219]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _14292 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_14292 + 96] == mem[_14292 + 120 len 8]
                                            require mem[_14292 + 128] == mem[_14292 + 159 len 1]
                                            _14403 = mem[_13369 + 192]
                                            if mem[_13369 + 192] == -1:
                                                revert with 0, 17
                                            mem[_13369 + 192] = mem[_13369 + 192] + 1
                                            if _14403 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_13208 + 64] = 6
                                            mem[_13208] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13208
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12552 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12552 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16 < 8:
                                                    if mem[_13208 + 126 len 2] > mem[_12552 + 126 len 2]:
                                                        if mem[_13208 + 126 len 2] < mem[_12552 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13208 + 126 len 2] - mem[_12552 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13208 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13208 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) > mem[_12552 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) < mem[_12552 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) - mem[_12552 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_12552 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) > 65535 / mem[_12552 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16 < 8:
                                                    if mem[_13208 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                        if mem[_13208 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13208 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13208 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13208 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12552 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12552 + 64]) + 24 % 16) + 100) * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_13208 + 64] = 0
                                        mem[_13208] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _13208
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_12552 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_12552 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16 < 8:
                                                if mem[_13208 + 126 len 2] > mem[_12552 + 126 len 2]:
                                                    if mem[_13208 + 126 len 2] < mem[_12552 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_13208 + 126 len 2] - mem[_12552 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13208 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) > 65535 / mem[_13208 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) > mem[_12552 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) < mem[_12552 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) - mem[_12552 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12552 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) > 65535 / mem[_12552 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16 < 8:
                                                if mem[_13208 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                    if mem[_13208 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_13208 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13208 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) > 65535 / mem[_13208 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12552 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12552 + 64] % 16) + 100) * mem[_12552 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _12449 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12449] = return_data.size
                        mem[_12449 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _12462 = mem[_12449 + 32]
                            require mem[_12449 + 64] == mem[_12449 + 80 len 16]
                            require mem[_12449 + 96] == mem[_12449 + 112 len 16]
                            require mem[_12449 + 128] == mem[_12449 + 156 len 4]
                            require mem[_12449 + 160] == mem[_12449 + 188 len 4]
                            require mem[_12449 + 192] == mem[_12449 + 220 len 4]
                            if mem[_12449 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12523 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_12523] == mem[_12523 + 30 len 2]
                                require mem[_12523 + 32] == mem[_12523 + 62 len 2]
                                if not mem[_12523 + 30 len 2]:
                                    _12553 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_12553] = 0
                                    mem[_12553 + 32] = 0
                                    mem[_12553 + 64] = 0
                                    mem[_12553 + 96] = 0
                                    _12565 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_12565 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _12462
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12577 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_12577] == mem[_12577 + 12 len 20]
                                    _12593 = mem[_12577 + 32]
                                    _12594 = mem[_12577 + 64]
                                    _12595 = mem[_12577 + 96]
                                    _12597 = mem[_12577 + 128]
                                    require mem[_12577 + 128] == mem[_12577 + 158 len 2]
                                    require mem[_12577 + 160] == mem[_12577 + 190 len 2]
                                    require mem[_12577 + 224] == mem[_12577 + 240 len 16]
                                    mem[_12553 + 32] = mem[_12577 + 192]
                                    mem[_12553 + 96] = uint16(_12597)
                                    mem[_12565 + 64] = _12595
                                    mem[_12565 + 32] = _12594
                                    mem[_12565] = _12593
                                    _12651 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_12651 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _12565]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13155 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_13155 + 96] == mem[_13155 + 120 len 8]
                                        require mem[_13155 + 128] == mem[_13155 + 159 len 1]
                                        _13244 = mem[_12651 + 192]
                                        if mem[_12651 + 192] == -1:
                                            revert with 0, 17
                                        mem[_12651 + 192] = mem[_12651 + 192] + 1
                                        if _13244 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_12553 + 64] = 6
                                        mem[_12553] = _12462
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_12553 + 126 len 2] and 100 > 65535 / mem[_12553 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_12553 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_12553 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _13364 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_13364] = 0
                                            mem[_13364 + 32] = 0
                                            mem[_13364 + 64] = 0
                                            mem[_13364 + 96] = 0
                                            _13384 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_13384 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13416 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_13416] == mem[_13416 + 12 len 20]
                                            _13444 = mem[_13416 + 32]
                                            _13445 = mem[_13416 + 64]
                                            _13446 = mem[_13416 + 96]
                                            _13468 = mem[_13416 + 128]
                                            require mem[_13416 + 128] == mem[_13416 + 158 len 2]
                                            require mem[_13416 + 160] == mem[_13416 + 190 len 2]
                                            require mem[_13416 + 224] == mem[_13416 + 240 len 16]
                                            mem[_13364 + 32] = mem[_13416 + 192]
                                            mem[_13364 + 96] = uint16(_13468)
                                            mem[_13384 + 64] = _13446
                                            mem[_13384 + 32] = _13445
                                            mem[_13384] = _13444
                                            _13538 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_13538 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _13384]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _14298 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_14298 + 96] == mem[_14298 + 120 len 8]
                                                require mem[_14298 + 128] == mem[_14298 + 159 len 1]
                                                _14406 = mem[_13538 + 192]
                                                if mem[_13538 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_13538 + 192] = mem[_13538 + 192] + 1
                                                if _14406 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_13364 + 64] = 6
                                                mem[_13364] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _13364
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_12553 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_12553 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16 < 8:
                                                        if mem[_13364 + 126 len 2] > mem[_12553 + 126 len 2]:
                                                            if mem[_13364 + 126 len 2] < mem[_12553 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_13364 + 126 len 2] - mem[_12553 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13364 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13364 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) > mem[_12553 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) < mem[_12553 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) - mem[_12553 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_12553 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) > 65535 / mem[_12553 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16 < 8:
                                                        if mem[_13364 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                            if mem[_13364 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_13364 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13364 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13364 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_13364 + 64] = 0
                                            mem[_13364] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13364
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12553 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12553 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16 < 8:
                                                    if mem[_13364 + 126 len 2] > mem[_12553 + 126 len 2]:
                                                        if mem[_13364 + 126 len 2] < mem[_12553 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13364 + 126 len 2] - mem[_12553 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13364 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) > 65535 / mem[_13364 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) > mem[_12553 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) < mem[_12553 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) - mem[_12553 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_12553 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) > 65535 / mem[_12553 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16 < 8:
                                                    if mem[_13364 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                        if mem[_13364 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13364 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13364 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) > 65535 / mem[_13364 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_12553 + 64] = 0
                                    mem[_12553] = _12462
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    if mem[mem[(32 * idx) + 128]] != 0:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128] + 64] > 6:
                                            revert with 0, 33
                                        if 0 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                            revert with 0, 17
                                        if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 > 8:
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_12553 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_12553 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_12553 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_12553 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_12553 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_12553 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12553 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_12553 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _13211 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_13211] = 0
                                        mem[_13211 + 32] = 0
                                        mem[_13211 + 64] = 0
                                        mem[_13211 + 96] = 0
                                        _13220 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13220 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13238 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_13238] == mem[_13238 + 12 len 20]
                                        _13265 = mem[_13238 + 32]
                                        _13266 = mem[_13238 + 64]
                                        _13267 = mem[_13238 + 96]
                                        _13276 = mem[_13238 + 128]
                                        require mem[_13238 + 128] == mem[_13238 + 158 len 2]
                                        require mem[_13238 + 160] == mem[_13238 + 190 len 2]
                                        require mem[_13238 + 224] == mem[_13238 + 240 len 16]
                                        mem[_13211 + 32] = mem[_13238 + 192]
                                        mem[_13211 + 96] = uint16(_13276)
                                        mem[_13220 + 64] = _13267
                                        mem[_13220 + 32] = _13266
                                        mem[_13220] = _13265
                                        _13370 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_13370 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _13220]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _14296 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_14296 + 96] == mem[_14296 + 120 len 8]
                                            require mem[_14296 + 128] == mem[_14296 + 159 len 1]
                                            _14405 = mem[_13370 + 192]
                                            if mem[_13370 + 192] == -1:
                                                revert with 0, 17
                                            mem[_13370 + 192] = mem[_13370 + 192] + 1
                                            if _14405 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_13211 + 64] = 6
                                            mem[_13211] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13211
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12553 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12553 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16 < 8:
                                                    if mem[_13211 + 126 len 2] > mem[_12553 + 126 len 2]:
                                                        if mem[_13211 + 126 len 2] < mem[_12553 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13211 + 126 len 2] - mem[_12553 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13211 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13211 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) > mem[_12553 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) < mem[_12553 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) - mem[_12553 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_12553 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) > 65535 / mem[_12553 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16 < 8:
                                                    if mem[_13211 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                        if mem[_13211 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13211 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13211 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13211 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12553 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12553 + 64]) + 24 % 16) + 100) * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_13211 + 64] = 0
                                        mem[_13211] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _13211
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_12553 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_12553 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16 < 8:
                                                if mem[_13211 + 126 len 2] > mem[_12553 + 126 len 2]:
                                                    if mem[_13211 + 126 len 2] < mem[_12553 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_13211 + 126 len 2] - mem[_12553 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13211 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) > 65535 / mem[_13211 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) > mem[_12553 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) < mem[_12553 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) - mem[_12553 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12553 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) > 65535 / mem[_12553 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16 < 8:
                                                if mem[_13211 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                    if mem[_13211 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_13211 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13211 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) > 65535 / mem[_13211 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12553 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12553 + 64] % 16) + 100) * mem[_12553 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return 0
    mem[64] = (32 * ('cd', 36).length) + 640
    mem[(32 * ('cd', 36).length) + 512] = 0
    mem[(32 * ('cd', 36).length) + 544] = 0
    mem[var53002] = 0
    mem[var53002 + 32] = 0
    mem[var55002] = var55001
    if var55003 - 1:
        # nil
    else:
        idx = 0
        while idx < ('cd', 36).length:
            s = 0
            while s <= ('cd', 4).length:
                if s >= ('cd', 4).length:
                    revert with 0, 50
                _15209 = mem[64]
                mem[mem[64] + 36] = cd[((32 * s) + cd[4] + 36)]
                _15211 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_15211 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_15211 + 36 len 28]
                _15214 = mem[_15211]
                idx = 0
                while idx < _15214:
                    mem[idx + _15209 + 68] = mem[_15211 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_15214) <= _15214:
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _15214 + _15209 + -mem[64] + 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require mem[96] >= 192
                        _15916 = mem[128]
                        require mem[160] == mem[176 len 16]
                        require mem[192] == mem[208 len 16]
                        require mem[224] == mem[252 len 4]
                        require mem[256] == mem[284 len 4]
                        require mem[288] == mem[316 len 4]
                        if not mem[128]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                gas gas_remaining wei
                               args cd[((32 * s) + cd[4] + 36)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15978 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_15978] == mem[_15978 + 30 len 2]
                        require mem[_15978 + 32] == mem[_15978 + 62 len 2]
                        if mem[_15978 + 30 len 2]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        _16010 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_16010] = 0
                        mem[_16010 + 32] = 0
                        mem[_16010 + 64] = 0
                        mem[_16010 + 96] = 0
                        _16018 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_16018 len 96] = call.data[calldata.size len 96]
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                gas gas_remaining wei
                               args _15916
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16034 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_16034] == mem[_16034 + 12 len 20]
                        require mem[_16034 + 128] == mem[_16034 + 158 len 2]
                        require mem[_16034 + 160] == mem[_16034 + 190 len 2]
                        require mem[_16034 + 224] == mem[_16034 + 240 len 16]
                        # nil
                    else:
                        _15907 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_15907] = return_data.size
                        mem[_15907 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require return_data.size >= 192
                        _15917 = mem[_15907 + 32]
                        require mem[_15907 + 64] == mem[_15907 + 80 len 16]
                        require mem[_15907 + 96] == mem[_15907 + 112 len 16]
                        require mem[_15907 + 128] == mem[_15907 + 156 len 4]
                        require mem[_15907 + 160] == mem[_15907 + 188 len 4]
                        require mem[_15907 + 192] == mem[_15907 + 220 len 4]
                        if not mem[_15907 + 32]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                gas gas_remaining wei
                               args cd[((32 * s) + cd[4] + 36)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15979 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_15979] == mem[_15979 + 30 len 2]
                        require mem[_15979 + 32] == mem[_15979 + 62 len 2]
                        if mem[_15979 + 30 len 2]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        _16011 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_16011] = 0
                        mem[_16011 + 32] = 0
                        mem[_16011 + 64] = 0
                        mem[_16011 + 96] = 0
                        _16019 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_16019 len 96] = call.data[calldata.size len 96]
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                gas gas_remaining wei
                               args _15917
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16035 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_16035] == mem[_16035 + 12 len 20]
                        require mem[_16035 + 128] == mem[_16035 + 158 len 2]
                        require mem[_16035 + 160] == mem[_16035 + 190 len 2]
                        require mem[_16035 + 224] == mem[_16035 + 240 len 16]
                        # nil
                else:
                    mem[_15209 + _15214 + 68] = 0
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _15214 + _15209 + -mem[64] + 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require mem[96] >= 192
                        _15921 = mem[128]
                        require mem[160] == mem[176 len 16]
                        require mem[192] == mem[208 len 16]
                        require mem[224] == mem[252 len 4]
                        require mem[256] == mem[284 len 4]
                        require mem[288] == mem[316 len 4]
                        if not mem[128]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                gas gas_remaining wei
                               args cd[((32 * s) + cd[4] + 36)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15982 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_15982] == mem[_15982 + 30 len 2]
                        require mem[_15982 + 32] == mem[_15982 + 62 len 2]
                        if mem[_15982 + 30 len 2]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        _16012 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_16012] = 0
                        mem[_16012 + 32] = 0
                        mem[_16012 + 64] = 0
                        mem[_16012 + 96] = 0
                        _16024 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_16024 len 96] = call.data[calldata.size len 96]
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                gas gas_remaining wei
                               args _15921
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16036 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_16036] == mem[_16036 + 12 len 20]
                        require mem[_16036 + 128] == mem[_16036 + 158 len 2]
                        require mem[_16036 + 160] == mem[_16036 + 190 len 2]
                        require mem[_16036 + 224] == mem[_16036 + 240 len 16]
                        # nil
                    else:
                        _15909 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_15909] = return_data.size
                        mem[_15909 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require return_data.size >= 192
                        _15922 = mem[_15909 + 32]
                        require mem[_15909 + 64] == mem[_15909 + 80 len 16]
                        require mem[_15909 + 96] == mem[_15909 + 112 len 16]
                        require mem[_15909 + 128] == mem[_15909 + 156 len 4]
                        require mem[_15909 + 160] == mem[_15909 + 188 len 4]
                        require mem[_15909 + 192] == mem[_15909 + 220 len 4]
                        if not mem[_15909 + 32]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                gas gas_remaining wei
                               args cd[((32 * s) + cd[4] + 36)]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _15983 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_15983] == mem[_15983 + 30 len 2]
                        require mem[_15983 + 32] == mem[_15983 + 62 len 2]
                        if mem[_15983 + 30 len 2]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        _16013 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_16013] = 0
                        mem[_16013 + 32] = 0
                        mem[_16013 + 64] = 0
                        mem[_16013 + 96] = 0
                        _16025 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_16025 len 96] = call.data[calldata.size len 96]
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                gas gas_remaining wei
                               args _15922
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16037 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_16037] == mem[_16037 + 12 len 20]
                        require mem[_16037 + 128] == mem[_16037 + 158 len 2]
                        require mem[_16037 + 160] == mem[_16037 + 190 len 2]
                        require mem[_16037 + 224] == mem[_16037 + 240 len 16]
                        # nil
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return 0
}



}
