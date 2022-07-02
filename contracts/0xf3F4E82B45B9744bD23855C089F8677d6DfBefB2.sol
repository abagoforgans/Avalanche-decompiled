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

function sub_35aed93e(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    return bool(ext_call.return_data[30 len 2])
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

function sub_21178796(?) {
    require calldata.size - 4 >= 256
    require calldata.size - 4 >= 128
    require arg1 < 7
    require arg2 == uint16(arg2)
    require calldata.size - 132 >= 128
    require arg3 < 7
    require arg4 == uint16(arg4)
    if arg3 > 6:
        revert with 0, 33
    if arg1 > 6:
        revert with 0, 33
    if 28 * arg1 > !(4 * arg3):
        revert with 0, 17
    if Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16 > 8:
        if Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16 < 8:
            if uint16(arg4) <= uint16(arg2):
                return 0
            if uint16(arg4) < uint16(arg2):
                revert with 0, 17
            return uint16(uint16(arg4) - uint16(arg2))
        if 100 < Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16:
            revert with 0, 17
        if 8 > -uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) + 65535:
            revert with 0, 17
        if uint16(arg4) and uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) + 8) > 65535 / uint16(arg4):
            revert with 0, 17
        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) + 8) * uint16(arg4)) / 100) <= uint16(arg2):
            return 0
        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) + 8) * uint16(arg4)) / 100) < uint16(arg2):
            revert with 0, 17
        return uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) + 8) * uint16(arg4)) / 100) - uint16(arg2))
    if 100 < Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16:
        revert with 0, 17
    if uint16(arg2) and uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) > 65535 / uint16(arg2):
        revert with 0, 17
    if Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16 < 8:
        if uint16(arg4) <= uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) * uint16(arg2)) / 100):
            return 0
        if uint16(arg4) < uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) * uint16(arg2)) / 100):
            revert with 0, 17
        return uint16(uint16(arg4) - uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) * uint16(arg2)) / 100))
    if 100 < Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16:
        revert with 0, 17
    if 8 > -uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) + 65535:
        revert with 0, 17
    if uint16(arg4) and uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) + 8) > 65535 / uint16(arg4):
        revert with 0, 17
    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) + 8) * uint16(arg4)) / 100) <= uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) * uint16(arg2)) / 100):
        return 0
    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) + 8) * uint16(arg4)) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) * uint16(arg2)) / 100):
        revert with 0, 17
    return uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) + 8) * uint16(arg4)) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg3), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg3) % 16) + 100) * uint16(arg2)) / 100))
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
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1 - eth.balance(msg.sender)) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1 - eth.balance(msg.sender)) >> 32 + 192]) + 193 > test266151307():
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
            while s < ('cd', 4).length:
                _1375 = mem[64]
                mem[mem[64] + 36] = cd[((32 * s) + cd[4] + 36)]
                _1376 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_1376 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_1376 + 36 len 28]
                _1380 = mem[_1376]
                t = 0
                while t < _1380:
                    mem[t + _1375 + 68] = mem[_1376 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_1380) <= _1380:
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1380 + _1375 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _2082 = mem[128]
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
                                _2144 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2144] == mem[_2144 + 30 len 2]
                                require mem[_2144 + 32] == mem[_2144 + 62 len 2]
                                if not mem[_2144 + 30 len 2]:
                                    _2174 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2174] = 0
                                    mem[_2174 + 32] = 0
                                    mem[_2174 + 64] = 0
                                    mem[_2174 + 96] = 0
                                    _2184 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2184 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _2082
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2200 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_2200] == mem[_2200 + 12 len 20]
                                    _2206 = mem[_2200 + 32]
                                    _2207 = mem[_2200 + 64]
                                    _2208 = mem[_2200 + 96]
                                    _2209 = mem[_2200 + 128]
                                    require mem[_2200 + 128] == mem[_2200 + 158 len 2]
                                    require mem[_2200 + 160] == mem[_2200 + 190 len 2]
                                    require mem[_2200 + 224] == mem[_2200 + 240 len 16]
                                    mem[_2174 + 32] = mem[_2200 + 192]
                                    mem[_2174 + 96] = uint16(_2209)
                                    mem[_2184 + 64] = _2208
                                    mem[_2184 + 32] = _2207
                                    mem[_2184] = _2206
                                    _2258 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2258 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _2184]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2774 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_2774 + 96] == mem[_2774 + 120 len 8]
                                        require mem[_2774 + 128] == mem[_2774 + 159 len 1]
                                        _2865 = mem[_2258 + 192]
                                        if mem[_2258 + 192] == -1:
                                            revert with 0, 17
                                        mem[_2258 + 192] = mem[_2258 + 192] + 1
                                        if _2865 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_2174 + 64] = 6
                                        mem[_2174] = _2082
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_2174 + 126 len 2] and 100 > 65535 / mem[_2174 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_2174 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_2174 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_2174 + 126 len 2]) / 100)) > 0:
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
                                            _3003 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3003 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3031 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_3031] == mem[_3031 + 12 len 20]
                                            _3057 = mem[_3031 + 32]
                                            _3058 = mem[_3031 + 64]
                                            _3059 = mem[_3031 + 96]
                                            _3060 = mem[_3031 + 128]
                                            require mem[_3031 + 128] == mem[_3031 + 158 len 2]
                                            require mem[_3031 + 160] == mem[_3031 + 190 len 2]
                                            require mem[_3031 + 224] == mem[_3031 + 240 len 16]
                                            mem[_2977 + 32] = mem[_3031 + 192]
                                            mem[_2977 + 96] = uint16(_3060)
                                            mem[_3003 + 64] = _3059
                                            mem[_3003 + 32] = _3058
                                            mem[_3003] = _3057
                                            _3161 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_3161 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _3003]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3911 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_3911 + 96] == mem[_3911 + 120 len 8]
                                                require mem[_3911 + 128] == mem[_3911 + 159 len 1]
                                                _4021 = mem[_3161 + 192]
                                                if mem[_3161 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_3161 + 192] = mem[_3161 + 192] + 1
                                                if _4021 + 1 != 2:
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
                                                if mem[_2174 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_2174 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16 < 8:
                                                        if mem[_2977 + 126 len 2] > mem[_2174 + 126 len 2]:
                                                            if mem[_2977 + 126 len 2] < mem[_2174 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_2977 + 126 len 2] - mem[_2174 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2977 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2977 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) > mem[_2174 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) < mem[_2174 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) - mem[_2174 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_2174 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) > 65535 / mem[_2174 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16 < 8:
                                                        if mem[_2977 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                            if mem[_2977 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_2977 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2977 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2977 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100)) > 0:
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
                                            if mem[_2174 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2174 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16 < 8:
                                                    if mem[_2977 + 126 len 2] > mem[_2174 + 126 len 2]:
                                                        if mem[_2977 + 126 len 2] < mem[_2174 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2977 + 126 len 2] - mem[_2174 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2977 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) > 65535 / mem[_2977 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) > mem[_2174 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) < mem[_2174 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) - mem[_2174 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_2174 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) > 65535 / mem[_2174 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16 < 8:
                                                    if mem[_2977 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                        if mem[_2977 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2977 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2977 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) > 65535 / mem[_2977 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2977 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_2174 + 64] = 0
                                    mem[_2174] = _2082
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_2174 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_2174 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_2174 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_2174 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_2174 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_2174 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2174 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_2174 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100)) > 0:
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
                                        _2840 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_2840 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2859 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_2859] == mem[_2859 + 12 len 20]
                                        _2878 = mem[_2859 + 32]
                                        _2879 = mem[_2859 + 64]
                                        _2880 = mem[_2859 + 96]
                                        _2881 = mem[_2859 + 128]
                                        require mem[_2859 + 128] == mem[_2859 + 158 len 2]
                                        require mem[_2859 + 160] == mem[_2859 + 190 len 2]
                                        require mem[_2859 + 224] == mem[_2859 + 240 len 16]
                                        mem[_2826 + 32] = mem[_2859 + 192]
                                        mem[_2826 + 96] = uint16(_2881)
                                        mem[_2840 + 64] = _2880
                                        mem[_2840 + 32] = _2879
                                        mem[_2840] = _2878
                                        _2991 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_2991 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _2840]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3909 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_3909 + 96] == mem[_3909 + 120 len 8]
                                            require mem[_3909 + 128] == mem[_3909 + 159 len 1]
                                            _4020 = mem[_2991 + 192]
                                            if mem[_2991 + 192] == -1:
                                                revert with 0, 17
                                            mem[_2991 + 192] = mem[_2991 + 192] + 1
                                            if _4020 + 1 != 2:
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
                                            if mem[_2174 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2174 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16 < 8:
                                                    if mem[_2826 + 126 len 2] > mem[_2174 + 126 len 2]:
                                                        if mem[_2826 + 126 len 2] < mem[_2174 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2826 + 126 len 2] - mem[_2174 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2826 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2826 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) > mem[_2174 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) < mem[_2174 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) - mem[_2174 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_2174 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) > 65535 / mem[_2174 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16 < 8:
                                                    if mem[_2826 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                        if mem[_2826 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2826 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2826 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2826 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2174 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2174 + 64]) + 24 % 16) + 100) * mem[_2174 + 126 len 2]) / 100)) > 0:
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
                                        if mem[_2174 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_2174 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16 < 8:
                                                if mem[_2826 + 126 len 2] > mem[_2174 + 126 len 2]:
                                                    if mem[_2826 + 126 len 2] < mem[_2174 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_2826 + 126 len 2] - mem[_2174 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2826 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) > 65535 / mem[_2826 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) > mem[_2174 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) < mem[_2174 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) - mem[_2174 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2174 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) > 65535 / mem[_2174 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16 < 8:
                                                if mem[_2826 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                    if mem[_2826 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_2826 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2826 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) > 65535 / mem[_2826 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) + 8) * mem[_2826 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2174 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2174 + 64] % 16) + 100) * mem[_2174 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _2073 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2073] = return_data.size
                        mem[_2073 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _2083 = mem[_2073 + 32]
                            require mem[_2073 + 64] == mem[_2073 + 80 len 16]
                            require mem[_2073 + 96] == mem[_2073 + 112 len 16]
                            require mem[_2073 + 128] == mem[_2073 + 156 len 4]
                            require mem[_2073 + 160] == mem[_2073 + 188 len 4]
                            require mem[_2073 + 192] == mem[_2073 + 220 len 4]
                            if mem[_2073 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2145 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2145] == mem[_2145 + 30 len 2]
                                require mem[_2145 + 32] == mem[_2145 + 62 len 2]
                                if not mem[_2145 + 30 len 2]:
                                    _2175 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2175] = 0
                                    mem[_2175 + 32] = 0
                                    mem[_2175 + 64] = 0
                                    mem[_2175 + 96] = 0
                                    _2185 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2185 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _2083
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2201 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_2201] == mem[_2201 + 12 len 20]
                                    _2210 = mem[_2201 + 32]
                                    _2211 = mem[_2201 + 64]
                                    _2212 = mem[_2201 + 96]
                                    _2213 = mem[_2201 + 128]
                                    require mem[_2201 + 128] == mem[_2201 + 158 len 2]
                                    require mem[_2201 + 160] == mem[_2201 + 190 len 2]
                                    require mem[_2201 + 224] == mem[_2201 + 240 len 16]
                                    mem[_2175 + 32] = mem[_2201 + 192]
                                    mem[_2175 + 96] = uint16(_2213)
                                    mem[_2185 + 64] = _2212
                                    mem[_2185 + 32] = _2211
                                    mem[_2185] = _2210
                                    _2259 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2259 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _2185]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2776 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_2776 + 96] == mem[_2776 + 120 len 8]
                                        require mem[_2776 + 128] == mem[_2776 + 159 len 1]
                                        _2866 = mem[_2259 + 192]
                                        if mem[_2259 + 192] == -1:
                                            revert with 0, 17
                                        mem[_2259 + 192] = mem[_2259 + 192] + 1
                                        if _2866 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_2175 + 64] = 6
                                        mem[_2175] = _2083
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_2175 + 126 len 2] and 100 > 65535 / mem[_2175 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_2175 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_2175 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_2175 + 126 len 2]) / 100)) > 0:
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
                                            _3004 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3004 len 96] = call.data[calldata.size len 96]
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
                                            _3061 = mem[_3034 + 32]
                                            _3062 = mem[_3034 + 64]
                                            _3063 = mem[_3034 + 96]
                                            _3064 = mem[_3034 + 128]
                                            require mem[_3034 + 128] == mem[_3034 + 158 len 2]
                                            require mem[_3034 + 160] == mem[_3034 + 190 len 2]
                                            require mem[_3034 + 224] == mem[_3034 + 240 len 16]
                                            mem[_2980 + 32] = mem[_3034 + 192]
                                            mem[_2980 + 96] = uint16(_3064)
                                            mem[_3004 + 64] = _3063
                                            mem[_3004 + 32] = _3062
                                            mem[_3004] = _3061
                                            _3162 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_3162 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _3004]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3915 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_3915 + 96] == mem[_3915 + 120 len 8]
                                                require mem[_3915 + 128] == mem[_3915 + 159 len 1]
                                                _4023 = mem[_3162 + 192]
                                                if mem[_3162 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_3162 + 192] = mem[_3162 + 192] + 1
                                                if _4023 + 1 != 2:
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
                                                if mem[_2175 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_2175 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16 < 8:
                                                        if mem[_2980 + 126 len 2] > mem[_2175 + 126 len 2]:
                                                            if mem[_2980 + 126 len 2] < mem[_2175 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_2980 + 126 len 2] - mem[_2175 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2980 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2980 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) > mem[_2175 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) < mem[_2175 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) - mem[_2175 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_2175 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) > 65535 / mem[_2175 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16 < 8:
                                                        if mem[_2980 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                            if mem[_2980 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_2980 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2980 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2980 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100)) > 0:
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
                                            if mem[_2175 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2175 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16 < 8:
                                                    if mem[_2980 + 126 len 2] > mem[_2175 + 126 len 2]:
                                                        if mem[_2980 + 126 len 2] < mem[_2175 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2980 + 126 len 2] - mem[_2175 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2980 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) > 65535 / mem[_2980 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) > mem[_2175 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) < mem[_2175 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) - mem[_2175 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_2175 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) > 65535 / mem[_2175 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16 < 8:
                                                    if mem[_2980 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                        if mem[_2980 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2980 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2980 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) > 65535 / mem[_2980 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2980 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_2175 + 64] = 0
                                    mem[_2175] = _2083
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_2175 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_2175 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_2175 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_2175 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_2175 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_2175 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2175 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_2175 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100)) > 0:
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
                                        _2841 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_2841 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2860 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_2860] == mem[_2860 + 12 len 20]
                                        _2882 = mem[_2860 + 32]
                                        _2883 = mem[_2860 + 64]
                                        _2884 = mem[_2860 + 96]
                                        _2885 = mem[_2860 + 128]
                                        require mem[_2860 + 128] == mem[_2860 + 158 len 2]
                                        require mem[_2860 + 160] == mem[_2860 + 190 len 2]
                                        require mem[_2860 + 224] == mem[_2860 + 240 len 16]
                                        mem[_2829 + 32] = mem[_2860 + 192]
                                        mem[_2829 + 96] = uint16(_2885)
                                        mem[_2841 + 64] = _2884
                                        mem[_2841 + 32] = _2883
                                        mem[_2841] = _2882
                                        _2992 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_2992 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _2841]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3913 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_3913 + 96] == mem[_3913 + 120 len 8]
                                            require mem[_3913 + 128] == mem[_3913 + 159 len 1]
                                            _4022 = mem[_2992 + 192]
                                            if mem[_2992 + 192] == -1:
                                                revert with 0, 17
                                            mem[_2992 + 192] = mem[_2992 + 192] + 1
                                            if _4022 + 1 != 2:
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
                                            if mem[_2175 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2175 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16 < 8:
                                                    if mem[_2829 + 126 len 2] > mem[_2175 + 126 len 2]:
                                                        if mem[_2829 + 126 len 2] < mem[_2175 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2829 + 126 len 2] - mem[_2175 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2829 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2829 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) > mem[_2175 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) < mem[_2175 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) - mem[_2175 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_2175 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) > 65535 / mem[_2175 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16 < 8:
                                                    if mem[_2829 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                        if mem[_2829 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2829 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2829 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2829 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2175 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2175 + 64]) + 24 % 16) + 100) * mem[_2175 + 126 len 2]) / 100)) > 0:
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
                                        if mem[_2175 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_2175 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16 < 8:
                                                if mem[_2829 + 126 len 2] > mem[_2175 + 126 len 2]:
                                                    if mem[_2829 + 126 len 2] < mem[_2175 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_2829 + 126 len 2] - mem[_2175 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2829 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) > 65535 / mem[_2829 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) > mem[_2175 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) < mem[_2175 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) - mem[_2175 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2175 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) > 65535 / mem[_2175 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16 < 8:
                                                if mem[_2829 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                    if mem[_2829 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_2829 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2829 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) > 65535 / mem[_2829 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) + 8) * mem[_2829 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2175 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2175 + 64] % 16) + 100) * mem[_2175 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                else:
                    mem[_1375 + _1380 + 68] = 0
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1380 + _1375 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _2086 = mem[128]
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
                                _2146 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2146] == mem[_2146 + 30 len 2]
                                require mem[_2146 + 32] == mem[_2146 + 62 len 2]
                                if not mem[_2146 + 30 len 2]:
                                    _2178 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2178] = 0
                                    mem[_2178 + 32] = 0
                                    mem[_2178 + 64] = 0
                                    mem[_2178 + 96] = 0
                                    _2190 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2190 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _2086
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2202 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_2202] == mem[_2202 + 12 len 20]
                                    _2216 = mem[_2202 + 32]
                                    _2217 = mem[_2202 + 64]
                                    _2218 = mem[_2202 + 96]
                                    _2219 = mem[_2202 + 128]
                                    require mem[_2202 + 128] == mem[_2202 + 158 len 2]
                                    require mem[_2202 + 160] == mem[_2202 + 190 len 2]
                                    require mem[_2202 + 224] == mem[_2202 + 240 len 16]
                                    mem[_2178 + 32] = mem[_2202 + 192]
                                    mem[_2178 + 96] = uint16(_2219)
                                    mem[_2190 + 64] = _2218
                                    mem[_2190 + 32] = _2217
                                    mem[_2190] = _2216
                                    _2270 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2270 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _2190]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2778 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_2778 + 96] == mem[_2778 + 120 len 8]
                                        require mem[_2778 + 128] == mem[_2778 + 159 len 1]
                                        _2867 = mem[_2270 + 192]
                                        if mem[_2270 + 192] == -1:
                                            revert with 0, 17
                                        mem[_2270 + 192] = mem[_2270 + 192] + 1
                                        if _2867 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_2178 + 64] = 6
                                        mem[_2178] = _2086
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_2178 + 126 len 2] and 100 > 65535 / mem[_2178 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_2178 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_2178 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _2983 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_2983] = 0
                                            mem[_2983 + 32] = 0
                                            mem[_2983 + 64] = 0
                                            mem[_2983 + 96] = 0
                                            _3005 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3005 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3037 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_3037] == mem[_3037 + 12 len 20]
                                            _3065 = mem[_3037 + 32]
                                            _3066 = mem[_3037 + 64]
                                            _3067 = mem[_3037 + 96]
                                            _3068 = mem[_3037 + 128]
                                            require mem[_3037 + 128] == mem[_3037 + 158 len 2]
                                            require mem[_3037 + 160] == mem[_3037 + 190 len 2]
                                            require mem[_3037 + 224] == mem[_3037 + 240 len 16]
                                            mem[_2983 + 32] = mem[_3037 + 192]
                                            mem[_2983 + 96] = uint16(_3068)
                                            mem[_3005 + 64] = _3067
                                            mem[_3005 + 32] = _3066
                                            mem[_3005] = _3065
                                            _3163 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_3163 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _3005]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3919 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_3919 + 96] == mem[_3919 + 120 len 8]
                                                require mem[_3919 + 128] == mem[_3919 + 159 len 1]
                                                _4025 = mem[_3163 + 192]
                                                if mem[_3163 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_3163 + 192] = mem[_3163 + 192] + 1
                                                if _4025 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_2983 + 64] = 6
                                                mem[_2983] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _2983
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_2178 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_2178 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16 < 8:
                                                        if mem[_2983 + 126 len 2] > mem[_2178 + 126 len 2]:
                                                            if mem[_2983 + 126 len 2] < mem[_2178 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_2983 + 126 len 2] - mem[_2178 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2983 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2983 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) > mem[_2178 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) < mem[_2178 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) - mem[_2178 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_2178 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) > 65535 / mem[_2178 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16 < 8:
                                                        if mem[_2983 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                            if mem[_2983 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_2983 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2983 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2983 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_2983 + 64] = 0
                                            mem[_2983] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2983
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2178 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2178 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16 < 8:
                                                    if mem[_2983 + 126 len 2] > mem[_2178 + 126 len 2]:
                                                        if mem[_2983 + 126 len 2] < mem[_2178 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2983 + 126 len 2] - mem[_2178 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2983 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) > 65535 / mem[_2983 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) > mem[_2178 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) < mem[_2178 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) - mem[_2178 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_2178 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) > 65535 / mem[_2178 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16 < 8:
                                                    if mem[_2983 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                        if mem[_2983 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2983 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2983 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) > 65535 / mem[_2983 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2983 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_2178 + 64] = 0
                                    mem[_2178] = _2086
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_2178 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_2178 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_2178 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_2178 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_2178 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_2178 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2178 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_2178 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _2832 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_2832] = 0
                                        mem[_2832 + 32] = 0
                                        mem[_2832 + 64] = 0
                                        mem[_2832 + 96] = 0
                                        _2842 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_2842 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2861 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_2861] == mem[_2861 + 12 len 20]
                                        _2886 = mem[_2861 + 32]
                                        _2887 = mem[_2861 + 64]
                                        _2888 = mem[_2861 + 96]
                                        _2889 = mem[_2861 + 128]
                                        require mem[_2861 + 128] == mem[_2861 + 158 len 2]
                                        require mem[_2861 + 160] == mem[_2861 + 190 len 2]
                                        require mem[_2861 + 224] == mem[_2861 + 240 len 16]
                                        mem[_2832 + 32] = mem[_2861 + 192]
                                        mem[_2832 + 96] = uint16(_2889)
                                        mem[_2842 + 64] = _2888
                                        mem[_2842 + 32] = _2887
                                        mem[_2842] = _2886
                                        _2993 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_2993 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _2842]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3917 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_3917 + 96] == mem[_3917 + 120 len 8]
                                            require mem[_3917 + 128] == mem[_3917 + 159 len 1]
                                            _4024 = mem[_2993 + 192]
                                            if mem[_2993 + 192] == -1:
                                                revert with 0, 17
                                            mem[_2993 + 192] = mem[_2993 + 192] + 1
                                            if _4024 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_2832 + 64] = 6
                                            mem[_2832] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2832
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2178 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2178 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16 < 8:
                                                    if mem[_2832 + 126 len 2] > mem[_2178 + 126 len 2]:
                                                        if mem[_2832 + 126 len 2] < mem[_2178 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2832 + 126 len 2] - mem[_2178 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2832 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2832 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) > mem[_2178 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) < mem[_2178 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) - mem[_2178 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_2178 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) > 65535 / mem[_2178 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16 < 8:
                                                    if mem[_2832 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                        if mem[_2832 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2832 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2832 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2832 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2178 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2178 + 64]) + 24 % 16) + 100) * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_2832 + 64] = 0
                                        mem[_2832] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _2832
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_2178 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_2178 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16 < 8:
                                                if mem[_2832 + 126 len 2] > mem[_2178 + 126 len 2]:
                                                    if mem[_2832 + 126 len 2] < mem[_2178 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_2832 + 126 len 2] - mem[_2178 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2832 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) > 65535 / mem[_2832 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) > mem[_2178 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) < mem[_2178 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) - mem[_2178 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2178 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) > 65535 / mem[_2178 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16 < 8:
                                                if mem[_2832 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                    if mem[_2832 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_2832 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2832 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) > 65535 / mem[_2832 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) + 8) * mem[_2832 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2178 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2178 + 64] % 16) + 100) * mem[_2178 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _2075 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2075] = return_data.size
                        mem[_2075 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _2087 = mem[_2075 + 32]
                            require mem[_2075 + 64] == mem[_2075 + 80 len 16]
                            require mem[_2075 + 96] == mem[_2075 + 112 len 16]
                            require mem[_2075 + 128] == mem[_2075 + 156 len 4]
                            require mem[_2075 + 160] == mem[_2075 + 188 len 4]
                            require mem[_2075 + 192] == mem[_2075 + 220 len 4]
                            if mem[_2075 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2147 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2147] == mem[_2147 + 30 len 2]
                                require mem[_2147 + 32] == mem[_2147 + 62 len 2]
                                if not mem[_2147 + 30 len 2]:
                                    _2179 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2179] = 0
                                    mem[_2179 + 32] = 0
                                    mem[_2179 + 64] = 0
                                    mem[_2179 + 96] = 0
                                    _2191 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_2191 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _2087
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2203 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_2203] == mem[_2203 + 12 len 20]
                                    _2220 = mem[_2203 + 32]
                                    _2221 = mem[_2203 + 64]
                                    _2222 = mem[_2203 + 96]
                                    _2223 = mem[_2203 + 128]
                                    require mem[_2203 + 128] == mem[_2203 + 158 len 2]
                                    require mem[_2203 + 160] == mem[_2203 + 190 len 2]
                                    require mem[_2203 + 224] == mem[_2203 + 240 len 16]
                                    mem[_2179 + 32] = mem[_2203 + 192]
                                    mem[_2179 + 96] = uint16(_2223)
                                    mem[_2191 + 64] = _2222
                                    mem[_2191 + 32] = _2221
                                    mem[_2191] = _2220
                                    _2271 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_2271 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _2191]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2780 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_2780 + 96] == mem[_2780 + 120 len 8]
                                        require mem[_2780 + 128] == mem[_2780 + 159 len 1]
                                        _2868 = mem[_2271 + 192]
                                        if mem[_2271 + 192] == -1:
                                            revert with 0, 17
                                        mem[_2271 + 192] = mem[_2271 + 192] + 1
                                        if _2868 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_2179 + 64] = 6
                                        mem[_2179] = _2087
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_2179 + 126 len 2] and 100 > 65535 / mem[_2179 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_2179 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_2179 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_2179 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _2986 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_2986] = 0
                                            mem[_2986 + 32] = 0
                                            mem[_2986 + 64] = 0
                                            mem[_2986 + 96] = 0
                                            _3006 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3006 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3040 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_3040] == mem[_3040 + 12 len 20]
                                            _3069 = mem[_3040 + 32]
                                            _3070 = mem[_3040 + 64]
                                            _3071 = mem[_3040 + 96]
                                            _3072 = mem[_3040 + 128]
                                            require mem[_3040 + 128] == mem[_3040 + 158 len 2]
                                            require mem[_3040 + 160] == mem[_3040 + 190 len 2]
                                            require mem[_3040 + 224] == mem[_3040 + 240 len 16]
                                            mem[_2986 + 32] = mem[_3040 + 192]
                                            mem[_2986 + 96] = uint16(_3072)
                                            mem[_3006 + 64] = _3071
                                            mem[_3006 + 32] = _3070
                                            mem[_3006] = _3069
                                            _3164 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_3164 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _3006]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3923 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_3923 + 96] == mem[_3923 + 120 len 8]
                                                require mem[_3923 + 128] == mem[_3923 + 159 len 1]
                                                _4027 = mem[_3164 + 192]
                                                if mem[_3164 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_3164 + 192] = mem[_3164 + 192] + 1
                                                if _4027 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_2986 + 64] = 6
                                                mem[_2986] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _2986
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_2179 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_2179 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16 < 8:
                                                        if mem[_2986 + 126 len 2] > mem[_2179 + 126 len 2]:
                                                            if mem[_2986 + 126 len 2] < mem[_2179 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_2986 + 126 len 2] - mem[_2179 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2986 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2986 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) > mem[_2179 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) < mem[_2179 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) - mem[_2179 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_2179 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) > 65535 / mem[_2179 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16 < 8:
                                                        if mem[_2986 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                            if mem[_2986 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_2986 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_2986 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2986 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_2986 + 64] = 0
                                            mem[_2986] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2986
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2179 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2179 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16 < 8:
                                                    if mem[_2986 + 126 len 2] > mem[_2179 + 126 len 2]:
                                                        if mem[_2986 + 126 len 2] < mem[_2179 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2986 + 126 len 2] - mem[_2179 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2986 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) > 65535 / mem[_2986 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) > mem[_2179 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) < mem[_2179 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) - mem[_2179 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_2179 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) > 65535 / mem[_2179 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16 < 8:
                                                    if mem[_2986 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                        if mem[_2986 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2986 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2986 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) > 65535 / mem[_2986 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2986 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_2179 + 64] = 0
                                    mem[_2179] = _2087
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_2179 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_2179 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_2179 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_2179 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_2179 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_2179 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2179 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_2179 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _2835 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_2835] = 0
                                        mem[_2835 + 32] = 0
                                        mem[_2835 + 64] = 0
                                        mem[_2835 + 96] = 0
                                        _2843 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_2843 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2862 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_2862] == mem[_2862 + 12 len 20]
                                        _2890 = mem[_2862 + 32]
                                        _2891 = mem[_2862 + 64]
                                        _2892 = mem[_2862 + 96]
                                        _2893 = mem[_2862 + 128]
                                        require mem[_2862 + 128] == mem[_2862 + 158 len 2]
                                        require mem[_2862 + 160] == mem[_2862 + 190 len 2]
                                        require mem[_2862 + 224] == mem[_2862 + 240 len 16]
                                        mem[_2835 + 32] = mem[_2862 + 192]
                                        mem[_2835 + 96] = uint16(_2893)
                                        mem[_2843 + 64] = _2892
                                        mem[_2843 + 32] = _2891
                                        mem[_2843] = _2890
                                        _2994 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_2994 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _2843]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3921 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_3921 + 96] == mem[_3921 + 120 len 8]
                                            require mem[_3921 + 128] == mem[_3921 + 159 len 1]
                                            _4026 = mem[_2994 + 192]
                                            if mem[_2994 + 192] == -1:
                                                revert with 0, 17
                                            mem[_2994 + 192] = mem[_2994 + 192] + 1
                                            if _4026 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_2835 + 64] = 6
                                            mem[_2835] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _2835
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_2179 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_2179 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16 < 8:
                                                    if mem[_2835 + 126 len 2] > mem[_2179 + 126 len 2]:
                                                        if mem[_2835 + 126 len 2] < mem[_2179 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_2835 + 126 len 2] - mem[_2179 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2835 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2835 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) > mem[_2179 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) < mem[_2179 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) - mem[_2179 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_2179 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) > 65535 / mem[_2179 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16 < 8:
                                                    if mem[_2835 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                        if mem[_2835 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_2835 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_2835 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_2835 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_2179 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_2179 + 64]) + 24 % 16) + 100) * mem[_2179 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_2835 + 64] = 0
                                        mem[_2835] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _2835
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_2179 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_2179 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16 < 8:
                                                if mem[_2835 + 126 len 2] > mem[_2179 + 126 len 2]:
                                                    if mem[_2835 + 126 len 2] < mem[_2179 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_2835 + 126 len 2] - mem[_2179 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2835 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) > 65535 / mem[_2835 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) > mem[_2179 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) < mem[_2179 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) - mem[_2179 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_2179 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) > 65535 / mem[_2179 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16 < 8:
                                                if mem[_2835 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                    if mem[_2835 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_2835 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_2835 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) > 65535 / mem[_2835 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) + 8) * mem[_2835 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_2179 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_2179 + 64] % 16) + 100) * mem[_2179 + 126 len 2]) / 100)) > 0:
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
            while s < ('cd', 4).length:
                _4835 = mem[64]
                mem[mem[64] + 36] = cd[((32 * s) + cd[4] + 36)]
                _4837 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_4837 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_4837 + 36 len 28]
                _4840 = mem[_4837]
                t = 0
                while t < _4840:
                    mem[t + _4835 + 68] = mem[_4837 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_4840) <= _4840:
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4840 + _4835 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _5542 = mem[128]
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
                                _5604 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_5604] == mem[_5604 + 30 len 2]
                                require mem[_5604 + 32] == mem[_5604 + 62 len 2]
                                if not mem[_5604 + 30 len 2]:
                                    _5636 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_5636] = 0
                                    mem[_5636 + 32] = 0
                                    mem[_5636 + 64] = 0
                                    mem[_5636 + 96] = 0
                                    _5644 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5644 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _5542
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5660 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_5660] == mem[_5660 + 12 len 20]
                                    _5666 = mem[_5660 + 32]
                                    _5667 = mem[_5660 + 64]
                                    _5668 = mem[_5660 + 96]
                                    _5669 = mem[_5660 + 128]
                                    require mem[_5660 + 128] == mem[_5660 + 158 len 2]
                                    require mem[_5660 + 160] == mem[_5660 + 190 len 2]
                                    require mem[_5660 + 224] == mem[_5660 + 240 len 16]
                                    mem[_5636 + 32] = mem[_5660 + 192]
                                    mem[_5636 + 96] = uint16(_5669)
                                    mem[_5644 + 64] = _5668
                                    mem[_5644 + 32] = _5667
                                    mem[_5644] = _5666
                                    _5728 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_5728 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _5644]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6235 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_6235 + 96] == mem[_6235 + 120 len 8]
                                        require mem[_6235 + 128] == mem[_6235 + 159 len 1]
                                        _6327 = mem[_5728 + 192]
                                        if mem[_5728 + 192] == -1:
                                            revert with 0, 17
                                        mem[_5728 + 192] = mem[_5728 + 192] + 1
                                        if _6327 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_5636 + 64] = 6
                                        mem[_5636] = _5542
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_5636 + 126 len 2] and 100 > 65535 / mem[_5636 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_5636 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_5636 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_5636 + 126 len 2]) / 100)) > 0:
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
                                            _6467 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_6467 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6493 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_6493] == mem[_6493 + 12 len 20]
                                            _6521 = mem[_6493 + 32]
                                            _6522 = mem[_6493 + 64]
                                            _6523 = mem[_6493 + 96]
                                            _6524 = mem[_6493 + 128]
                                            require mem[_6493 + 128] == mem[_6493 + 158 len 2]
                                            require mem[_6493 + 160] == mem[_6493 + 190 len 2]
                                            require mem[_6493 + 224] == mem[_6493 + 240 len 16]
                                            mem[_6441 + 32] = mem[_6493 + 192]
                                            mem[_6441 + 96] = uint16(_6524)
                                            mem[_6467 + 64] = _6523
                                            mem[_6467 + 32] = _6522
                                            mem[_6467] = _6521
                                            _6621 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_6621 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _6467]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7372 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_7372 + 96] == mem[_7372 + 120 len 8]
                                                require mem[_7372 + 128] == mem[_7372 + 159 len 1]
                                                _7486 = mem[_6621 + 192]
                                                if mem[_6621 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_6621 + 192] = mem[_6621 + 192] + 1
                                                if _7486 + 1 != 2:
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
                                                if mem[_5636 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_5636 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16 < 8:
                                                        if mem[_6441 + 126 len 2] > mem[_5636 + 126 len 2]:
                                                            if mem[_6441 + 126 len 2] < mem[_5636 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_6441 + 126 len 2] - mem[_5636 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6441 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6441 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) > mem[_5636 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) < mem[_5636 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) - mem[_5636 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_5636 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) > 65535 / mem[_5636 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16 < 8:
                                                        if mem[_6441 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                            if mem[_6441 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_6441 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6441 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6441 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100)) > 0:
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
                                            if mem[_5636 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5636 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16 < 8:
                                                    if mem[_6441 + 126 len 2] > mem[_5636 + 126 len 2]:
                                                        if mem[_6441 + 126 len 2] < mem[_5636 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6441 + 126 len 2] - mem[_5636 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6441 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) > 65535 / mem[_6441 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) > mem[_5636 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) < mem[_5636 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) - mem[_5636 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_5636 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) > 65535 / mem[_5636 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16 < 8:
                                                    if mem[_6441 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                        if mem[_6441 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6441 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6441 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) > 65535 / mem[_6441 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6441 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_5636 + 64] = 0
                                    mem[_5636] = _5542
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_5636 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_5636 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_5636 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_5636 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_5636 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_5636 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5636 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_5636 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100)) > 0:
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
                                        _6303 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_6303 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6321 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_6321] == mem[_6321 + 12 len 20]
                                        _6342 = mem[_6321 + 32]
                                        _6343 = mem[_6321 + 64]
                                        _6344 = mem[_6321 + 96]
                                        _6345 = mem[_6321 + 128]
                                        require mem[_6321 + 128] == mem[_6321 + 158 len 2]
                                        require mem[_6321 + 160] == mem[_6321 + 190 len 2]
                                        require mem[_6321 + 224] == mem[_6321 + 240 len 16]
                                        mem[_6288 + 32] = mem[_6321 + 192]
                                        mem[_6288 + 96] = uint16(_6345)
                                        mem[_6303 + 64] = _6344
                                        mem[_6303 + 32] = _6343
                                        mem[_6303] = _6342
                                        _6453 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_6453 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _6303]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7370 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_7370 + 96] == mem[_7370 + 120 len 8]
                                            require mem[_7370 + 128] == mem[_7370 + 159 len 1]
                                            _7485 = mem[_6453 + 192]
                                            if mem[_6453 + 192] == -1:
                                                revert with 0, 17
                                            mem[_6453 + 192] = mem[_6453 + 192] + 1
                                            if _7485 + 1 != 2:
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
                                            if mem[_5636 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5636 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16 < 8:
                                                    if mem[_6288 + 126 len 2] > mem[_5636 + 126 len 2]:
                                                        if mem[_6288 + 126 len 2] < mem[_5636 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6288 + 126 len 2] - mem[_5636 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6288 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6288 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) > mem[_5636 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) < mem[_5636 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) - mem[_5636 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_5636 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) > 65535 / mem[_5636 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16 < 8:
                                                    if mem[_6288 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                        if mem[_6288 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6288 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6288 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6288 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5636 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5636 + 64]) + 24 % 16) + 100) * mem[_5636 + 126 len 2]) / 100)) > 0:
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
                                        if mem[_5636 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_5636 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16 < 8:
                                                if mem[_6288 + 126 len 2] > mem[_5636 + 126 len 2]:
                                                    if mem[_6288 + 126 len 2] < mem[_5636 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_6288 + 126 len 2] - mem[_5636 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6288 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) > 65535 / mem[_6288 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) > mem[_5636 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) < mem[_5636 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) - mem[_5636 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5636 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) > 65535 / mem[_5636 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16 < 8:
                                                if mem[_6288 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                    if mem[_6288 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_6288 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6288 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) > 65535 / mem[_6288 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) + 8) * mem[_6288 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5636 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5636 + 64] % 16) + 100) * mem[_5636 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _5533 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5533] = return_data.size
                        mem[_5533 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _5543 = mem[_5533 + 32]
                            require mem[_5533 + 64] == mem[_5533 + 80 len 16]
                            require mem[_5533 + 96] == mem[_5533 + 112 len 16]
                            require mem[_5533 + 128] == mem[_5533 + 156 len 4]
                            require mem[_5533 + 160] == mem[_5533 + 188 len 4]
                            require mem[_5533 + 192] == mem[_5533 + 220 len 4]
                            if mem[_5533 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5605 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_5605] == mem[_5605 + 30 len 2]
                                require mem[_5605 + 32] == mem[_5605 + 62 len 2]
                                if not mem[_5605 + 30 len 2]:
                                    _5637 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_5637] = 0
                                    mem[_5637 + 32] = 0
                                    mem[_5637 + 64] = 0
                                    mem[_5637 + 96] = 0
                                    _5645 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5645 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _5543
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5661 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_5661] == mem[_5661 + 12 len 20]
                                    _5670 = mem[_5661 + 32]
                                    _5671 = mem[_5661 + 64]
                                    _5672 = mem[_5661 + 96]
                                    _5673 = mem[_5661 + 128]
                                    require mem[_5661 + 128] == mem[_5661 + 158 len 2]
                                    require mem[_5661 + 160] == mem[_5661 + 190 len 2]
                                    require mem[_5661 + 224] == mem[_5661 + 240 len 16]
                                    mem[_5637 + 32] = mem[_5661 + 192]
                                    mem[_5637 + 96] = uint16(_5673)
                                    mem[_5645 + 64] = _5672
                                    mem[_5645 + 32] = _5671
                                    mem[_5645] = _5670
                                    _5729 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_5729 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _5645]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6237 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_6237 + 96] == mem[_6237 + 120 len 8]
                                        require mem[_6237 + 128] == mem[_6237 + 159 len 1]
                                        _6328 = mem[_5729 + 192]
                                        if mem[_5729 + 192] == -1:
                                            revert with 0, 17
                                        mem[_5729 + 192] = mem[_5729 + 192] + 1
                                        if _6328 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_5637 + 64] = 6
                                        mem[_5637] = _5543
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_5637 + 126 len 2] and 100 > 65535 / mem[_5637 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_5637 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_5637 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_5637 + 126 len 2]) / 100)) > 0:
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
                                            _6468 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_6468 len 96] = call.data[calldata.size len 96]
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
                                            _6525 = mem[_6496 + 32]
                                            _6526 = mem[_6496 + 64]
                                            _6527 = mem[_6496 + 96]
                                            _6528 = mem[_6496 + 128]
                                            require mem[_6496 + 128] == mem[_6496 + 158 len 2]
                                            require mem[_6496 + 160] == mem[_6496 + 190 len 2]
                                            require mem[_6496 + 224] == mem[_6496 + 240 len 16]
                                            mem[_6444 + 32] = mem[_6496 + 192]
                                            mem[_6444 + 96] = uint16(_6528)
                                            mem[_6468 + 64] = _6527
                                            mem[_6468 + 32] = _6526
                                            mem[_6468] = _6525
                                            _6622 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_6622 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _6468]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7376 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_7376 + 96] == mem[_7376 + 120 len 8]
                                                require mem[_7376 + 128] == mem[_7376 + 159 len 1]
                                                _7488 = mem[_6622 + 192]
                                                if mem[_6622 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_6622 + 192] = mem[_6622 + 192] + 1
                                                if _7488 + 1 != 2:
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
                                                if mem[_5637 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_5637 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16 < 8:
                                                        if mem[_6444 + 126 len 2] > mem[_5637 + 126 len 2]:
                                                            if mem[_6444 + 126 len 2] < mem[_5637 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_6444 + 126 len 2] - mem[_5637 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6444 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6444 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) > mem[_5637 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) < mem[_5637 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) - mem[_5637 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_5637 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) > 65535 / mem[_5637 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16 < 8:
                                                        if mem[_6444 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                            if mem[_6444 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_6444 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6444 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6444 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100)) > 0:
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
                                            if mem[_5637 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5637 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16 < 8:
                                                    if mem[_6444 + 126 len 2] > mem[_5637 + 126 len 2]:
                                                        if mem[_6444 + 126 len 2] < mem[_5637 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6444 + 126 len 2] - mem[_5637 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6444 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) > 65535 / mem[_6444 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) > mem[_5637 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) < mem[_5637 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) - mem[_5637 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_5637 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) > 65535 / mem[_5637 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16 < 8:
                                                    if mem[_6444 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                        if mem[_6444 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6444 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6444 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) > 65535 / mem[_6444 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6444 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_5637 + 64] = 0
                                    mem[_5637] = _5543
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_5637 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_5637 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_5637 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_5637 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_5637 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_5637 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5637 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_5637 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100)) > 0:
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
                                        _6304 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_6304 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6322 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_6322] == mem[_6322 + 12 len 20]
                                        _6346 = mem[_6322 + 32]
                                        _6347 = mem[_6322 + 64]
                                        _6348 = mem[_6322 + 96]
                                        _6349 = mem[_6322 + 128]
                                        require mem[_6322 + 128] == mem[_6322 + 158 len 2]
                                        require mem[_6322 + 160] == mem[_6322 + 190 len 2]
                                        require mem[_6322 + 224] == mem[_6322 + 240 len 16]
                                        mem[_6291 + 32] = mem[_6322 + 192]
                                        mem[_6291 + 96] = uint16(_6349)
                                        mem[_6304 + 64] = _6348
                                        mem[_6304 + 32] = _6347
                                        mem[_6304] = _6346
                                        _6454 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_6454 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _6304]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7374 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_7374 + 96] == mem[_7374 + 120 len 8]
                                            require mem[_7374 + 128] == mem[_7374 + 159 len 1]
                                            _7487 = mem[_6454 + 192]
                                            if mem[_6454 + 192] == -1:
                                                revert with 0, 17
                                            mem[_6454 + 192] = mem[_6454 + 192] + 1
                                            if _7487 + 1 != 2:
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
                                            if mem[_5637 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5637 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16 < 8:
                                                    if mem[_6291 + 126 len 2] > mem[_5637 + 126 len 2]:
                                                        if mem[_6291 + 126 len 2] < mem[_5637 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6291 + 126 len 2] - mem[_5637 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6291 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6291 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) > mem[_5637 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) < mem[_5637 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) - mem[_5637 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_5637 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) > 65535 / mem[_5637 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16 < 8:
                                                    if mem[_6291 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                        if mem[_6291 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6291 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6291 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6291 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5637 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5637 + 64]) + 24 % 16) + 100) * mem[_5637 + 126 len 2]) / 100)) > 0:
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
                                        if mem[_5637 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_5637 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16 < 8:
                                                if mem[_6291 + 126 len 2] > mem[_5637 + 126 len 2]:
                                                    if mem[_6291 + 126 len 2] < mem[_5637 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_6291 + 126 len 2] - mem[_5637 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6291 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) > 65535 / mem[_6291 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) > mem[_5637 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) < mem[_5637 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) - mem[_5637 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5637 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) > 65535 / mem[_5637 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16 < 8:
                                                if mem[_6291 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                    if mem[_6291 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_6291 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6291 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) > 65535 / mem[_6291 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) + 8) * mem[_6291 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5637 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5637 + 64] % 16) + 100) * mem[_5637 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                else:
                    mem[_4835 + _4840 + 68] = 0
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4840 + _4835 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _5547 = mem[128]
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
                                _5608 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_5608] == mem[_5608 + 30 len 2]
                                require mem[_5608 + 32] == mem[_5608 + 62 len 2]
                                if not mem[_5608 + 30 len 2]:
                                    _5640 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_5640] = 0
                                    mem[_5640 + 32] = 0
                                    mem[_5640 + 64] = 0
                                    mem[_5640 + 96] = 0
                                    _5652 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5652 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _5547
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5662 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_5662] == mem[_5662 + 12 len 20]
                                    _5676 = mem[_5662 + 32]
                                    _5677 = mem[_5662 + 64]
                                    _5678 = mem[_5662 + 96]
                                    _5679 = mem[_5662 + 128]
                                    require mem[_5662 + 128] == mem[_5662 + 158 len 2]
                                    require mem[_5662 + 160] == mem[_5662 + 190 len 2]
                                    require mem[_5662 + 224] == mem[_5662 + 240 len 16]
                                    mem[_5640 + 32] = mem[_5662 + 192]
                                    mem[_5640 + 96] = uint16(_5679)
                                    mem[_5652 + 64] = _5678
                                    mem[_5652 + 32] = _5677
                                    mem[_5652] = _5676
                                    _5738 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_5738 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _5652]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6239 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_6239 + 96] == mem[_6239 + 120 len 8]
                                        require mem[_6239 + 128] == mem[_6239 + 159 len 1]
                                        _6329 = mem[_5738 + 192]
                                        if mem[_5738 + 192] == -1:
                                            revert with 0, 17
                                        mem[_5738 + 192] = mem[_5738 + 192] + 1
                                        if _6329 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_5640 + 64] = 6
                                        mem[_5640] = _5547
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_5640 + 126 len 2] and 100 > 65535 / mem[_5640 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_5640 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_5640 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _6447 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_6447] = 0
                                            mem[_6447 + 32] = 0
                                            mem[_6447 + 64] = 0
                                            mem[_6447 + 96] = 0
                                            _6469 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_6469 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6499 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_6499] == mem[_6499 + 12 len 20]
                                            _6529 = mem[_6499 + 32]
                                            _6530 = mem[_6499 + 64]
                                            _6531 = mem[_6499 + 96]
                                            _6532 = mem[_6499 + 128]
                                            require mem[_6499 + 128] == mem[_6499 + 158 len 2]
                                            require mem[_6499 + 160] == mem[_6499 + 190 len 2]
                                            require mem[_6499 + 224] == mem[_6499 + 240 len 16]
                                            mem[_6447 + 32] = mem[_6499 + 192]
                                            mem[_6447 + 96] = uint16(_6532)
                                            mem[_6469 + 64] = _6531
                                            mem[_6469 + 32] = _6530
                                            mem[_6469] = _6529
                                            _6623 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_6623 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _6469]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7380 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_7380 + 96] == mem[_7380 + 120 len 8]
                                                require mem[_7380 + 128] == mem[_7380 + 159 len 1]
                                                _7490 = mem[_6623 + 192]
                                                if mem[_6623 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_6623 + 192] = mem[_6623 + 192] + 1
                                                if _7490 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_6447 + 64] = 6
                                                mem[_6447] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _6447
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_5640 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_5640 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16 < 8:
                                                        if mem[_6447 + 126 len 2] > mem[_5640 + 126 len 2]:
                                                            if mem[_6447 + 126 len 2] < mem[_5640 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_6447 + 126 len 2] - mem[_5640 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6447 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6447 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) > mem[_5640 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) < mem[_5640 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) - mem[_5640 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_5640 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) > 65535 / mem[_5640 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16 < 8:
                                                        if mem[_6447 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                            if mem[_6447 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_6447 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6447 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6447 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_6447 + 64] = 0
                                            mem[_6447] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6447
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5640 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5640 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16 < 8:
                                                    if mem[_6447 + 126 len 2] > mem[_5640 + 126 len 2]:
                                                        if mem[_6447 + 126 len 2] < mem[_5640 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6447 + 126 len 2] - mem[_5640 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6447 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) > 65535 / mem[_6447 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) > mem[_5640 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) < mem[_5640 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) - mem[_5640 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_5640 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) > 65535 / mem[_5640 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16 < 8:
                                                    if mem[_6447 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                        if mem[_6447 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6447 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6447 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) > 65535 / mem[_6447 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6447 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_5640 + 64] = 0
                                    mem[_5640] = _5547
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_5640 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_5640 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_5640 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_5640 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_5640 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_5640 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5640 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_5640 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _6294 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_6294] = 0
                                        mem[_6294 + 32] = 0
                                        mem[_6294 + 64] = 0
                                        mem[_6294 + 96] = 0
                                        _6305 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_6305 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6323 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_6323] == mem[_6323 + 12 len 20]
                                        _6350 = mem[_6323 + 32]
                                        _6351 = mem[_6323 + 64]
                                        _6352 = mem[_6323 + 96]
                                        _6353 = mem[_6323 + 128]
                                        require mem[_6323 + 128] == mem[_6323 + 158 len 2]
                                        require mem[_6323 + 160] == mem[_6323 + 190 len 2]
                                        require mem[_6323 + 224] == mem[_6323 + 240 len 16]
                                        mem[_6294 + 32] = mem[_6323 + 192]
                                        mem[_6294 + 96] = uint16(_6353)
                                        mem[_6305 + 64] = _6352
                                        mem[_6305 + 32] = _6351
                                        mem[_6305] = _6350
                                        _6455 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_6455 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _6305]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7378 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_7378 + 96] == mem[_7378 + 120 len 8]
                                            require mem[_7378 + 128] == mem[_7378 + 159 len 1]
                                            _7489 = mem[_6455 + 192]
                                            if mem[_6455 + 192] == -1:
                                                revert with 0, 17
                                            mem[_6455 + 192] = mem[_6455 + 192] + 1
                                            if _7489 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_6294 + 64] = 6
                                            mem[_6294] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6294
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5640 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5640 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16 < 8:
                                                    if mem[_6294 + 126 len 2] > mem[_5640 + 126 len 2]:
                                                        if mem[_6294 + 126 len 2] < mem[_5640 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6294 + 126 len 2] - mem[_5640 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6294 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6294 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) > mem[_5640 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) < mem[_5640 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) - mem[_5640 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_5640 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) > 65535 / mem[_5640 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16 < 8:
                                                    if mem[_6294 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                        if mem[_6294 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6294 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6294 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6294 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5640 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5640 + 64]) + 24 % 16) + 100) * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_6294 + 64] = 0
                                        mem[_6294] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _6294
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_5640 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_5640 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16 < 8:
                                                if mem[_6294 + 126 len 2] > mem[_5640 + 126 len 2]:
                                                    if mem[_6294 + 126 len 2] < mem[_5640 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_6294 + 126 len 2] - mem[_5640 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6294 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) > 65535 / mem[_6294 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) > mem[_5640 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) < mem[_5640 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) - mem[_5640 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5640 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) > 65535 / mem[_5640 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16 < 8:
                                                if mem[_6294 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                    if mem[_6294 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_6294 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6294 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) > 65535 / mem[_6294 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) + 8) * mem[_6294 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5640 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5640 + 64] % 16) + 100) * mem[_5640 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _5535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5535] = return_data.size
                        mem[_5535 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _5548 = mem[_5535 + 32]
                            require mem[_5535 + 64] == mem[_5535 + 80 len 16]
                            require mem[_5535 + 96] == mem[_5535 + 112 len 16]
                            require mem[_5535 + 128] == mem[_5535 + 156 len 4]
                            require mem[_5535 + 160] == mem[_5535 + 188 len 4]
                            require mem[_5535 + 192] == mem[_5535 + 220 len 4]
                            if mem[_5535 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5609 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_5609] == mem[_5609 + 30 len 2]
                                require mem[_5609 + 32] == mem[_5609 + 62 len 2]
                                if not mem[_5609 + 30 len 2]:
                                    _5641 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_5641] = 0
                                    mem[_5641 + 32] = 0
                                    mem[_5641 + 64] = 0
                                    mem[_5641 + 96] = 0
                                    _5653 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_5653 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _5548
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5663 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_5663] == mem[_5663 + 12 len 20]
                                    _5680 = mem[_5663 + 32]
                                    _5681 = mem[_5663 + 64]
                                    _5682 = mem[_5663 + 96]
                                    _5683 = mem[_5663 + 128]
                                    require mem[_5663 + 128] == mem[_5663 + 158 len 2]
                                    require mem[_5663 + 160] == mem[_5663 + 190 len 2]
                                    require mem[_5663 + 224] == mem[_5663 + 240 len 16]
                                    mem[_5641 + 32] = mem[_5663 + 192]
                                    mem[_5641 + 96] = uint16(_5683)
                                    mem[_5653 + 64] = _5682
                                    mem[_5653 + 32] = _5681
                                    mem[_5653] = _5680
                                    _5739 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_5739 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _5653]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6241 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_6241 + 96] == mem[_6241 + 120 len 8]
                                        require mem[_6241 + 128] == mem[_6241 + 159 len 1]
                                        _6330 = mem[_5739 + 192]
                                        if mem[_5739 + 192] == -1:
                                            revert with 0, 17
                                        mem[_5739 + 192] = mem[_5739 + 192] + 1
                                        if _6330 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_5641 + 64] = 6
                                        mem[_5641] = _5548
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_5641 + 126 len 2] and 100 > 65535 / mem[_5641 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_5641 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_5641 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_5641 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _6450 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_6450] = 0
                                            mem[_6450 + 32] = 0
                                            mem[_6450 + 64] = 0
                                            mem[_6450 + 96] = 0
                                            _6470 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_6470 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6502 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_6502] == mem[_6502 + 12 len 20]
                                            _6533 = mem[_6502 + 32]
                                            _6534 = mem[_6502 + 64]
                                            _6535 = mem[_6502 + 96]
                                            _6536 = mem[_6502 + 128]
                                            require mem[_6502 + 128] == mem[_6502 + 158 len 2]
                                            require mem[_6502 + 160] == mem[_6502 + 190 len 2]
                                            require mem[_6502 + 224] == mem[_6502 + 240 len 16]
                                            mem[_6450 + 32] = mem[_6502 + 192]
                                            mem[_6450 + 96] = uint16(_6536)
                                            mem[_6470 + 64] = _6535
                                            mem[_6470 + 32] = _6534
                                            mem[_6470] = _6533
                                            _6624 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_6624 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _6470]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7384 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_7384 + 96] == mem[_7384 + 120 len 8]
                                                require mem[_7384 + 128] == mem[_7384 + 159 len 1]
                                                _7492 = mem[_6624 + 192]
                                                if mem[_6624 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_6624 + 192] = mem[_6624 + 192] + 1
                                                if _7492 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_6450 + 64] = 6
                                                mem[_6450] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _6450
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_5641 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_5641 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16 < 8:
                                                        if mem[_6450 + 126 len 2] > mem[_5641 + 126 len 2]:
                                                            if mem[_6450 + 126 len 2] < mem[_5641 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_6450 + 126 len 2] - mem[_5641 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6450 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6450 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) > mem[_5641 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) < mem[_5641 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) - mem[_5641 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_5641 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) > 65535 / mem[_5641 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16 < 8:
                                                        if mem[_6450 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                            if mem[_6450 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_6450 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_6450 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6450 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_6450 + 64] = 0
                                            mem[_6450] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6450
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5641 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5641 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16 < 8:
                                                    if mem[_6450 + 126 len 2] > mem[_5641 + 126 len 2]:
                                                        if mem[_6450 + 126 len 2] < mem[_5641 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6450 + 126 len 2] - mem[_5641 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6450 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) > 65535 / mem[_6450 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) > mem[_5641 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) < mem[_5641 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) - mem[_5641 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_5641 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) > 65535 / mem[_5641 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16 < 8:
                                                    if mem[_6450 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                        if mem[_6450 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6450 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6450 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) > 65535 / mem[_6450 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6450 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_5641 + 64] = 0
                                    mem[_5641] = _5548
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_5641 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_5641 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_5641 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_5641 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_5641 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_5641 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5641 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_5641 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _6297 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_6297] = 0
                                        mem[_6297 + 32] = 0
                                        mem[_6297 + 64] = 0
                                        mem[_6297 + 96] = 0
                                        _6306 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_6306 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6324 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_6324] == mem[_6324 + 12 len 20]
                                        _6354 = mem[_6324 + 32]
                                        _6355 = mem[_6324 + 64]
                                        _6356 = mem[_6324 + 96]
                                        _6357 = mem[_6324 + 128]
                                        require mem[_6324 + 128] == mem[_6324 + 158 len 2]
                                        require mem[_6324 + 160] == mem[_6324 + 190 len 2]
                                        require mem[_6324 + 224] == mem[_6324 + 240 len 16]
                                        mem[_6297 + 32] = mem[_6324 + 192]
                                        mem[_6297 + 96] = uint16(_6357)
                                        mem[_6306 + 64] = _6356
                                        mem[_6306 + 32] = _6355
                                        mem[_6306] = _6354
                                        _6456 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_6456 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _6306]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7382 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_7382 + 96] == mem[_7382 + 120 len 8]
                                            require mem[_7382 + 128] == mem[_7382 + 159 len 1]
                                            _7491 = mem[_6456 + 192]
                                            if mem[_6456 + 192] == -1:
                                                revert with 0, 17
                                            mem[_6456 + 192] = mem[_6456 + 192] + 1
                                            if _7491 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_6297 + 64] = 6
                                            mem[_6297] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _6297
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_5641 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_5641 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16 < 8:
                                                    if mem[_6297 + 126 len 2] > mem[_5641 + 126 len 2]:
                                                        if mem[_6297 + 126 len 2] < mem[_5641 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_6297 + 126 len 2] - mem[_5641 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6297 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6297 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) > mem[_5641 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) < mem[_5641 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) - mem[_5641 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_5641 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) > 65535 / mem[_5641 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16 < 8:
                                                    if mem[_6297 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                        if mem[_6297 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_6297 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_6297 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_6297 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_5641 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_5641 + 64]) + 24 % 16) + 100) * mem[_5641 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_6297 + 64] = 0
                                        mem[_6297] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _6297
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_5641 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_5641 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16 < 8:
                                                if mem[_6297 + 126 len 2] > mem[_5641 + 126 len 2]:
                                                    if mem[_6297 + 126 len 2] < mem[_5641 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_6297 + 126 len 2] - mem[_5641 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6297 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) > 65535 / mem[_6297 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) > mem[_5641 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) < mem[_5641 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) - mem[_5641 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_5641 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) > 65535 / mem[_5641 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16 < 8:
                                                if mem[_6297 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                    if mem[_6297 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_6297 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_6297 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) > 65535 / mem[_6297 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) + 8) * mem[_6297 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_5641 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_5641 + 64] % 16) + 100) * mem[_5641 + 126 len 2]) / 100)) > 0:
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
            while s < ('cd', 4).length:
                _8295 = mem[64]
                mem[mem[64] + 36] = cd[((32 * s) + cd[4] + 36)]
                _8297 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_8297 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_8297 + 36 len 28]
                _8300 = mem[_8297]
                t = 0
                while t < _8300:
                    mem[t + _8295 + 68] = mem[_8297 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_8300) <= _8300:
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8300 + _8295 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _9002 = mem[128]
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
                                _9064 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_9064] == mem[_9064 + 30 len 2]
                                require mem[_9064 + 32] == mem[_9064 + 62 len 2]
                                if not mem[_9064 + 30 len 2]:
                                    _9096 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9096] = 0
                                    mem[_9096 + 32] = 0
                                    mem[_9096 + 64] = 0
                                    mem[_9096 + 96] = 0
                                    _9104 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9104 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _9002
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9120 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_9120] == mem[_9120 + 12 len 20]
                                    _9126 = mem[_9120 + 32]
                                    _9127 = mem[_9120 + 64]
                                    _9128 = mem[_9120 + 96]
                                    _9129 = mem[_9120 + 128]
                                    require mem[_9120 + 128] == mem[_9120 + 158 len 2]
                                    require mem[_9120 + 160] == mem[_9120 + 190 len 2]
                                    require mem[_9120 + 224] == mem[_9120 + 240 len 16]
                                    mem[_9096 + 32] = mem[_9120 + 192]
                                    mem[_9096 + 96] = uint16(_9129)
                                    mem[_9104 + 64] = _9128
                                    mem[_9104 + 32] = _9127
                                    mem[_9104] = _9126
                                    _9188 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_9188 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _9104]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9695 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_9695 + 96] == mem[_9695 + 120 len 8]
                                        require mem[_9695 + 128] == mem[_9695 + 159 len 1]
                                        _9787 = mem[_9188 + 192]
                                        if mem[_9188 + 192] == -1:
                                            revert with 0, 17
                                        mem[_9188 + 192] = mem[_9188 + 192] + 1
                                        if _9787 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_9096 + 64] = 6
                                        mem[_9096] = _9002
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_9096 + 126 len 2] and 100 > 65535 / mem[_9096 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_9096 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_9096 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_9096 + 126 len 2]) / 100)) > 0:
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
                                            _9927 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_9927 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9953 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_9953] == mem[_9953 + 12 len 20]
                                            _9981 = mem[_9953 + 32]
                                            _9982 = mem[_9953 + 64]
                                            _9983 = mem[_9953 + 96]
                                            _9984 = mem[_9953 + 128]
                                            require mem[_9953 + 128] == mem[_9953 + 158 len 2]
                                            require mem[_9953 + 160] == mem[_9953 + 190 len 2]
                                            require mem[_9953 + 224] == mem[_9953 + 240 len 16]
                                            mem[_9901 + 32] = mem[_9953 + 192]
                                            mem[_9901 + 96] = uint16(_9984)
                                            mem[_9927 + 64] = _9983
                                            mem[_9927 + 32] = _9982
                                            mem[_9927] = _9981
                                            _10081 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_10081 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _9927]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10832 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_10832 + 96] == mem[_10832 + 120 len 8]
                                                require mem[_10832 + 128] == mem[_10832 + 159 len 1]
                                                _10946 = mem[_10081 + 192]
                                                if mem[_10081 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_10081 + 192] = mem[_10081 + 192] + 1
                                                if _10946 + 1 != 2:
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
                                                if mem[_9096 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_9096 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16 < 8:
                                                        if mem[_9901 + 126 len 2] > mem[_9096 + 126 len 2]:
                                                            if mem[_9901 + 126 len 2] < mem[_9096 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_9901 + 126 len 2] - mem[_9096 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9901 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9901 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) > mem[_9096 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) < mem[_9096 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) - mem[_9096 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_9096 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) > 65535 / mem[_9096 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16 < 8:
                                                        if mem[_9901 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                            if mem[_9901 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_9901 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9901 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9901 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100)) > 0:
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
                                            if mem[_9096 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9096 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16 < 8:
                                                    if mem[_9901 + 126 len 2] > mem[_9096 + 126 len 2]:
                                                        if mem[_9901 + 126 len 2] < mem[_9096 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9901 + 126 len 2] - mem[_9096 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9901 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) > 65535 / mem[_9901 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) > mem[_9096 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) < mem[_9096 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) - mem[_9096 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_9096 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) > 65535 / mem[_9096 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16 < 8:
                                                    if mem[_9901 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                        if mem[_9901 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9901 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9901 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) > 65535 / mem[_9901 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9901 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_9096 + 64] = 0
                                    mem[_9096] = _9002
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_9096 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_9096 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_9096 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_9096 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_9096 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_9096 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9096 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_9096 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100)) > 0:
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
                                        _9763 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9763 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9781 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_9781] == mem[_9781 + 12 len 20]
                                        _9802 = mem[_9781 + 32]
                                        _9803 = mem[_9781 + 64]
                                        _9804 = mem[_9781 + 96]
                                        _9805 = mem[_9781 + 128]
                                        require mem[_9781 + 128] == mem[_9781 + 158 len 2]
                                        require mem[_9781 + 160] == mem[_9781 + 190 len 2]
                                        require mem[_9781 + 224] == mem[_9781 + 240 len 16]
                                        mem[_9748 + 32] = mem[_9781 + 192]
                                        mem[_9748 + 96] = uint16(_9805)
                                        mem[_9763 + 64] = _9804
                                        mem[_9763 + 32] = _9803
                                        mem[_9763] = _9802
                                        _9913 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_9913 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _9763]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10830 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_10830 + 96] == mem[_10830 + 120 len 8]
                                            require mem[_10830 + 128] == mem[_10830 + 159 len 1]
                                            _10945 = mem[_9913 + 192]
                                            if mem[_9913 + 192] == -1:
                                                revert with 0, 17
                                            mem[_9913 + 192] = mem[_9913 + 192] + 1
                                            if _10945 + 1 != 2:
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
                                            if mem[_9096 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9096 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16 < 8:
                                                    if mem[_9748 + 126 len 2] > mem[_9096 + 126 len 2]:
                                                        if mem[_9748 + 126 len 2] < mem[_9096 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9748 + 126 len 2] - mem[_9096 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9748 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9748 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) > mem[_9096 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) < mem[_9096 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) - mem[_9096 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_9096 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) > 65535 / mem[_9096 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16 < 8:
                                                    if mem[_9748 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                        if mem[_9748 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9748 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9748 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9748 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9096 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9096 + 64]) + 24 % 16) + 100) * mem[_9096 + 126 len 2]) / 100)) > 0:
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
                                        if mem[_9096 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_9096 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16 < 8:
                                                if mem[_9748 + 126 len 2] > mem[_9096 + 126 len 2]:
                                                    if mem[_9748 + 126 len 2] < mem[_9096 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_9748 + 126 len 2] - mem[_9096 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9748 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) > 65535 / mem[_9748 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) > mem[_9096 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) < mem[_9096 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) - mem[_9096 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9096 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) > 65535 / mem[_9096 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16 < 8:
                                                if mem[_9748 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                    if mem[_9748 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_9748 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9748 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) > 65535 / mem[_9748 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) + 8) * mem[_9748 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9096 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9096 + 64] % 16) + 100) * mem[_9096 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _8993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8993] = return_data.size
                        mem[_8993 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _9003 = mem[_8993 + 32]
                            require mem[_8993 + 64] == mem[_8993 + 80 len 16]
                            require mem[_8993 + 96] == mem[_8993 + 112 len 16]
                            require mem[_8993 + 128] == mem[_8993 + 156 len 4]
                            require mem[_8993 + 160] == mem[_8993 + 188 len 4]
                            require mem[_8993 + 192] == mem[_8993 + 220 len 4]
                            if mem[_8993 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9065 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_9065] == mem[_9065 + 30 len 2]
                                require mem[_9065 + 32] == mem[_9065 + 62 len 2]
                                if not mem[_9065 + 30 len 2]:
                                    _9097 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9097] = 0
                                    mem[_9097 + 32] = 0
                                    mem[_9097 + 64] = 0
                                    mem[_9097 + 96] = 0
                                    _9105 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9105 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _9003
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9121 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_9121] == mem[_9121 + 12 len 20]
                                    _9130 = mem[_9121 + 32]
                                    _9131 = mem[_9121 + 64]
                                    _9132 = mem[_9121 + 96]
                                    _9133 = mem[_9121 + 128]
                                    require mem[_9121 + 128] == mem[_9121 + 158 len 2]
                                    require mem[_9121 + 160] == mem[_9121 + 190 len 2]
                                    require mem[_9121 + 224] == mem[_9121 + 240 len 16]
                                    mem[_9097 + 32] = mem[_9121 + 192]
                                    mem[_9097 + 96] = uint16(_9133)
                                    mem[_9105 + 64] = _9132
                                    mem[_9105 + 32] = _9131
                                    mem[_9105] = _9130
                                    _9189 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_9189 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _9105]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9697 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_9697 + 96] == mem[_9697 + 120 len 8]
                                        require mem[_9697 + 128] == mem[_9697 + 159 len 1]
                                        _9788 = mem[_9189 + 192]
                                        if mem[_9189 + 192] == -1:
                                            revert with 0, 17
                                        mem[_9189 + 192] = mem[_9189 + 192] + 1
                                        if _9788 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_9097 + 64] = 6
                                        mem[_9097] = _9003
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_9097 + 126 len 2] and 100 > 65535 / mem[_9097 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_9097 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_9097 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_9097 + 126 len 2]) / 100)) > 0:
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
                                            _9928 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_9928 len 96] = call.data[calldata.size len 96]
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
                                            _9985 = mem[_9956 + 32]
                                            _9986 = mem[_9956 + 64]
                                            _9987 = mem[_9956 + 96]
                                            _9988 = mem[_9956 + 128]
                                            require mem[_9956 + 128] == mem[_9956 + 158 len 2]
                                            require mem[_9956 + 160] == mem[_9956 + 190 len 2]
                                            require mem[_9956 + 224] == mem[_9956 + 240 len 16]
                                            mem[_9904 + 32] = mem[_9956 + 192]
                                            mem[_9904 + 96] = uint16(_9988)
                                            mem[_9928 + 64] = _9987
                                            mem[_9928 + 32] = _9986
                                            mem[_9928] = _9985
                                            _10082 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_10082 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _9928]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10836 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_10836 + 96] == mem[_10836 + 120 len 8]
                                                require mem[_10836 + 128] == mem[_10836 + 159 len 1]
                                                _10948 = mem[_10082 + 192]
                                                if mem[_10082 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_10082 + 192] = mem[_10082 + 192] + 1
                                                if _10948 + 1 != 2:
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
                                                if mem[_9097 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_9097 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16 < 8:
                                                        if mem[_9904 + 126 len 2] > mem[_9097 + 126 len 2]:
                                                            if mem[_9904 + 126 len 2] < mem[_9097 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_9904 + 126 len 2] - mem[_9097 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9904 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9904 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) > mem[_9097 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) < mem[_9097 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) - mem[_9097 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_9097 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) > 65535 / mem[_9097 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16 < 8:
                                                        if mem[_9904 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                            if mem[_9904 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_9904 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9904 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9904 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100)) > 0:
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
                                            if mem[_9097 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9097 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16 < 8:
                                                    if mem[_9904 + 126 len 2] > mem[_9097 + 126 len 2]:
                                                        if mem[_9904 + 126 len 2] < mem[_9097 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9904 + 126 len 2] - mem[_9097 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9904 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) > 65535 / mem[_9904 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) > mem[_9097 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) < mem[_9097 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) - mem[_9097 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_9097 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) > 65535 / mem[_9097 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16 < 8:
                                                    if mem[_9904 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                        if mem[_9904 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9904 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9904 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) > 65535 / mem[_9904 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9904 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_9097 + 64] = 0
                                    mem[_9097] = _9003
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_9097 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_9097 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_9097 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_9097 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_9097 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_9097 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9097 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_9097 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100)) > 0:
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
                                        _9764 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9764 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9782 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_9782] == mem[_9782 + 12 len 20]
                                        _9806 = mem[_9782 + 32]
                                        _9807 = mem[_9782 + 64]
                                        _9808 = mem[_9782 + 96]
                                        _9809 = mem[_9782 + 128]
                                        require mem[_9782 + 128] == mem[_9782 + 158 len 2]
                                        require mem[_9782 + 160] == mem[_9782 + 190 len 2]
                                        require mem[_9782 + 224] == mem[_9782 + 240 len 16]
                                        mem[_9751 + 32] = mem[_9782 + 192]
                                        mem[_9751 + 96] = uint16(_9809)
                                        mem[_9764 + 64] = _9808
                                        mem[_9764 + 32] = _9807
                                        mem[_9764] = _9806
                                        _9914 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_9914 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _9764]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10834 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_10834 + 96] == mem[_10834 + 120 len 8]
                                            require mem[_10834 + 128] == mem[_10834 + 159 len 1]
                                            _10947 = mem[_9914 + 192]
                                            if mem[_9914 + 192] == -1:
                                                revert with 0, 17
                                            mem[_9914 + 192] = mem[_9914 + 192] + 1
                                            if _10947 + 1 != 2:
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
                                            if mem[_9097 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9097 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16 < 8:
                                                    if mem[_9751 + 126 len 2] > mem[_9097 + 126 len 2]:
                                                        if mem[_9751 + 126 len 2] < mem[_9097 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9751 + 126 len 2] - mem[_9097 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9751 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9751 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) > mem[_9097 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) < mem[_9097 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) - mem[_9097 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_9097 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) > 65535 / mem[_9097 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16 < 8:
                                                    if mem[_9751 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                        if mem[_9751 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9751 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9751 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9751 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9097 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9097 + 64]) + 24 % 16) + 100) * mem[_9097 + 126 len 2]) / 100)) > 0:
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
                                        if mem[_9097 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_9097 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16 < 8:
                                                if mem[_9751 + 126 len 2] > mem[_9097 + 126 len 2]:
                                                    if mem[_9751 + 126 len 2] < mem[_9097 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_9751 + 126 len 2] - mem[_9097 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9751 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) > 65535 / mem[_9751 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) > mem[_9097 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) < mem[_9097 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) - mem[_9097 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9097 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) > 65535 / mem[_9097 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16 < 8:
                                                if mem[_9751 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                    if mem[_9751 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_9751 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9751 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) > 65535 / mem[_9751 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) + 8) * mem[_9751 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9097 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9097 + 64] % 16) + 100) * mem[_9097 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                else:
                    mem[_8295 + _8300 + 68] = 0
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8300 + _8295 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _9007 = mem[128]
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
                                _9068 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_9068] == mem[_9068 + 30 len 2]
                                require mem[_9068 + 32] == mem[_9068 + 62 len 2]
                                if not mem[_9068 + 30 len 2]:
                                    _9100 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9100] = 0
                                    mem[_9100 + 32] = 0
                                    mem[_9100 + 64] = 0
                                    mem[_9100 + 96] = 0
                                    _9112 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9112 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _9007
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9122 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_9122] == mem[_9122 + 12 len 20]
                                    _9136 = mem[_9122 + 32]
                                    _9137 = mem[_9122 + 64]
                                    _9138 = mem[_9122 + 96]
                                    _9139 = mem[_9122 + 128]
                                    require mem[_9122 + 128] == mem[_9122 + 158 len 2]
                                    require mem[_9122 + 160] == mem[_9122 + 190 len 2]
                                    require mem[_9122 + 224] == mem[_9122 + 240 len 16]
                                    mem[_9100 + 32] = mem[_9122 + 192]
                                    mem[_9100 + 96] = uint16(_9139)
                                    mem[_9112 + 64] = _9138
                                    mem[_9112 + 32] = _9137
                                    mem[_9112] = _9136
                                    _9198 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_9198 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _9112]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9699 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_9699 + 96] == mem[_9699 + 120 len 8]
                                        require mem[_9699 + 128] == mem[_9699 + 159 len 1]
                                        _9789 = mem[_9198 + 192]
                                        if mem[_9198 + 192] == -1:
                                            revert with 0, 17
                                        mem[_9198 + 192] = mem[_9198 + 192] + 1
                                        if _9789 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_9100 + 64] = 6
                                        mem[_9100] = _9007
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_9100 + 126 len 2] and 100 > 65535 / mem[_9100 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_9100 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_9100 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _9907 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_9907] = 0
                                            mem[_9907 + 32] = 0
                                            mem[_9907 + 64] = 0
                                            mem[_9907 + 96] = 0
                                            _9929 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_9929 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9959 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_9959] == mem[_9959 + 12 len 20]
                                            _9989 = mem[_9959 + 32]
                                            _9990 = mem[_9959 + 64]
                                            _9991 = mem[_9959 + 96]
                                            _9992 = mem[_9959 + 128]
                                            require mem[_9959 + 128] == mem[_9959 + 158 len 2]
                                            require mem[_9959 + 160] == mem[_9959 + 190 len 2]
                                            require mem[_9959 + 224] == mem[_9959 + 240 len 16]
                                            mem[_9907 + 32] = mem[_9959 + 192]
                                            mem[_9907 + 96] = uint16(_9992)
                                            mem[_9929 + 64] = _9991
                                            mem[_9929 + 32] = _9990
                                            mem[_9929] = _9989
                                            _10083 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_10083 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _9929]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10840 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_10840 + 96] == mem[_10840 + 120 len 8]
                                                require mem[_10840 + 128] == mem[_10840 + 159 len 1]
                                                _10950 = mem[_10083 + 192]
                                                if mem[_10083 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_10083 + 192] = mem[_10083 + 192] + 1
                                                if _10950 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_9907 + 64] = 6
                                                mem[_9907] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _9907
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_9100 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_9100 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16 < 8:
                                                        if mem[_9907 + 126 len 2] > mem[_9100 + 126 len 2]:
                                                            if mem[_9907 + 126 len 2] < mem[_9100 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_9907 + 126 len 2] - mem[_9100 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9907 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9907 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) > mem[_9100 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) < mem[_9100 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) - mem[_9100 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_9100 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) > 65535 / mem[_9100 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16 < 8:
                                                        if mem[_9907 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                            if mem[_9907 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_9907 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9907 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9907 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_9907 + 64] = 0
                                            mem[_9907] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9907
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9100 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9100 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16 < 8:
                                                    if mem[_9907 + 126 len 2] > mem[_9100 + 126 len 2]:
                                                        if mem[_9907 + 126 len 2] < mem[_9100 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9907 + 126 len 2] - mem[_9100 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9907 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) > 65535 / mem[_9907 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) > mem[_9100 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) < mem[_9100 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) - mem[_9100 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_9100 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) > 65535 / mem[_9100 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16 < 8:
                                                    if mem[_9907 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                        if mem[_9907 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9907 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9907 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) > 65535 / mem[_9907 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9907 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_9100 + 64] = 0
                                    mem[_9100] = _9007
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_9100 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_9100 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_9100 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_9100 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_9100 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_9100 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9100 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_9100 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _9754 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_9754] = 0
                                        mem[_9754 + 32] = 0
                                        mem[_9754 + 64] = 0
                                        mem[_9754 + 96] = 0
                                        _9765 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9765 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9783 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_9783] == mem[_9783 + 12 len 20]
                                        _9810 = mem[_9783 + 32]
                                        _9811 = mem[_9783 + 64]
                                        _9812 = mem[_9783 + 96]
                                        _9813 = mem[_9783 + 128]
                                        require mem[_9783 + 128] == mem[_9783 + 158 len 2]
                                        require mem[_9783 + 160] == mem[_9783 + 190 len 2]
                                        require mem[_9783 + 224] == mem[_9783 + 240 len 16]
                                        mem[_9754 + 32] = mem[_9783 + 192]
                                        mem[_9754 + 96] = uint16(_9813)
                                        mem[_9765 + 64] = _9812
                                        mem[_9765 + 32] = _9811
                                        mem[_9765] = _9810
                                        _9915 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_9915 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _9765]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10838 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_10838 + 96] == mem[_10838 + 120 len 8]
                                            require mem[_10838 + 128] == mem[_10838 + 159 len 1]
                                            _10949 = mem[_9915 + 192]
                                            if mem[_9915 + 192] == -1:
                                                revert with 0, 17
                                            mem[_9915 + 192] = mem[_9915 + 192] + 1
                                            if _10949 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_9754 + 64] = 6
                                            mem[_9754] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9754
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9100 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9100 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16 < 8:
                                                    if mem[_9754 + 126 len 2] > mem[_9100 + 126 len 2]:
                                                        if mem[_9754 + 126 len 2] < mem[_9100 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9754 + 126 len 2] - mem[_9100 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9754 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9754 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) > mem[_9100 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) < mem[_9100 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) - mem[_9100 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_9100 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) > 65535 / mem[_9100 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16 < 8:
                                                    if mem[_9754 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                        if mem[_9754 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9754 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9754 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9754 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9100 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9100 + 64]) + 24 % 16) + 100) * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_9754 + 64] = 0
                                        mem[_9754] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _9754
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_9100 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_9100 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16 < 8:
                                                if mem[_9754 + 126 len 2] > mem[_9100 + 126 len 2]:
                                                    if mem[_9754 + 126 len 2] < mem[_9100 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_9754 + 126 len 2] - mem[_9100 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9754 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) > 65535 / mem[_9754 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) > mem[_9100 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) < mem[_9100 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) - mem[_9100 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9100 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) > 65535 / mem[_9100 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16 < 8:
                                                if mem[_9754 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                    if mem[_9754 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_9754 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9754 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) > 65535 / mem[_9754 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) + 8) * mem[_9754 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9100 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9100 + 64] % 16) + 100) * mem[_9100 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _8995 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_8995] = return_data.size
                        mem[_8995 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _9008 = mem[_8995 + 32]
                            require mem[_8995 + 64] == mem[_8995 + 80 len 16]
                            require mem[_8995 + 96] == mem[_8995 + 112 len 16]
                            require mem[_8995 + 128] == mem[_8995 + 156 len 4]
                            require mem[_8995 + 160] == mem[_8995 + 188 len 4]
                            require mem[_8995 + 192] == mem[_8995 + 220 len 4]
                            if mem[_8995 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _9069 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_9069] == mem[_9069 + 30 len 2]
                                require mem[_9069 + 32] == mem[_9069 + 62 len 2]
                                if not mem[_9069 + 30 len 2]:
                                    _9101 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_9101] = 0
                                    mem[_9101 + 32] = 0
                                    mem[_9101 + 64] = 0
                                    mem[_9101 + 96] = 0
                                    _9113 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_9113 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _9008
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9123 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_9123] == mem[_9123 + 12 len 20]
                                    _9140 = mem[_9123 + 32]
                                    _9141 = mem[_9123 + 64]
                                    _9142 = mem[_9123 + 96]
                                    _9143 = mem[_9123 + 128]
                                    require mem[_9123 + 128] == mem[_9123 + 158 len 2]
                                    require mem[_9123 + 160] == mem[_9123 + 190 len 2]
                                    require mem[_9123 + 224] == mem[_9123 + 240 len 16]
                                    mem[_9101 + 32] = mem[_9123 + 192]
                                    mem[_9101 + 96] = uint16(_9143)
                                    mem[_9113 + 64] = _9142
                                    mem[_9113 + 32] = _9141
                                    mem[_9113] = _9140
                                    _9199 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_9199 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _9113]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9701 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_9701 + 96] == mem[_9701 + 120 len 8]
                                        require mem[_9701 + 128] == mem[_9701 + 159 len 1]
                                        _9790 = mem[_9199 + 192]
                                        if mem[_9199 + 192] == -1:
                                            revert with 0, 17
                                        mem[_9199 + 192] = mem[_9199 + 192] + 1
                                        if _9790 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_9101 + 64] = 6
                                        mem[_9101] = _9008
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_9101 + 126 len 2] and 100 > 65535 / mem[_9101 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_9101 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_9101 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_9101 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _9910 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_9910] = 0
                                            mem[_9910 + 32] = 0
                                            mem[_9910 + 64] = 0
                                            mem[_9910 + 96] = 0
                                            _9930 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_9930 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9962 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_9962] == mem[_9962 + 12 len 20]
                                            _9993 = mem[_9962 + 32]
                                            _9994 = mem[_9962 + 64]
                                            _9995 = mem[_9962 + 96]
                                            _9996 = mem[_9962 + 128]
                                            require mem[_9962 + 128] == mem[_9962 + 158 len 2]
                                            require mem[_9962 + 160] == mem[_9962 + 190 len 2]
                                            require mem[_9962 + 224] == mem[_9962 + 240 len 16]
                                            mem[_9910 + 32] = mem[_9962 + 192]
                                            mem[_9910 + 96] = uint16(_9996)
                                            mem[_9930 + 64] = _9995
                                            mem[_9930 + 32] = _9994
                                            mem[_9930] = _9993
                                            _10084 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_10084 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _9930]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10844 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_10844 + 96] == mem[_10844 + 120 len 8]
                                                require mem[_10844 + 128] == mem[_10844 + 159 len 1]
                                                _10952 = mem[_10084 + 192]
                                                if mem[_10084 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_10084 + 192] = mem[_10084 + 192] + 1
                                                if _10952 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_9910 + 64] = 6
                                                mem[_9910] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _9910
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_9101 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_9101 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16 < 8:
                                                        if mem[_9910 + 126 len 2] > mem[_9101 + 126 len 2]:
                                                            if mem[_9910 + 126 len 2] < mem[_9101 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_9910 + 126 len 2] - mem[_9101 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9910 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9910 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) > mem[_9101 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) < mem[_9101 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) - mem[_9101 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_9101 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) > 65535 / mem[_9101 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16 < 8:
                                                        if mem[_9910 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                            if mem[_9910 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_9910 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_9910 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9910 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_9910 + 64] = 0
                                            mem[_9910] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9910
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9101 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9101 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16 < 8:
                                                    if mem[_9910 + 126 len 2] > mem[_9101 + 126 len 2]:
                                                        if mem[_9910 + 126 len 2] < mem[_9101 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9910 + 126 len 2] - mem[_9101 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9910 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) > 65535 / mem[_9910 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) > mem[_9101 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) < mem[_9101 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) - mem[_9101 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_9101 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) > 65535 / mem[_9101 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16 < 8:
                                                    if mem[_9910 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                        if mem[_9910 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9910 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9910 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) > 65535 / mem[_9910 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9910 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_9101 + 64] = 0
                                    mem[_9101] = _9008
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_9101 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_9101 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_9101 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_9101 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_9101 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_9101 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9101 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_9101 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _9757 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_9757] = 0
                                        mem[_9757 + 32] = 0
                                        mem[_9757 + 64] = 0
                                        mem[_9757 + 96] = 0
                                        _9766 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_9766 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9784 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_9784] == mem[_9784 + 12 len 20]
                                        _9814 = mem[_9784 + 32]
                                        _9815 = mem[_9784 + 64]
                                        _9816 = mem[_9784 + 96]
                                        _9817 = mem[_9784 + 128]
                                        require mem[_9784 + 128] == mem[_9784 + 158 len 2]
                                        require mem[_9784 + 160] == mem[_9784 + 190 len 2]
                                        require mem[_9784 + 224] == mem[_9784 + 240 len 16]
                                        mem[_9757 + 32] = mem[_9784 + 192]
                                        mem[_9757 + 96] = uint16(_9817)
                                        mem[_9766 + 64] = _9816
                                        mem[_9766 + 32] = _9815
                                        mem[_9766] = _9814
                                        _9916 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_9916 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _9766]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10842 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_10842 + 96] == mem[_10842 + 120 len 8]
                                            require mem[_10842 + 128] == mem[_10842 + 159 len 1]
                                            _10951 = mem[_9916 + 192]
                                            if mem[_9916 + 192] == -1:
                                                revert with 0, 17
                                            mem[_9916 + 192] = mem[_9916 + 192] + 1
                                            if _10951 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_9757 + 64] = 6
                                            mem[_9757] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _9757
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_9101 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_9101 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16 < 8:
                                                    if mem[_9757 + 126 len 2] > mem[_9101 + 126 len 2]:
                                                        if mem[_9757 + 126 len 2] < mem[_9101 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_9757 + 126 len 2] - mem[_9101 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9757 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9757 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) > mem[_9101 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) < mem[_9101 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) - mem[_9101 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_9101 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) > 65535 / mem[_9101 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16 < 8:
                                                    if mem[_9757 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                        if mem[_9757 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_9757 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_9757 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_9757 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_9101 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_9101 + 64]) + 24 % 16) + 100) * mem[_9101 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_9757 + 64] = 0
                                        mem[_9757] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _9757
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_9101 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_9101 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16 < 8:
                                                if mem[_9757 + 126 len 2] > mem[_9101 + 126 len 2]:
                                                    if mem[_9757 + 126 len 2] < mem[_9101 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_9757 + 126 len 2] - mem[_9101 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9757 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) > 65535 / mem[_9757 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) > mem[_9101 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) < mem[_9101 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) - mem[_9101 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_9101 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) > 65535 / mem[_9101 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16 < 8:
                                                if mem[_9757 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                    if mem[_9757 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_9757 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_9757 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) > 65535 / mem[_9757 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) + 8) * mem[_9757 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_9101 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_9101 + 64] % 16) + 100) * mem[_9101 + 126 len 2]) / 100)) > 0:
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
            while s < ('cd', 4).length:
                _11755 = mem[64]
                mem[mem[64] + 36] = cd[((32 * s) + cd[4] + 36)]
                _11757 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_11757 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_11757 + 36 len 28]
                _11760 = mem[_11757]
                t = 0
                while t < _11760:
                    mem[t + _11755 + 68] = mem[_11757 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_11760) <= _11760:
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _11760 + _11755 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _12462 = mem[128]
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
                                _12524 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_12524] == mem[_12524 + 30 len 2]
                                require mem[_12524 + 32] == mem[_12524 + 62 len 2]
                                if not mem[_12524 + 30 len 2]:
                                    _12556 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_12556] = 0
                                    mem[_12556 + 32] = 0
                                    mem[_12556 + 64] = 0
                                    mem[_12556 + 96] = 0
                                    _12564 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_12564 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _12462
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12580 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_12580] == mem[_12580 + 12 len 20]
                                    _12586 = mem[_12580 + 32]
                                    _12587 = mem[_12580 + 64]
                                    _12588 = mem[_12580 + 96]
                                    _12589 = mem[_12580 + 128]
                                    require mem[_12580 + 128] == mem[_12580 + 158 len 2]
                                    require mem[_12580 + 160] == mem[_12580 + 190 len 2]
                                    require mem[_12580 + 224] == mem[_12580 + 240 len 16]
                                    mem[_12556 + 32] = mem[_12580 + 192]
                                    mem[_12556 + 96] = uint16(_12589)
                                    mem[_12564 + 64] = _12588
                                    mem[_12564 + 32] = _12587
                                    mem[_12564] = _12586
                                    _12648 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_12648 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _12564]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13155 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_13155 + 96] == mem[_13155 + 120 len 8]
                                        require mem[_13155 + 128] == mem[_13155 + 159 len 1]
                                        _13247 = mem[_12648 + 192]
                                        if mem[_12648 + 192] == -1:
                                            revert with 0, 17
                                        mem[_12648 + 192] = mem[_12648 + 192] + 1
                                        if _13247 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_12556 + 64] = 6
                                        mem[_12556] = _12462
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_12556 + 126 len 2] and 100 > 65535 / mem[_12556 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_12556 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_12556 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_12556 + 126 len 2]) / 100)) > 0:
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
                                            _13387 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_13387 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13413 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_13413] == mem[_13413 + 12 len 20]
                                            _13441 = mem[_13413 + 32]
                                            _13442 = mem[_13413 + 64]
                                            _13443 = mem[_13413 + 96]
                                            _13444 = mem[_13413 + 128]
                                            require mem[_13413 + 128] == mem[_13413 + 158 len 2]
                                            require mem[_13413 + 160] == mem[_13413 + 190 len 2]
                                            require mem[_13413 + 224] == mem[_13413 + 240 len 16]
                                            mem[_13361 + 32] = mem[_13413 + 192]
                                            mem[_13361 + 96] = uint16(_13444)
                                            mem[_13387 + 64] = _13443
                                            mem[_13387 + 32] = _13442
                                            mem[_13387] = _13441
                                            _13541 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_13541 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _13387]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _14292 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_14292 + 96] == mem[_14292 + 120 len 8]
                                                require mem[_14292 + 128] == mem[_14292 + 159 len 1]
                                                _14406 = mem[_13541 + 192]
                                                if mem[_13541 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_13541 + 192] = mem[_13541 + 192] + 1
                                                if _14406 + 1 != 2:
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
                                                if mem[_12556 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_12556 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16 < 8:
                                                        if mem[_13361 + 126 len 2] > mem[_12556 + 126 len 2]:
                                                            if mem[_13361 + 126 len 2] < mem[_12556 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_13361 + 126 len 2] - mem[_12556 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13361 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13361 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) > mem[_12556 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) < mem[_12556 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) - mem[_12556 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_12556 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) > 65535 / mem[_12556 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16 < 8:
                                                        if mem[_13361 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                            if mem[_13361 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_13361 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13361 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13361 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100)) > 0:
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
                                            if mem[_12556 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12556 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16 < 8:
                                                    if mem[_13361 + 126 len 2] > mem[_12556 + 126 len 2]:
                                                        if mem[_13361 + 126 len 2] < mem[_12556 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13361 + 126 len 2] - mem[_12556 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13361 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) > 65535 / mem[_13361 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) > mem[_12556 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) < mem[_12556 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) - mem[_12556 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_12556 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) > 65535 / mem[_12556 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16 < 8:
                                                    if mem[_13361 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                        if mem[_13361 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13361 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13361 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) > 65535 / mem[_13361 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13361 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_12556 + 64] = 0
                                    mem[_12556] = _12462
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_12556 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_12556 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_12556 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_12556 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_12556 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_12556 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12556 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_12556 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100)) > 0:
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
                                        _13223 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13223 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13241 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_13241] == mem[_13241 + 12 len 20]
                                        _13262 = mem[_13241 + 32]
                                        _13263 = mem[_13241 + 64]
                                        _13264 = mem[_13241 + 96]
                                        _13265 = mem[_13241 + 128]
                                        require mem[_13241 + 128] == mem[_13241 + 158 len 2]
                                        require mem[_13241 + 160] == mem[_13241 + 190 len 2]
                                        require mem[_13241 + 224] == mem[_13241 + 240 len 16]
                                        mem[_13208 + 32] = mem[_13241 + 192]
                                        mem[_13208 + 96] = uint16(_13265)
                                        mem[_13223 + 64] = _13264
                                        mem[_13223 + 32] = _13263
                                        mem[_13223] = _13262
                                        _13373 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_13373 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _13223]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _14290 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_14290 + 96] == mem[_14290 + 120 len 8]
                                            require mem[_14290 + 128] == mem[_14290 + 159 len 1]
                                            _14405 = mem[_13373 + 192]
                                            if mem[_13373 + 192] == -1:
                                                revert with 0, 17
                                            mem[_13373 + 192] = mem[_13373 + 192] + 1
                                            if _14405 + 1 != 2:
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
                                            if mem[_12556 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12556 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16 < 8:
                                                    if mem[_13208 + 126 len 2] > mem[_12556 + 126 len 2]:
                                                        if mem[_13208 + 126 len 2] < mem[_12556 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13208 + 126 len 2] - mem[_12556 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13208 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13208 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) > mem[_12556 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) < mem[_12556 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) - mem[_12556 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_12556 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) > 65535 / mem[_12556 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16 < 8:
                                                    if mem[_13208 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                        if mem[_13208 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13208 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13208 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13208 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12556 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12556 + 64]) + 24 % 16) + 100) * mem[_12556 + 126 len 2]) / 100)) > 0:
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
                                        if mem[_12556 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_12556 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16 < 8:
                                                if mem[_13208 + 126 len 2] > mem[_12556 + 126 len 2]:
                                                    if mem[_13208 + 126 len 2] < mem[_12556 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_13208 + 126 len 2] - mem[_12556 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13208 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) > 65535 / mem[_13208 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) > mem[_12556 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) < mem[_12556 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) - mem[_12556 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12556 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) > 65535 / mem[_12556 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16 < 8:
                                                if mem[_13208 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                    if mem[_13208 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_13208 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13208 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) > 65535 / mem[_13208 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) + 8) * mem[_13208 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12556 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12556 + 64] % 16) + 100) * mem[_12556 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _12453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12453] = return_data.size
                        mem[_12453 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _12463 = mem[_12453 + 32]
                            require mem[_12453 + 64] == mem[_12453 + 80 len 16]
                            require mem[_12453 + 96] == mem[_12453 + 112 len 16]
                            require mem[_12453 + 128] == mem[_12453 + 156 len 4]
                            require mem[_12453 + 160] == mem[_12453 + 188 len 4]
                            require mem[_12453 + 192] == mem[_12453 + 220 len 4]
                            if mem[_12453 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12525 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_12525] == mem[_12525 + 30 len 2]
                                require mem[_12525 + 32] == mem[_12525 + 62 len 2]
                                if not mem[_12525 + 30 len 2]:
                                    _12557 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_12557] = 0
                                    mem[_12557 + 32] = 0
                                    mem[_12557 + 64] = 0
                                    mem[_12557 + 96] = 0
                                    _12565 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_12565 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _12463
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12581 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_12581] == mem[_12581 + 12 len 20]
                                    _12590 = mem[_12581 + 32]
                                    _12591 = mem[_12581 + 64]
                                    _12592 = mem[_12581 + 96]
                                    _12593 = mem[_12581 + 128]
                                    require mem[_12581 + 128] == mem[_12581 + 158 len 2]
                                    require mem[_12581 + 160] == mem[_12581 + 190 len 2]
                                    require mem[_12581 + 224] == mem[_12581 + 240 len 16]
                                    mem[_12557 + 32] = mem[_12581 + 192]
                                    mem[_12557 + 96] = uint16(_12593)
                                    mem[_12565 + 64] = _12592
                                    mem[_12565 + 32] = _12591
                                    mem[_12565] = _12590
                                    _12649 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_12649 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _12565]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13157 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_13157 + 96] == mem[_13157 + 120 len 8]
                                        require mem[_13157 + 128] == mem[_13157 + 159 len 1]
                                        _13248 = mem[_12649 + 192]
                                        if mem[_12649 + 192] == -1:
                                            revert with 0, 17
                                        mem[_12649 + 192] = mem[_12649 + 192] + 1
                                        if _13248 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_12557 + 64] = 6
                                        mem[_12557] = _12463
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_12557 + 126 len 2] and 100 > 65535 / mem[_12557 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_12557 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_12557 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_12557 + 126 len 2]) / 100)) > 0:
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
                                            _13388 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_13388 len 96] = call.data[calldata.size len 96]
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
                                            _13445 = mem[_13416 + 32]
                                            _13446 = mem[_13416 + 64]
                                            _13447 = mem[_13416 + 96]
                                            _13448 = mem[_13416 + 128]
                                            require mem[_13416 + 128] == mem[_13416 + 158 len 2]
                                            require mem[_13416 + 160] == mem[_13416 + 190 len 2]
                                            require mem[_13416 + 224] == mem[_13416 + 240 len 16]
                                            mem[_13364 + 32] = mem[_13416 + 192]
                                            mem[_13364 + 96] = uint16(_13448)
                                            mem[_13388 + 64] = _13447
                                            mem[_13388 + 32] = _13446
                                            mem[_13388] = _13445
                                            _13542 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_13542 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _13388]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _14296 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_14296 + 96] == mem[_14296 + 120 len 8]
                                                require mem[_14296 + 128] == mem[_14296 + 159 len 1]
                                                _14408 = mem[_13542 + 192]
                                                if mem[_13542 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_13542 + 192] = mem[_13542 + 192] + 1
                                                if _14408 + 1 != 2:
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
                                                if mem[_12557 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_12557 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16 < 8:
                                                        if mem[_13364 + 126 len 2] > mem[_12557 + 126 len 2]:
                                                            if mem[_13364 + 126 len 2] < mem[_12557 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_13364 + 126 len 2] - mem[_12557 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13364 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13364 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) > mem[_12557 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) < mem[_12557 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) - mem[_12557 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_12557 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) > 65535 / mem[_12557 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16 < 8:
                                                        if mem[_13364 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                            if mem[_13364 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_13364 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13364 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13364 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100)) > 0:
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
                                            if mem[_12557 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12557 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16 < 8:
                                                    if mem[_13364 + 126 len 2] > mem[_12557 + 126 len 2]:
                                                        if mem[_13364 + 126 len 2] < mem[_12557 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13364 + 126 len 2] - mem[_12557 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13364 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) > 65535 / mem[_13364 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) > mem[_12557 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) < mem[_12557 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) - mem[_12557 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_12557 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) > 65535 / mem[_12557 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16 < 8:
                                                    if mem[_13364 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                        if mem[_13364 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13364 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13364 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) > 65535 / mem[_13364 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13364 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_12557 + 64] = 0
                                    mem[_12557] = _12463
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_12557 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_12557 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_12557 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_12557 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_12557 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_12557 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12557 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_12557 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100)) > 0:
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
                                        _13224 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13224 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13242 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_13242] == mem[_13242 + 12 len 20]
                                        _13266 = mem[_13242 + 32]
                                        _13267 = mem[_13242 + 64]
                                        _13268 = mem[_13242 + 96]
                                        _13269 = mem[_13242 + 128]
                                        require mem[_13242 + 128] == mem[_13242 + 158 len 2]
                                        require mem[_13242 + 160] == mem[_13242 + 190 len 2]
                                        require mem[_13242 + 224] == mem[_13242 + 240 len 16]
                                        mem[_13211 + 32] = mem[_13242 + 192]
                                        mem[_13211 + 96] = uint16(_13269)
                                        mem[_13224 + 64] = _13268
                                        mem[_13224 + 32] = _13267
                                        mem[_13224] = _13266
                                        _13374 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_13374 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _13224]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _14294 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_14294 + 96] == mem[_14294 + 120 len 8]
                                            require mem[_14294 + 128] == mem[_14294 + 159 len 1]
                                            _14407 = mem[_13374 + 192]
                                            if mem[_13374 + 192] == -1:
                                                revert with 0, 17
                                            mem[_13374 + 192] = mem[_13374 + 192] + 1
                                            if _14407 + 1 != 2:
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
                                            if mem[_12557 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12557 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16 < 8:
                                                    if mem[_13211 + 126 len 2] > mem[_12557 + 126 len 2]:
                                                        if mem[_13211 + 126 len 2] < mem[_12557 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13211 + 126 len 2] - mem[_12557 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13211 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13211 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) > mem[_12557 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) < mem[_12557 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) - mem[_12557 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_12557 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) > 65535 / mem[_12557 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16 < 8:
                                                    if mem[_13211 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                        if mem[_13211 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13211 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13211 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13211 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12557 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12557 + 64]) + 24 % 16) + 100) * mem[_12557 + 126 len 2]) / 100)) > 0:
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
                                        if mem[_12557 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_12557 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16 < 8:
                                                if mem[_13211 + 126 len 2] > mem[_12557 + 126 len 2]:
                                                    if mem[_13211 + 126 len 2] < mem[_12557 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_13211 + 126 len 2] - mem[_12557 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13211 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) > 65535 / mem[_13211 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) > mem[_12557 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) < mem[_12557 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) - mem[_12557 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12557 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) > 65535 / mem[_12557 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16 < 8:
                                                if mem[_13211 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                    if mem[_13211 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_13211 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13211 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) > 65535 / mem[_13211 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) + 8) * mem[_13211 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12557 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12557 + 64] % 16) + 100) * mem[_12557 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                else:
                    mem[_11755 + _11760 + 68] = 0
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _11760 + _11755 + -mem[64] + 64]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 192
                            _12467 = mem[128]
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
                                _12528 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_12528] == mem[_12528 + 30 len 2]
                                require mem[_12528 + 32] == mem[_12528 + 62 len 2]
                                if not mem[_12528 + 30 len 2]:
                                    _12560 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_12560] = 0
                                    mem[_12560 + 32] = 0
                                    mem[_12560 + 64] = 0
                                    mem[_12560 + 96] = 0
                                    _12572 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_12572 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _12467
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12582 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_12582] == mem[_12582 + 12 len 20]
                                    _12596 = mem[_12582 + 32]
                                    _12597 = mem[_12582 + 64]
                                    _12598 = mem[_12582 + 96]
                                    _12599 = mem[_12582 + 128]
                                    require mem[_12582 + 128] == mem[_12582 + 158 len 2]
                                    require mem[_12582 + 160] == mem[_12582 + 190 len 2]
                                    require mem[_12582 + 224] == mem[_12582 + 240 len 16]
                                    mem[_12560 + 32] = mem[_12582 + 192]
                                    mem[_12560 + 96] = uint16(_12599)
                                    mem[_12572 + 64] = _12598
                                    mem[_12572 + 32] = _12597
                                    mem[_12572] = _12596
                                    _12658 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_12658 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _12572]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13159 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_13159 + 96] == mem[_13159 + 120 len 8]
                                        require mem[_13159 + 128] == mem[_13159 + 159 len 1]
                                        _13249 = mem[_12658 + 192]
                                        if mem[_12658 + 192] == -1:
                                            revert with 0, 17
                                        mem[_12658 + 192] = mem[_12658 + 192] + 1
                                        if _13249 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_12560 + 64] = 6
                                        mem[_12560] = _12467
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_12560 + 126 len 2] and 100 > 65535 / mem[_12560 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_12560 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_12560 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _13367 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_13367] = 0
                                            mem[_13367 + 32] = 0
                                            mem[_13367 + 64] = 0
                                            mem[_13367 + 96] = 0
                                            _13389 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_13389 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13419 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_13419] == mem[_13419 + 12 len 20]
                                            _13449 = mem[_13419 + 32]
                                            _13450 = mem[_13419 + 64]
                                            _13451 = mem[_13419 + 96]
                                            _13452 = mem[_13419 + 128]
                                            require mem[_13419 + 128] == mem[_13419 + 158 len 2]
                                            require mem[_13419 + 160] == mem[_13419 + 190 len 2]
                                            require mem[_13419 + 224] == mem[_13419 + 240 len 16]
                                            mem[_13367 + 32] = mem[_13419 + 192]
                                            mem[_13367 + 96] = uint16(_13452)
                                            mem[_13389 + 64] = _13451
                                            mem[_13389 + 32] = _13450
                                            mem[_13389] = _13449
                                            _13543 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_13543 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _13389]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _14300 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_14300 + 96] == mem[_14300 + 120 len 8]
                                                require mem[_14300 + 128] == mem[_14300 + 159 len 1]
                                                _14410 = mem[_13543 + 192]
                                                if mem[_13543 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_13543 + 192] = mem[_13543 + 192] + 1
                                                if _14410 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_13367 + 64] = 6
                                                mem[_13367] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _13367
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_12560 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_12560 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16 < 8:
                                                        if mem[_13367 + 126 len 2] > mem[_12560 + 126 len 2]:
                                                            if mem[_13367 + 126 len 2] < mem[_12560 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_13367 + 126 len 2] - mem[_12560 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13367 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13367 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) > mem[_12560 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) < mem[_12560 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) - mem[_12560 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_12560 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) > 65535 / mem[_12560 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16 < 8:
                                                        if mem[_13367 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                            if mem[_13367 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_13367 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13367 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13367 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_13367 + 64] = 0
                                            mem[_13367] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13367
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12560 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12560 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16 < 8:
                                                    if mem[_13367 + 126 len 2] > mem[_12560 + 126 len 2]:
                                                        if mem[_13367 + 126 len 2] < mem[_12560 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13367 + 126 len 2] - mem[_12560 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13367 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) > 65535 / mem[_13367 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) > mem[_12560 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) < mem[_12560 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) - mem[_12560 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_12560 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) > 65535 / mem[_12560 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16 < 8:
                                                    if mem[_13367 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                        if mem[_13367 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13367 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13367 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) > 65535 / mem[_13367 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13367 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_12560 + 64] = 0
                                    mem[_12560] = _12467
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_12560 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_12560 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_12560 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_12560 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_12560 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_12560 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12560 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_12560 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _13214 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_13214] = 0
                                        mem[_13214 + 32] = 0
                                        mem[_13214 + 64] = 0
                                        mem[_13214 + 96] = 0
                                        _13225 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13225 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13243 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_13243] == mem[_13243 + 12 len 20]
                                        _13270 = mem[_13243 + 32]
                                        _13271 = mem[_13243 + 64]
                                        _13272 = mem[_13243 + 96]
                                        _13273 = mem[_13243 + 128]
                                        require mem[_13243 + 128] == mem[_13243 + 158 len 2]
                                        require mem[_13243 + 160] == mem[_13243 + 190 len 2]
                                        require mem[_13243 + 224] == mem[_13243 + 240 len 16]
                                        mem[_13214 + 32] = mem[_13243 + 192]
                                        mem[_13214 + 96] = uint16(_13273)
                                        mem[_13225 + 64] = _13272
                                        mem[_13225 + 32] = _13271
                                        mem[_13225] = _13270
                                        _13375 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_13375 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _13225]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _14298 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_14298 + 96] == mem[_14298 + 120 len 8]
                                            require mem[_14298 + 128] == mem[_14298 + 159 len 1]
                                            _14409 = mem[_13375 + 192]
                                            if mem[_13375 + 192] == -1:
                                                revert with 0, 17
                                            mem[_13375 + 192] = mem[_13375 + 192] + 1
                                            if _14409 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_13214 + 64] = 6
                                            mem[_13214] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13214
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12560 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12560 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16 < 8:
                                                    if mem[_13214 + 126 len 2] > mem[_12560 + 126 len 2]:
                                                        if mem[_13214 + 126 len 2] < mem[_12560 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13214 + 126 len 2] - mem[_12560 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13214 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13214 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) > mem[_12560 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) < mem[_12560 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) - mem[_12560 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_12560 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) > 65535 / mem[_12560 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16 < 8:
                                                    if mem[_13214 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                        if mem[_13214 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13214 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13214 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13214 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12560 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12560 + 64]) + 24 % 16) + 100) * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_13214 + 64] = 0
                                        mem[_13214] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _13214
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_12560 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_12560 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16 < 8:
                                                if mem[_13214 + 126 len 2] > mem[_12560 + 126 len 2]:
                                                    if mem[_13214 + 126 len 2] < mem[_12560 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_13214 + 126 len 2] - mem[_12560 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13214 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) > 65535 / mem[_13214 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) > mem[_12560 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) < mem[_12560 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) - mem[_12560 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12560 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) > 65535 / mem[_12560 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16 < 8:
                                                if mem[_13214 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                    if mem[_13214 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_13214 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13214 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) > 65535 / mem[_13214 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) + 8) * mem[_13214 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12560 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12560 + 64] % 16) + 100) * mem[_12560 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                    else:
                        _12455 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12455] = return_data.size
                        mem[_12455 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 192
                            _12468 = mem[_12455 + 32]
                            require mem[_12455 + 64] == mem[_12455 + 80 len 16]
                            require mem[_12455 + 96] == mem[_12455 + 112 len 16]
                            require mem[_12455 + 128] == mem[_12455 + 156 len 4]
                            require mem[_12455 + 160] == mem[_12455 + 188 len 4]
                            require mem[_12455 + 192] == mem[_12455 + 220 len 4]
                            if mem[_12455 + 32]:
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xab0c8f8d with:
                                        gas gas_remaining wei
                                       args cd[((32 * s) + cd[4] + 36)]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12529 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_12529] == mem[_12529 + 30 len 2]
                                require mem[_12529 + 32] == mem[_12529 + 62 len 2]
                                if not mem[_12529 + 30 len 2]:
                                    _12561 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_12561] = 0
                                    mem[_12561 + 32] = 0
                                    mem[_12561 + 64] = 0
                                    mem[_12561 + 96] = 0
                                    _12573 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_12573 len 96] = call.data[calldata.size len 96]
                                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                            gas gas_remaining wei
                                           args _12468
                                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12583 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 256
                                    require mem[_12583] == mem[_12583 + 12 len 20]
                                    _12600 = mem[_12583 + 32]
                                    _12601 = mem[_12583 + 64]
                                    _12602 = mem[_12583 + 96]
                                    _12603 = mem[_12583 + 128]
                                    require mem[_12583 + 128] == mem[_12583 + 158 len 2]
                                    require mem[_12583 + 160] == mem[_12583 + 190 len 2]
                                    require mem[_12583 + 224] == mem[_12583 + 240 len 16]
                                    mem[_12561 + 32] = mem[_12583 + 192]
                                    mem[_12561 + 96] = uint16(_12603)
                                    mem[_12573 + 64] = _12602
                                    mem[_12573 + 32] = _12601
                                    mem[_12573] = _12600
                                    _12659 = mem[64]
                                    mem[64] = mem[64] + 224
                                    mem[_12659 len 224] = call.data[calldata.size len 224]
                                    t = 0
                                    while t < 3:
                                        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args mem[(32 * t) + _12573]
                                        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13161 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 160
                                        require mem[_13161 + 96] == mem[_13161 + 120 len 8]
                                        require mem[_13161 + 128] == mem[_13161 + 159 len 1]
                                        _13250 = mem[_12659 + 192]
                                        if mem[_12659 + 192] == -1:
                                            revert with 0, 17
                                        mem[_12659 + 192] = mem[_12659 + 192] + 1
                                        if _13250 + 1 != 2:
                                            if t == -1:
                                                revert with 0, 17
                                            t = t + 1
                                            continue 
                                        mem[_12561 + 64] = 6
                                        mem[_12561] = _12468
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[mem[(32 * idx) + 128]] != 0:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[mem[(32 * idx) + 128] + 64] > 6:
                                                revert with 0, 33
                                            if 168 > !(4 * mem[mem[(32 * idx) + 128] + 64]):
                                                revert with 0, 17
                                            if mem[_12561 + 126 len 2] and 100 > 65535 / mem[_12561 + 126 len 2]:
                                                revert with 0, 17
                                            if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(100 * mem[_12561 + 126 len 2]) / 100):
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(100 * mem[_12561 + 126 len 2]) / 100):
                                                    revert with 0, 17
                                                if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(100 * mem[_12561 + 126 len 2]) / 100)) > 0:
                                                    if idx >= ('cd', 36).length:
                                                        revert with 0, 50
                                        else:
                                            if idx >= ('cd', 36).length:
                                                revert with 0, 50
                                            _13370 = mem[64]
                                            mem[64] = mem[64] + 128
                                            mem[_13370] = 0
                                            mem[_13370 + 32] = 0
                                            mem[_13370 + 64] = 0
                                            mem[_13370 + 96] = 0
                                            _13390 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_13390 len 96] = call.data[calldata.size len 96]
                                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                    gas gas_remaining wei
                                                   args cd[((32 * idx) + cd[36] + 36)]
                                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13422 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 256
                                            require mem[_13422] == mem[_13422 + 12 len 20]
                                            _13453 = mem[_13422 + 32]
                                            _13454 = mem[_13422 + 64]
                                            _13455 = mem[_13422 + 96]
                                            _13456 = mem[_13422 + 128]
                                            require mem[_13422 + 128] == mem[_13422 + 158 len 2]
                                            require mem[_13422 + 160] == mem[_13422 + 190 len 2]
                                            require mem[_13422 + 224] == mem[_13422 + 240 len 16]
                                            mem[_13370 + 32] = mem[_13422 + 192]
                                            mem[_13370 + 96] = uint16(_13456)
                                            mem[_13390 + 64] = _13455
                                            mem[_13390 + 32] = _13454
                                            mem[_13390] = _13453
                                            _13544 = mem[64]
                                            mem[64] = mem[64] + 224
                                            mem[_13544 len 224] = call.data[calldata.size len 224]
                                            t = 0
                                            while t < 3:
                                                require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                                staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args mem[(32 * t) + _13390]
                                                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _14304 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 160
                                                require mem[_14304 + 96] == mem[_14304 + 120 len 8]
                                                require mem[_14304 + 128] == mem[_14304 + 159 len 1]
                                                _14412 = mem[_13544 + 192]
                                                if mem[_13544 + 192] == -1:
                                                    revert with 0, 17
                                                mem[_13544 + 192] = mem[_13544 + 192] + 1
                                                if _14412 + 1 != 2:
                                                    if t == -1:
                                                        revert with 0, 17
                                                    t = t + 1
                                                    continue 
                                                mem[_13370 + 64] = 6
                                                mem[_13370] = cd[((32 * idx) + cd[36] + 36)]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                mem[(32 * idx) + 128] = _13370
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                if mem[_12561 + 64] > 6:
                                                    revert with 0, 33
                                                if 28 * mem[_12561 + 64] > !24:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16 > 8:
                                                    if Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16 < 8:
                                                        if mem[_13370 + 126 len 2] > mem[_12561 + 126 len 2]:
                                                            if mem[_13370 + 126 len 2] < mem[_12561 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(mem[_13370 + 126 len 2] - mem[_12561 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13370 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13370 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) > mem[_12561 + 126 len 2]:
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) < mem[_12561 + 126 len 2]:
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) - mem[_12561 + 126 len 2]) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if mem[_12561 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) > 65535 / mem[_12561 + 126 len 2]:
                                                        revert with 0, 17
                                                    if Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16 < 8:
                                                        if mem[_13370 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                            if mem[_13370 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(mem[_13370 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                    else:
                                                        if 100 < Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16:
                                                            revert with 0, 17
                                                        if 8 > -uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 65535:
                                                            revert with 0, 17
                                                        if mem[_13370 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13370 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                            if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                                revert with 0, 17
                                                            if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100)) > 0:
                                                                if idx >= ('cd', 36).length:
                                                                    revert with 0, 50
                                                if s == -1:
                                                    revert with 0, 17
                                                s = s + 1
                                                continue 
                                            mem[_13370 + 64] = 0
                                            mem[_13370] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13370
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12561 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12561 + 64] > !0:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16 > 8:
                                                if Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16 < 8:
                                                    if mem[_13370 + 126 len 2] > mem[_12561 + 126 len 2]:
                                                        if mem[_13370 + 126 len 2] < mem[_12561 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13370 + 126 len 2] - mem[_12561 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13370 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) > 65535 / mem[_13370 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) > mem[_12561 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) < mem[_12561 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) - mem[_12561 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16:
                                                    revert with 0, 17
                                                if mem[_12561 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) > 65535 / mem[_12561 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16 < 8:
                                                    if mem[_13370 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                        if mem[_13370 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13370 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13370 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) > 65535 / mem[_13370 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13370 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    mem[_12561 + 64] = 0
                                    mem[_12561] = _12468
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
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > mem[_12561 + 126 len 2]:
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < mem[_12561 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - mem[_12561 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > mem[_12561 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < mem[_12561 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - mem[_12561 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12561 + 126 len 2] and uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) > 65535 / mem[_12561 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16 < 8:
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                    if mem[mem[(32 * idx) + 128] + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[mem[(32 * idx) + 128] + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[mem[(32 * idx) + 128] + 126 len 2] and uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) > 65535 / mem[mem[(32 * idx) + 128] + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) + 8) * mem[mem[(32 * idx) + 128] + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -4 * mem[mem[(32 * idx) + 128] + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -4 * mem[mem[(32 * idx) + 128] + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                    else:
                                        if idx >= ('cd', 36).length:
                                            revert with 0, 50
                                        _13217 = mem[64]
                                        mem[64] = mem[64] + 128
                                        mem[_13217] = 0
                                        mem[_13217 + 32] = 0
                                        mem[_13217 + 64] = 0
                                        mem[_13217 + 96] = 0
                                        _13226 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_13226 len 96] = call.data[calldata.size len 96]
                                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                                gas gas_remaining wei
                                               args cd[((32 * idx) + cd[36] + 36)]
                                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _13244 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 256
                                        require mem[_13244] == mem[_13244 + 12 len 20]
                                        _13274 = mem[_13244 + 32]
                                        _13275 = mem[_13244 + 64]
                                        _13276 = mem[_13244 + 96]
                                        _13277 = mem[_13244 + 128]
                                        require mem[_13244 + 128] == mem[_13244 + 158 len 2]
                                        require mem[_13244 + 160] == mem[_13244 + 190 len 2]
                                        require mem[_13244 + 224] == mem[_13244 + 240 len 16]
                                        mem[_13217 + 32] = mem[_13244 + 192]
                                        mem[_13217 + 96] = uint16(_13277)
                                        mem[_13226 + 64] = _13276
                                        mem[_13226 + 32] = _13275
                                        mem[_13226] = _13274
                                        _13376 = mem[64]
                                        mem[64] = mem[64] + 224
                                        mem[_13376 len 224] = call.data[calldata.size len 224]
                                        t = 0
                                        while t < 3:
                                            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
                                            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args mem[(32 * t) + _13226]
                                            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _14302 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 160
                                            require mem[_14302 + 96] == mem[_14302 + 120 len 8]
                                            require mem[_14302 + 128] == mem[_14302 + 159 len 1]
                                            _14411 = mem[_13376 + 192]
                                            if mem[_13376 + 192] == -1:
                                                revert with 0, 17
                                            mem[_13376 + 192] = mem[_13376 + 192] + 1
                                            if _14411 + 1 != 2:
                                                if t == -1:
                                                    revert with 0, 17
                                                t = t + 1
                                                continue 
                                            mem[_13217 + 64] = 6
                                            mem[_13217] = cd[((32 * idx) + cd[36] + 36)]
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            mem[(32 * idx) + 128] = _13217
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            if mem[_12561 + 64] > 6:
                                                revert with 0, 33
                                            if 28 * mem[_12561 + 64] > !24:
                                                revert with 0, 17
                                            if Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16 > 8:
                                                if Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16 < 8:
                                                    if mem[_13217 + 126 len 2] > mem[_12561 + 126 len 2]:
                                                        if mem[_13217 + 126 len 2] < mem[_12561 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(mem[_13217 + 126 len 2] - mem[_12561 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13217 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13217 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) > mem[_12561 + 126 len 2]:
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) < mem[_12561 + 126 len 2]:
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) - mem[_12561 + 126 len 2]) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            else:
                                                if 100 < Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16:
                                                    revert with 0, 17
                                                if mem[_12561 + 126 len 2] and uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) > 65535 / mem[_12561 + 126 len 2]:
                                                    revert with 0, 17
                                                if Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16 < 8:
                                                    if mem[_13217 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                        if mem[_13217 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(mem[_13217 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                                else:
                                                    if 100 < Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16:
                                                        revert with 0, 17
                                                    if 8 > -uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 65535:
                                                        revert with 0, 17
                                                    if mem[_13217 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) > 65535 / mem[_13217 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                        if uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                            revert with 0, 17
                                                        if uint16(uint16(uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, (-28 * mem[_12561 + 64]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[_12561 + 64]) + 24 % 16) + 100) * mem[_12561 + 126 len 2]) / 100)) > 0:
                                                            if idx >= ('cd', 36).length:
                                                                revert with 0, 50
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
                                        mem[_13217 + 64] = 0
                                        mem[_13217] = cd[((32 * idx) + cd[36] + 36)]
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        mem[(32 * idx) + 128] = _13217
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        if mem[_12561 + 64] > 6:
                                            revert with 0, 33
                                        if 28 * mem[_12561 + 64] > !0:
                                            revert with 0, 17
                                        if Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16 > 8:
                                            if Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16 < 8:
                                                if mem[_13217 + 126 len 2] > mem[_12561 + 126 len 2]:
                                                    if mem[_13217 + 126 len 2] < mem[_12561 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(mem[_13217 + 126 len 2] - mem[_12561 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13217 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) > 65535 / mem[_13217 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) > mem[_12561 + 126 len 2]:
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) < mem[_12561 + 126 len 2]:
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) - mem[_12561 + 126 len 2]) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                        else:
                                            if 100 < Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16:
                                                revert with 0, 17
                                            if mem[_12561 + 126 len 2] and uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) > 65535 / mem[_12561 + 126 len 2]:
                                                revert with 0, 17
                                            if Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16 < 8:
                                                if mem[_13217 + 126 len 2] > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                    if mem[_13217 + 126 len 2] < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(mem[_13217 + 126 len 2] - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100)) > 0:
                                                        if idx >= ('cd', 36).length:
                                                            revert with 0, 50
                                            else:
                                                if 100 < Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16:
                                                    revert with 0, 17
                                                if 8 > -uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 65535:
                                                    revert with 0, 17
                                                if mem[_13217 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) > 65535 / mem[_13217 + 126 len 2]:
                                                    revert with 0, 17
                                                if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) > uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                    if uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) < uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100):
                                                        revert with 0, 17
                                                    if uint16(uint16(uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) + 8) * mem[_13217 + 126 len 2]) / 100) - uint16(uint16(uint16(-(Mask(256, -28 * mem[_12561 + 64], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[_12561 + 64] % 16) + 100) * mem[_12561 + 126 len 2]) / 100)) > 0:
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
            while s < ('cd', 4).length:
                _15215 = mem[64]
                mem[mem[64] + 36] = cd[((32 * s) + cd[4] + 36)]
                _15217 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_15217 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_15217 + 36 len 28]
                _15220 = mem[_15217]
                idx = 0
                while idx < _15220:
                    mem[idx + _15215 + 68] = mem[_15217 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_15220) <= _15220:
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _15220 + _15215 + -mem[64] + 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require mem[96] >= 192
                        _15922 = mem[128]
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
                        _15984 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_15984] == mem[_15984 + 30 len 2]
                        require mem[_15984 + 32] == mem[_15984 + 62 len 2]
                        if mem[_15984 + 30 len 2]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        _16016 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_16016] = 0
                        mem[_16016 + 32] = 0
                        mem[_16016 + 64] = 0
                        mem[_16016 + 96] = 0
                        _16024 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_16024 len 96] = call.data[calldata.size len 96]
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                gas gas_remaining wei
                               args _15922
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16040 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_16040] == mem[_16040 + 12 len 20]
                        require mem[_16040 + 128] == mem[_16040 + 158 len 2]
                        require mem[_16040 + 160] == mem[_16040 + 190 len 2]
                        require mem[_16040 + 224] == mem[_16040 + 240 len 16]
                        # nil
                    else:
                        _15913 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_15913] = return_data.size
                        mem[_15913 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require return_data.size >= 192
                        _15923 = mem[_15913 + 32]
                        require mem[_15913 + 64] == mem[_15913 + 80 len 16]
                        require mem[_15913 + 96] == mem[_15913 + 112 len 16]
                        require mem[_15913 + 128] == mem[_15913 + 156 len 4]
                        require mem[_15913 + 160] == mem[_15913 + 188 len 4]
                        require mem[_15913 + 192] == mem[_15913 + 220 len 4]
                        if not mem[_15913 + 32]:
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
                        _15985 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_15985] == mem[_15985 + 30 len 2]
                        require mem[_15985 + 32] == mem[_15985 + 62 len 2]
                        if mem[_15985 + 30 len 2]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        _16017 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_16017] = 0
                        mem[_16017 + 32] = 0
                        mem[_16017 + 64] = 0
                        mem[_16017 + 96] = 0
                        _16025 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_16025 len 96] = call.data[calldata.size len 96]
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                gas gas_remaining wei
                               args _15923
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_16041] == mem[_16041 + 12 len 20]
                        require mem[_16041 + 128] == mem[_16041 + 158 len 2]
                        require mem[_16041 + 160] == mem[_16041 + 190 len 2]
                        require mem[_16041 + 224] == mem[_16041 + 240 len 16]
                        # nil
                else:
                    mem[_15215 + _15220 + 68] = 0
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _15220 + _15215 + -mem[64] + 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require mem[96] >= 192
                        _15927 = mem[128]
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
                        _15988 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_15988] == mem[_15988 + 30 len 2]
                        require mem[_15988 + 32] == mem[_15988 + 62 len 2]
                        if mem[_15988 + 30 len 2]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        _16020 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_16020] = 0
                        mem[_16020 + 32] = 0
                        mem[_16020 + 64] = 0
                        mem[_16020 + 96] = 0
                        _16032 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_16032 len 96] = call.data[calldata.size len 96]
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                gas gas_remaining wei
                               args _15927
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16042 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_16042] == mem[_16042 + 12 len 20]
                        require mem[_16042 + 128] == mem[_16042 + 158 len 2]
                        require mem[_16042 + 160] == mem[_16042 + 190 len 2]
                        require mem[_16042 + 224] == mem[_16042 + 240 len 16]
                        # nil
                    else:
                        _15915 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_15915] = return_data.size
                        mem[_15915 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        require return_data.size >= 192
                        _15928 = mem[_15915 + 32]
                        require mem[_15915 + 64] == mem[_15915 + 80 len 16]
                        require mem[_15915 + 96] == mem[_15915 + 112 len 16]
                        require mem[_15915 + 128] == mem[_15915 + 156 len 4]
                        require mem[_15915 + 160] == mem[_15915 + 188 len 4]
                        require mem[_15915 + 192] == mem[_15915 + 220 len 4]
                        if not mem[_15915 + 32]:
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
                        _15989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_15989] == mem[_15989 + 30 len 2]
                        require mem[_15989 + 32] == mem[_15989 + 62 len 2]
                        if mem[_15989 + 30 len 2]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        _16021 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_16021] = 0
                        mem[_16021 + 32] = 0
                        mem[_16021 + 64] = 0
                        mem[_16021 + 96] = 0
                        _16033 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_16033 len 96] = call.data[calldata.size len 96]
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                                gas gas_remaining wei
                               args _15928
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _16043 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_16043] == mem[_16043 + 12 len 20]
                        require mem[_16043 + 128] == mem[_16043 + 158 len 2]
                        require mem[_16043 + 160] == mem[_16043 + 190 len 2]
                        require mem[_16043 + 224] == mem[_16043 + 240 len 16]
                        # nil
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        return 0
}



}
