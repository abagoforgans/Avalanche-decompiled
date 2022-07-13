contract main {




// =====================  Runtime code  =====================


#
#  - sub_4c195014(?)
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


uint256 sub_2e93f4c1;

function sub_2e93f4c1(?) {
    return sub_2e93f4c1
}

function sub_641abb02(?) {
    require calldata.size - 4 >= 32
    sub_2e93f4c1 = arg1
}

function sqrt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if 1 > !arg1:
        revert with 0, 17
    s = arg1
    t = arg1 + 1 / 2
    while t < s:
        if not t:
            revert with 0, 18
        if arg1 / t > !t:
            revert with 0, 17
        s = t
        t = (arg1 / t) + t / 2
        continue 
    return s
}

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

function sub_0fe2b4d5(?) {
    require calldata.size - 4 >= 96
    if arg3 / 3 < 56:
        revert with 0, 17
    if (arg3 / 3) - 56 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
        revert with 0, 17
    if arg1 < arg2:
        revert with 0, 17
    if 1 > !(arg1 - arg2):
        revert with 0, 17
    s = arg1 - arg2
    t = arg1 + -arg2 + 1 / 2
    while t < s:
        if not t:
            revert with 0, 18
        if arg1 - arg2 / t > !t:
            revert with 0, 17
        s = t
        t = (arg1 - arg2 / t) + t / 2
        continue 
    if not s:
        revert with 0, 18
    if 7 > !((125 * arg3 / 3) - 7000 / 100):
        revert with 0, 17
    if ((125 * arg3 / 3) - 7000 / 100) + 7 > !(20 / s):
        revert with 0, 17
    return (((125 * arg3 / 3) - 7000 / 100) + (20 / s) + 7)
}

function teamInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[160] = 0
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
            gas gas_remaining wei
           args arg1
    mem[352 len 256] = ext_call.return_data[0 len 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    mem[128] = ext_call.return_data[192]
    mem[224] = ext_call.return_data[190 len 2]
    mem[192] = ext_call.return_data[158 len 2]
    mem[320] = ext_call.return_data[96]
    mem[288] = ext_call.return_data[64]
    mem[256] = ext_call.return_data[32]
    mem[64] = ceil32(return_data.size) + 576
    mem[ceil32(return_data.size) + 352 len 224] = call.data[calldata.size len 224]
    idx = 0
    while idx < 3:
        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + 256]
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _36 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_36 + 96] == mem[_36 + 120 len 8]
        require mem[_36 + 128] == mem[_36 + 159 len 1]
        _48 = mem[ceil32(return_data.size) + 544]
        if mem[ceil32(return_data.size) + 544] == -1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 544] = mem[ceil32(return_data.size) + 544] + 1
        if _48 + 1 != 2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[160] = 6
        mem[96] = arg1
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = mem[128]
        mem[mem[64] + 64] = 6
        mem[mem[64] + 96] = mem[222 len 2]
        mem[mem[64] + 128] = mem[254 len 2]
        return arg1, mem[mem[64] + 32], 6, mem[mem[64] + 96 len 64]
    mem[160] = 0
    mem[96] = arg1
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = mem[128]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = mem[222 len 2]
    mem[mem[64] + 128] = mem[254 len 2]
    return arg1, mem[mem[64] + 32], 0, mem[mem[64] + 96 len 64]
}

function sub_2083bab1(?) {
    require calldata.size - 4 >= 320
    require calldata.size - 4 >= 160
    require arg1 < 7
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require calldata.size - 164 >= 160
    require arg4 < 7
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    if arg4 > 6:
        revert with 0, 33
    if arg1 > 6:
        revert with 0, 33
    if 28 * arg1 > !(4 * arg4):
        revert with 0, 17
    if Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16 > 8:
        if Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16 < 8:
            return arg2 << 240, uint16(arg5)
        if 100 < Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16:
            revert with 0, 17
        if 8 > -uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 65535:
            revert with 0, 17
        if uint16(arg5) and uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) > -1 / uint16(arg5):
            revert with 0, 17
        return arg2 << 240, 
               uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100)
    if 100 < Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16:
        revert with 0, 17
    if uint16(arg2) and uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) > -1 / uint16(arg2):
        revert with 0, 17
    if Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16 < 8:
        return uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100 << 240, 
               uint16(arg5)
    if 100 < Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16:
        revert with 0, 17
    if 8 > -uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 65535:
        revert with 0, 17
    if uint16(arg5) and uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) > -1 / uint16(arg5):
        revert with 0, 17
    return uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100 << 240, 
           uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100)
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

function sub_5c967567(?) {
    require calldata.size - 4 >= 320
    require calldata.size - 4 >= 160
    require arg1 < 7
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require calldata.size - 164 >= 160
    require arg4 < 7
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    if arg4 > 6:
        revert with 0, 33
    if arg1 > 6:
        revert with 0, 33
    if 28 * arg1 > !(4 * arg4):
        revert with 0, 17
    if Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16 > 8:
        if Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16 < 8:
            if uint16(arg5) <= uint16(arg2):
                return 0
            if sub_2e93f4c1:
                if uint16(arg3) / 3 < 56:
                    revert with 0, 17
                if (uint16(arg3) / 3) - 56 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                    revert with 0, 17
                if uint16(arg5) < uint16(arg2):
                    revert with 0, 17
                if 1 > !(uint16(arg5) - uint16(arg2)):
                    revert with 0, 17
                s = uint16(arg5) - uint16(arg2)
                t = uint16(arg5) + -uint16(arg2) + 1 / 2
                while t < s:
                    if not t:
                        revert with 0, 18
                    if uint16(arg5) - uint16(arg2) / t > !t:
                        revert with 0, 17
                    s = t
                    t = (uint16(arg5) - uint16(arg2) / t) + t / 2
                    continue 
                if not s:
                    revert with 0, 18
                if 7 > !((125 * uint16(arg3) / 3) - 7000 / 100):
                    revert with 0, 17
                if ((125 * uint16(arg3) / 3) - 7000 / 100) + 7 > !(20 / s):
                    revert with 0, 17
                if ((125 * uint16(arg3) / 3) - 7000 / 100) + (20 / s) + 7 > sub_2e93f4c1:
                    return 0
            if uint16(arg5) < uint16(arg2):
                revert with 0, 17
            return uint16(uint16(arg5) - uint16(arg2))
        if 100 < Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16:
            revert with 0, 17
        if 8 > -uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 65535:
            revert with 0, 17
        if uint16(arg5) and uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) > -1 / uint16(arg5):
            revert with 0, 17
        if uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) <= uint16(arg2):
            return 0
        if sub_2e93f4c1:
            if uint16(arg3) / 3 < 56:
                revert with 0, 17
            if (uint16(arg3) / 3) - 56 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                revert with 0, 17
            if uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) < uint16(arg2):
                revert with 0, 17
            if 1 > !(uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) - uint16(arg2)):
                revert with 0, 17
            s = uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) - uint16(arg2)
            t = uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) + -uint16(arg2) + 1 / 2
            while t < s:
                if not t:
                    revert with 0, 18
                if uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) - uint16(arg2) / t > !t:
                    revert with 0, 17
                s = t
                t = (uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) - uint16(arg2) / t) + t / 2
                continue 
            if not s:
                revert with 0, 18
            if 7 > !((125 * uint16(arg3) / 3) - 7000 / 100):
                revert with 0, 17
            if ((125 * uint16(arg3) / 3) - 7000 / 100) + 7 > !(20 / s):
                revert with 0, 17
            if ((125 * uint16(arg3) / 3) - 7000 / 100) + (20 / s) + 7 > sub_2e93f4c1:
                return 0
        if uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) < uint16(arg2):
            revert with 0, 17
        return uint16(uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) - uint16(arg2))
    if 100 < Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16:
        revert with 0, 17
    if uint16(arg2) and uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) > -1 / uint16(arg2):
        revert with 0, 17
    if Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16 < 8:
        if uint16(arg5) <= uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100):
            return 0
        if sub_2e93f4c1:
            if uint16(arg3) / 3 < 56:
                revert with 0, 17
            if (uint16(arg3) / 3) - 56 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                revert with 0, 17
            if uint16(arg5) < uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100):
                revert with 0, 17
            if 1 > !(uint16(arg5) - uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100)):
                revert with 0, 17
            s = uint16(arg5) - uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100)
            t = uint16(arg5) + -uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100) + 1 / 2
            while t < s:
                if not t:
                    revert with 0, 18
                if uint16(arg5) - uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100) / t > !t:
                    revert with 0, 17
                s = t
                t = (uint16(arg5) - uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100) / t) + t / 2
                continue 
            if not s:
                revert with 0, 18
            if 7 > !((125 * uint16(arg3) / 3) - 7000 / 100):
                revert with 0, 17
            if ((125 * uint16(arg3) / 3) - 7000 / 100) + 7 > !(20 / s):
                revert with 0, 17
            if ((125 * uint16(arg3) / 3) - 7000 / 100) + (20 / s) + 7 > sub_2e93f4c1:
                return 0
        if uint16(arg5) < uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100):
            revert with 0, 17
        return uint16(uint16(arg5) - uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100))
    if 100 < Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16:
        revert with 0, 17
    if 8 > -uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 65535:
        revert with 0, 17
    if uint16(arg5) and uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) > -1 / uint16(arg5):
        revert with 0, 17
    if uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) <= uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100):
        return 0
    if sub_2e93f4c1:
        if uint16(arg3) / 3 < 56:
            revert with 0, 17
        if (uint16(arg3) / 3) - 56 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
            revert with 0, 17
        if uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) < uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100):
            revert with 0, 17
        if 1 > !(uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) - uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100)):
            revert with 0, 17
        s = uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) - uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100)
        t = uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) + -uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100) + 1 / 2
        while t < s:
            if not t:
                revert with 0, 18
            if uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) - uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100) / t > !t:
                revert with 0, 17
            s = t
            t = (uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) - uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100) / t) + t / 2
            continue 
        if not s:
            revert with 0, 18
        if 7 > !((125 * uint16(arg3) / 3) - 7000 / 100):
            revert with 0, 17
        if ((125 * uint16(arg3) / 3) - 7000 / 100) + 7 > !(20 / s):
            revert with 0, 17
        if ((125 * uint16(arg3) / 3) - 7000 / 100) + (20 / s) + 7 > sub_2e93f4c1:
            return 0
    if uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) < uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100):
        revert with 0, 17
    return uint16(uint16(uint16(arg5) * uint16(uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) + 8) / 100) - uint16(uint16(arg2) * uint16(-(Mask(256, (-28 * arg1) - (4 * arg4), 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << (-28 * arg1) - (4 * arg4) % 16) + 100) / 100))
}

function sub_c0a6e9d7(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0xf0344e36 with:
            gas gas_remaining wei
           args arg1
    mem[96 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x183ce75d with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96 len 256] = ext_call.return_data[0 len 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    mem[(2 * ceil32(return_data.size)) + 96] = 0
    mem[(2 * ceil32(return_data.size)) + 160] = 0
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 352 len 256] = ext_call.return_data[0 len 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[192]
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[190 len 2]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[158 len 2]
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[96]
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[64]
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[32]
    mem[64] = (4 * ceil32(return_data.size)) + 576
    mem[(4 * ceil32(return_data.size)) + 352 len 224] = call.data[calldata.size len 224]
    idx = 0
    while idx < 3:
        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256]
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _253 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_253 + 96] == mem[_253 + 120 len 8]
        require mem[_253 + 128] == mem[_253 + 159 len 1]
        _269 = mem[(4 * ceil32(return_data.size)) + 544]
        if mem[(4 * ceil32(return_data.size)) + 544] == -1:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 544] = mem[(4 * ceil32(return_data.size)) + 544] + 1
        if _269 + 1 != 2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(2 * ceil32(return_data.size)) + 160] = 6
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        _273 = mem[64]
        mem[64] = mem[64] + 160
        mem[_273] = 0
        mem[_273 + 32] = 0
        mem[_273 + 64] = 0
        mem[_273 + 96] = 0
        mem[_273 + 128] = 0
        _275 = mem[64]
        mem[64] = mem[64] + 96
        mem[_275 len 96] = call.data[calldata.size len 96]
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _281 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_281] == mem[_281 + 12 len 20]
        _284 = mem[_281 + 32]
        _285 = mem[_281 + 64]
        _286 = mem[_281 + 96]
        _287 = mem[_281 + 128]
        require mem[_281 + 128] == mem[_281 + 158 len 2]
        _293 = mem[_281 + 160]
        require mem[_281 + 160] == mem[_281 + 190 len 2]
        require mem[_281 + 224] == mem[_281 + 240 len 16]
        mem[_273 + 32] = mem[_281 + 192]
        mem[_273 + 128] = uint16(_293)
        mem[_273 + 96] = uint16(_287)
        mem[_275 + 64] = _286
        mem[_275 + 32] = _285
        mem[_275] = _284
        _297 = mem[64]
        mem[64] = mem[64] + 224
        mem[_297 len 224] = call.data[calldata.size len 224]
        idx = 0
        while idx < 3:
            require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
            staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + _275]
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_1187 + 96] == mem[_1187 + 120 len 8]
            require mem[_1187 + 128] == mem[_1187 + 159 len 1]
            _1203 = mem[_297 + 192]
            if mem[_297 + 192] == -1:
                revert with 0, 17
            mem[_297 + 192] = mem[_297 + 192] + 1
            if _1203 + 1 != 2:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_273 + 64] = 6
            mem[_273] = ext_call.return_data[0]
            _1217 = mem[(2 * ceil32(return_data.size)) + 160]
            if mem[(2 * ceil32(return_data.size)) + 160] > 6:
                revert with 0, 33
            if 28 * mem[(2 * ceil32(return_data.size)) + 160] > !24:
                revert with 0, 17
            if Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16 > 8:
                _1271 = mem[(2 * ceil32(return_data.size)) + 192]
                if Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16 < 8:
                    _1291 = mem[_273 + 96]
                    if not ext_call.return_data[160]:
                        if not ext_call.return_data[128]:
                            if mem[_273 + 126 len 2] > 65535:
                                revert with 0, 17
                            if not ext_call.return_data[224]:
                                if not ext_call.return_data[192]:
                                    if mem[(2 * ceil32(return_data.size)) + 222 len 2] > 65535:
                                        revert with 0, 17
                                    mem[mem[64]] = mem[_273 + 126 len 2]
                                    return mem[mem[64]], _1271 << 240
                                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[192]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1632 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_1632] == mem[_1632 + 30 len 2]
                                require mem[_1632 + 32] == mem[_1632 + 62 len 2]
                                if uint16(_1271) > -mem[_1632 + 30 len 2] + 65535:
                                    revert with 0, 17
                                if uint16(mem[_1632 + 30 len 2] + uint16(_1271)) > 65535:
                                    revert with 0, 17
                                return _1291 << 240, uint16(mem[_1632 + 30 len 2] + uint16(_1271))
                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[224]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1535 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _1600 = mem[_1535]
                            require mem[_1535] == mem[_1535 + 30 len 2]
                            require mem[_1535 + 32] == mem[_1535 + 62 len 2]
                            if not ext_call.return_data[192]:
                                if uint16(_1271) > 65535:
                                    revert with 0, 17
                                if uint16(_1271) > -mem[_1535 + 30 len 2] + 65535:
                                    revert with 0, 17
                                return _1291 << 240, uint16(mem[_1535 + 30 len 2] + uint16(_1271))
                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[192]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1957 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1957] == mem[_1957 + 30 len 2]
                            require mem[_1957 + 32] == mem[_1957 + 62 len 2]
                            if uint16(_1271) > -mem[_1957 + 30 len 2] + 65535:
                                revert with 0, 17
                            if uint16(mem[_1957 + 30 len 2] + uint16(_1271)) > -uint16(_1600) + 65535:
                                revert with 0, 17
                            return _1291 << 240, uint16(uint16(_1600) + uint16(mem[_1957 + 30 len 2] + uint16(_1271)))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[128]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1382 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1419 = mem[_1382]
                        require mem[_1382] == mem[_1382 + 30 len 2]
                        require mem[_1382 + 32] == mem[_1382 + 62 len 2]
                        if uint16(_1291) > -mem[_1382 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1382 + 30 len 2] + uint16(_1291)) > 65535:
                            revert with 0, 17
                        if not ext_call.return_data[224]:
                            if not ext_call.return_data[192]:
                                if uint16(_1271) > 65535:
                                    revert with 0, 17
                                mem[mem[64]] = uint16(mem[_1382 + 30 len 2] + uint16(_1291))
                                return mem[mem[64]], _1271 << 240
                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[192]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1956 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1956] == mem[_1956 + 30 len 2]
                            require mem[_1956 + 32] == mem[_1956 + 62 len 2]
                            if uint16(_1271) > -mem[_1956 + 30 len 2] + 65535:
                                revert with 0, 17
                            if uint16(mem[_1956 + 30 len 2] + uint16(_1271)) > 65535:
                                revert with 0, 17
                            return uint16(_1419) + uint16(_1291) << 240, uint16(mem[_1956 + 30 len 2] + uint16(_1271))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[224]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1832 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1926 = mem[_1832]
                        require mem[_1832] == mem[_1832 + 30 len 2]
                        require mem[_1832 + 32] == mem[_1832 + 62 len 2]
                        if not ext_call.return_data[192]:
                            if uint16(_1271) > 65535:
                                revert with 0, 17
                            if uint16(_1271) > -mem[_1832 + 30 len 2] + 65535:
                                revert with 0, 17
                            return uint16(_1419) + uint16(_1291) << 240, uint16(mem[_1832 + 30 len 2] + uint16(_1271))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2315 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2315] == mem[_2315 + 30 len 2]
                        require mem[_2315 + 32] == mem[_2315 + 62 len 2]
                        if uint16(_1271) > -mem[_2315 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_2315 + 30 len 2] + uint16(_1271)) > -uint16(_1926) + 65535:
                            revert with 0, 17
                        return uint16(_1419) + uint16(_1291) << 240, uint16(uint16(_1926) + uint16(mem[_2315 + 30 len 2] + uint16(_1271)))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[160]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1330 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1369 = mem[_1330]
                    require mem[_1330] == mem[_1330 + 30 len 2]
                    require mem[_1330 + 32] == mem[_1330 + 62 len 2]
                    if not ext_call.return_data[128]:
                        if uint16(_1291) > 65535:
                            revert with 0, 17
                        if uint16(_1291) > -mem[_1330 + 30 len 2] + 65535:
                            revert with 0, 17
                        if not ext_call.return_data[224]:
                            if not ext_call.return_data[192]:
                                if uint16(_1271) > 65535:
                                    revert with 0, 17
                                mem[mem[64]] = uint16(mem[_1330 + 30 len 2] + uint16(_1291))
                                return mem[mem[64]], _1271 << 240
                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[192]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1955 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1955] == mem[_1955 + 30 len 2]
                            require mem[_1955 + 32] == mem[_1955 + 62 len 2]
                            if uint16(_1271) > -mem[_1955 + 30 len 2] + 65535:
                                revert with 0, 17
                            if uint16(mem[_1955 + 30 len 2] + uint16(_1271)) > 65535:
                                revert with 0, 17
                            return uint16(_1369) + uint16(_1291) << 240, uint16(mem[_1955 + 30 len 2] + uint16(_1271))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[224]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1831 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1925 = mem[_1831]
                        require mem[_1831] == mem[_1831 + 30 len 2]
                        require mem[_1831 + 32] == mem[_1831 + 62 len 2]
                        if not ext_call.return_data[192]:
                            if uint16(_1271) > 65535:
                                revert with 0, 17
                            if uint16(_1271) > -mem[_1831 + 30 len 2] + 65535:
                                revert with 0, 17
                            return uint16(_1369) + uint16(_1291) << 240, uint16(mem[_1831 + 30 len 2] + uint16(_1271))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2314] == mem[_2314 + 30 len 2]
                        require mem[_2314 + 32] == mem[_2314 + 62 len 2]
                        if uint16(_1271) > -mem[_2314 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_2314 + 30 len 2] + uint16(_1271)) > -uint16(_1925) + 65535:
                            revert with 0, 17
                        return uint16(_1369) + uint16(_1291) << 240, uint16(uint16(_1925) + uint16(mem[_2314 + 30 len 2] + uint16(_1271)))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[128]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1599 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1651 = mem[_1599]
                    require mem[_1599] == mem[_1599 + 30 len 2]
                    require mem[_1599 + 32] == mem[_1599 + 62 len 2]
                    if uint16(_1291) > -mem[_1599 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1599 + 30 len 2] + uint16(_1291)) > -uint16(_1369) + 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(_1271) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(uint16(_1369) + uint16(mem[_1599 + 30 len 2] + uint16(_1291)))
                            return mem[mem[64]], _1271 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2313 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2313] == mem[_2313 + 30 len 2]
                        require mem[_2313 + 32] == mem[_2313 + 62 len 2]
                        if uint16(_1271) > -mem[_2313 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_2313 + 30 len 2] + uint16(_1271)) > 65535:
                            revert with 0, 17
                        return uint16(_1369) + uint16(uint16(_1651) + uint16(_1291)) << 240, uint16(mem[_2313 + 30 len 2] + uint16(_1271))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _2290 = mem[_2200]
                    require mem[_2200] == mem[_2200 + 30 len 2]
                    require mem[_2200 + 32] == mem[_2200 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(_1271) > 65535:
                            revert with 0, 17
                        if uint16(_1271) > -mem[_2200 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1369) + uint16(uint16(_1651) + uint16(_1291)) << 240, uint16(mem[_2200 + 30 len 2] + uint16(_1271))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2620 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2620] == mem[_2620 + 30 len 2]
                    require mem[_2620 + 32] == mem[_2620 + 62 len 2]
                    if uint16(_1271) > -mem[_2620 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2620 + 30 len 2] + uint16(_1271)) > -uint16(_2290) + 65535:
                        revert with 0, 17
                    return uint16(_1369) + uint16(uint16(_1651) + uint16(_1291)) << 240, 
                           uint16(uint16(_2290) + uint16(mem[_2620 + 30 len 2] + uint16(_1271)))
                if 100 < Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16:
                    revert with 0, 17
                if 8 > -uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 65535:
                    revert with 0, 17
                _1331 = mem[_273 + 96]
                if mem[_273 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) > -1 / mem[_273 + 126 len 2]:
                    revert with 0, 17
                if not ext_call.return_data[160]:
                    if not ext_call.return_data[128]:
                        if uint16(mem[_273 + 126 len 2] * uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) / 100) > 65535:
                            revert with 0, 17
                        if not ext_call.return_data[224]:
                            if not ext_call.return_data[192]:
                                if mem[(2 * ceil32(return_data.size)) + 222 len 2] > 65535:
                                    revert with 0, 17
                                mem[mem[64]] = uint16(mem[_273 + 126 len 2] * uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) / 100)
                                return mem[mem[64]], _1271 << 240
                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[192]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1983 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1983] == mem[_1983 + 30 len 2]
                            require mem[_1983 + 32] == mem[_1983 + 62 len 2]
                            if uint16(_1271) > -mem[_1983 + 30 len 2] + 65535:
                                revert with 0, 17
                            if uint16(mem[_1983 + 30 len 2] + uint16(_1271)) > 65535:
                                revert with 0, 17
                            return uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100 << 240, 
                                   uint16(mem[_1983 + 30 len 2] + uint16(_1271))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[224]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1895 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1959 = mem[_1895]
                        require mem[_1895] == mem[_1895 + 30 len 2]
                        require mem[_1895 + 32] == mem[_1895 + 62 len 2]
                        if not ext_call.return_data[192]:
                            if uint16(_1271) > 65535:
                                revert with 0, 17
                            if uint16(_1271) > -mem[_1895 + 30 len 2] + 65535:
                                revert with 0, 17
                            return uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100 << 240, 
                                   uint16(mem[_1895 + 30 len 2] + uint16(_1271))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2341 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2341] == mem[_2341 + 30 len 2]
                        require mem[_2341 + 32] == mem[_2341 + 62 len 2]
                        if uint16(_1271) > -mem[_2341 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_2341 + 30 len 2] + uint16(_1271)) > -uint16(_1959) + 65535:
                            revert with 0, 17
                        return uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100 << 240, 
                               uint16(uint16(_1959) + uint16(mem[_2341 + 30 len 2] + uint16(_1271)))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[128]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1682 = mem[_1633]
                    require mem[_1633] == mem[_1633 + 30 len 2]
                    require mem[_1633 + 32] == mem[_1633 + 62 len 2]
                    if uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) > -mem[_1633 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1633 + 30 len 2] + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)) > 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(_1271) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_1633 + 30 len 2] + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100))
                            return mem[mem[64]], _1271 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2340 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2340] == mem[_2340 + 30 len 2]
                        require mem[_2340 + 32] == mem[_2340 + 62 len 2]
                        if uint16(_1271) > -mem[_2340 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_2340 + 30 len 2] + uint16(_1271)) > 65535:
                            revert with 0, 17
                        return uint16(_1682) + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                               uint16(mem[_2340 + 30 len 2] + uint16(_1271))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2252 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _2317 = mem[_2252]
                    require mem[_2252] == mem[_2252 + 30 len 2]
                    require mem[_2252 + 32] == mem[_2252 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(_1271) > 65535:
                            revert with 0, 17
                        if uint16(_1271) > -mem[_2252 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1682) + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                               uint16(mem[_2252 + 30 len 2] + uint16(_1271))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2638] == mem[_2638 + 30 len 2]
                    require mem[_2638 + 32] == mem[_2638 + 62 len 2]
                    if uint16(_1271) > -mem[_2638 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2638 + 30 len 2] + uint16(_1271)) > -uint16(_2317) + 65535:
                        revert with 0, 17
                    return uint16(_1682) + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                           uint16(uint16(_2317) + uint16(mem[_2638 + 30 len 2] + uint16(_1271)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[160]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1536 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1601 = mem[_1536]
                require mem[_1536] == mem[_1536 + 30 len 2]
                require mem[_1536 + 32] == mem[_1536 + 62 len 2]
                if not ext_call.return_data[128]:
                    if uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) > -mem[_1536 + 30 len 2] + 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(_1271) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_1536 + 30 len 2] + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100))
                            return mem[mem[64]], _1271 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2339 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2339] == mem[_2339 + 30 len 2]
                        require mem[_2339 + 32] == mem[_2339 + 62 len 2]
                        if uint16(_1271) > -mem[_2339 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_2339 + 30 len 2] + uint16(_1271)) > 65535:
                            revert with 0, 17
                        return uint16(_1601) + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                               uint16(mem[_2339 + 30 len 2] + uint16(_1271))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _2316 = mem[_2251]
                    require mem[_2251] == mem[_2251 + 30 len 2]
                    require mem[_2251 + 32] == mem[_2251 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(_1271) > 65535:
                            revert with 0, 17
                        if uint16(_1271) > -mem[_2251 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1601) + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                               uint16(mem[_2251 + 30 len 2] + uint16(_1271))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2637 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2637] == mem[_2637 + 30 len 2]
                    require mem[_2637 + 32] == mem[_2637 + 62 len 2]
                    if uint16(_1271) > -mem[_2637 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2637 + 30 len 2] + uint16(_1271)) > -uint16(_2316) + 65535:
                        revert with 0, 17
                    return uint16(_1601) + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                           uint16(uint16(_2316) + uint16(mem[_2637 + 30 len 2] + uint16(_1271)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[128]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1958 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2008 = mem[_1958]
                require mem[_1958] == mem[_1958 + 30 len 2]
                require mem[_1958 + 32] == mem[_1958 + 62 len 2]
                if uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) > -mem[_1958 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1958 + 30 len 2] + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)) > -uint16(_1601) + 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(_1271) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(uint16(_1601) + uint16(mem[_1958 + 30 len 2] + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)))
                        return mem[mem[64]], _1271 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2636 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2636] == mem[_2636 + 30 len 2]
                    require mem[_2636 + 32] == mem[_2636 + 62 len 2]
                    if uint16(_1271) > -mem[_2636 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2636 + 30 len 2] + uint16(_1271)) > 65535:
                        revert with 0, 17
                    return uint16(_1601) + uint16(uint16(_2008) + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)) << 240, 
                           uint16(mem[_2636 + 30 len 2] + uint16(_1271))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2578 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2621 = mem[_2578]
                require mem[_2578] == mem[_2578 + 30 len 2]
                require mem[_2578 + 32] == mem[_2578 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(_1271) > 65535:
                        revert with 0, 17
                    if uint16(_1271) > -mem[_2578 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1601) + uint16(uint16(_2008) + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)) << 240, 
                           uint16(mem[_2578 + 30 len 2] + uint16(_1271))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2825 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2825] == mem[_2825 + 30 len 2]
                require mem[_2825 + 32] == mem[_2825 + 62 len 2]
                if uint16(_1271) > -mem[_2825 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2825 + 30 len 2] + uint16(_1271)) > -uint16(_2621) + 65535:
                    revert with 0, 17
                return uint16(_1601) + uint16(uint16(_2008) + uint16(uint16(_1331) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)) << 240, 
                       uint16(uint16(_2621) + uint16(mem[_2825 + 30 len 2] + uint16(_1271)))
            if 100 < Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16:
                revert with 0, 17
            _1297 = mem[(2 * ceil32(return_data.size)) + 192]
            if mem[(2 * ceil32(return_data.size)) + 222 len 2] and uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) > -1 / mem[(2 * ceil32(return_data.size)) + 222 len 2]:
                revert with 0, 17
            if Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16 < 8:
                _1383 = mem[_273 + 96]
                if not ext_call.return_data[160]:
                    if not ext_call.return_data[128]:
                        if mem[_273 + 126 len 2] > 65535:
                            revert with 0, 17
                        if not ext_call.return_data[224]:
                            if not ext_call.return_data[192]:
                                if uint16(mem[(2 * ceil32(return_data.size)) + 222 len 2] * uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) / 100) > 65535:
                                    revert with 0, 17
                                mem[mem[64]] = mem[_273 + 126 len 2]
                                return mem[mem[64]], 
                                       uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100 << 240
                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[192]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1896 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1896] == mem[_1896 + 30 len 2]
                            require mem[_1896 + 32] == mem[_1896 + 62 len 2]
                            if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_1896 + 30 len 2] + 65535:
                                revert with 0, 17
                            if uint16(mem[_1896 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > 65535:
                                revert with 0, 17
                            return _1383 << 240, 
                                   uint16(mem[_1896 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[224]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1764 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1834 = mem[_1764]
                        require mem[_1764] == mem[_1764 + 30 len 2]
                        require mem[_1764 + 32] == mem[_1764 + 62 len 2]
                        if not ext_call.return_data[192]:
                            if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                                revert with 0, 17
                            if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_1764 + 30 len 2] + 65535:
                                revert with 0, 17
                            return _1383 << 240, 
                                   uint16(mem[_1764 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2255] == mem[_2255 + 30 len 2]
                        require mem[_2255 + 32] == mem[_2255 + 62 len 2]
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2255 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_2255 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > -uint16(_1834) + 65535:
                            revert with 0, 17
                        return _1383 << 240, 
                               uint16(uint16(_1834) + uint16(mem[_2255 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[128]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1537 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1603 = mem[_1537]
                    require mem[_1537] == mem[_1537 + 30 len 2]
                    require mem[_1537 + 32] == mem[_1537 + 62 len 2]
                    if uint16(_1383) > -mem[_1537 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1537 + 30 len 2] + uint16(_1383)) > 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_1537 + 30 len 2] + uint16(_1383))
                            return mem[mem[64]], 
                                   uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2254] == mem[_2254 + 30 len 2]
                        require mem[_2254 + 32] == mem[_2254 + 62 len 2]
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2254 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_2254 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > 65535:
                            revert with 0, 17
                        return uint16(_1603) + uint16(_1383) << 240, 
                               uint16(mem[_2254 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2109 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _2203 = mem[_2109]
                    require mem[_2109] == mem[_2109 + 30 len 2]
                    require mem[_2109 + 32] == mem[_2109 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2109 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1603) + uint16(_1383) << 240, 
                               uint16(mem[_2109 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2581 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2581] == mem[_2581 + 30 len 2]
                    require mem[_2581 + 32] == mem[_2581 + 62 len 2]
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2581 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2581 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > -uint16(_2203) + 65535:
                        revert with 0, 17
                    return uint16(_1603) + uint16(_1383) << 240, 
                           uint16(uint16(_2203) + uint16(mem[_2581 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[160]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1509 = mem[_1470]
                require mem[_1470] == mem[_1470 + 30 len 2]
                require mem[_1470 + 32] == mem[_1470 + 62 len 2]
                if not ext_call.return_data[128]:
                    if uint16(_1383) > 65535:
                        revert with 0, 17
                    if uint16(_1383) > -mem[_1470 + 30 len 2] + 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_1470 + 30 len 2] + uint16(_1383))
                            return mem[mem[64]], 
                                   uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2253] == mem[_2253 + 30 len 2]
                        require mem[_2253 + 32] == mem[_2253 + 62 len 2]
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2253 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_2253 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > 65535:
                            revert with 0, 17
                        return uint16(_1509) + uint16(_1383) << 240, 
                               uint16(mem[_2253 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2108 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _2202 = mem[_2108]
                    require mem[_2108] == mem[_2108 + 30 len 2]
                    require mem[_2108 + 32] == mem[_2108 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2108 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1509) + uint16(_1383) << 240, 
                               uint16(mem[_2108 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2580 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2580] == mem[_2580 + 30 len 2]
                    require mem[_2580 + 32] == mem[_2580 + 62 len 2]
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2580 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2580 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > -uint16(_2202) + 65535:
                        revert with 0, 17
                    return uint16(_1509) + uint16(_1383) << 240, 
                           uint16(uint16(_2202) + uint16(mem[_2580 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[128]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1929 = mem[_1833]
                require mem[_1833] == mem[_1833 + 30 len 2]
                require mem[_1833 + 32] == mem[_1833 + 62 len 2]
                if uint16(_1383) > -mem[_1833 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1833 + 30 len 2] + uint16(_1383)) > -uint16(_1509) + 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(uint16(_1509) + uint16(mem[_1833 + 30 len 2] + uint16(_1383)))
                        return mem[mem[64]], 
                               uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2579 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2579] == mem[_2579 + 30 len 2]
                    require mem[_2579 + 32] == mem[_2579 + 62 len 2]
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2579 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2579 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > 65535:
                        revert with 0, 17
                    return uint16(_1509) + uint16(uint16(_1929) + uint16(_1383)) << 240, 
                           uint16(mem[_2579 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2458 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2551 = mem[_2458]
                require mem[_2458] == mem[_2458 + 30 len 2]
                require mem[_2458 + 32] == mem[_2458 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2458 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1509) + uint16(uint16(_1929) + uint16(_1383)) << 240, 
                           uint16(mem[_2458 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2804 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2804] == mem[_2804 + 30 len 2]
                require mem[_2804 + 32] == mem[_2804 + 62 len 2]
                if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2804 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2804 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > -uint16(_2551) + 65535:
                    revert with 0, 17
                return uint16(_1509) + uint16(uint16(_1929) + uint16(_1383)) << 240, 
                       uint16(uint16(_2551) + uint16(mem[_2804 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)))
            if 100 < Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16:
                revert with 0, 17
            if 8 > -uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 65535:
                revert with 0, 17
            _1471 = mem[_273 + 96]
            if mem[_273 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) > -1 / mem[_273 + 126 len 2]:
                revert with 0, 17
            if not ext_call.return_data[160]:
                if not ext_call.return_data[128]:
                    if uint16(mem[_273 + 126 len 2] * uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) / 100) > 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(mem[(2 * ceil32(return_data.size)) + 222 len 2] * uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) / 100) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_273 + 126 len 2] * uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) / 100)
                            return mem[mem[64]], 
                                   uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2297] == mem[_2297 + 30 len 2]
                        require mem[_2297 + 32] == mem[_2297 + 62 len 2]
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2297 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_2297 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > 65535:
                            revert with 0, 17
                        return uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100 << 240, 
                               uint16(mem[_2297 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _2257 = mem[_2171]
                    require mem[_2171] == mem[_2171 + 30 len 2]
                    require mem[_2171 + 32] == mem[_2171 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2171 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100 << 240, 
                               uint16(mem[_2171 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2613 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2613] == mem[_2613 + 30 len 2]
                    require mem[_2613 + 32] == mem[_2613 + 62 len 2]
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2613 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2613 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > -uint16(_2257) + 65535:
                        revert with 0, 17
                    return uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100 << 240, 
                           uint16(uint16(_2257) + uint16(mem[_2613 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[128]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1897 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1963 = mem[_1897]
                require mem[_1897] == mem[_1897 + 30 len 2]
                require mem[_1897 + 32] == mem[_1897 + 62 len 2]
                if uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) > -mem[_1897 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1897 + 30 len 2] + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)) > 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1897 + 30 len 2] + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100))
                        return mem[mem[64]], 
                               uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2612 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2612] == mem[_2612 + 30 len 2]
                    require mem[_2612 + 32] == mem[_2612 + 62 len 2]
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2612 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2612 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > 65535:
                        revert with 0, 17
                    return uint16(_1963) + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_2612 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2519 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2583 = mem[_2519]
                require mem[_2519] == mem[_2519 + 30 len 2]
                require mem[_2519 + 32] == mem[_2519 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2519 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1963) + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_2519 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2817 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2817] == mem[_2817 + 30 len 2]
                require mem[_2817 + 32] == mem[_2817 + 62 len 2]
                if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2817 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2817 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > -uint16(_2583) + 65535:
                    revert with 0, 17
                return uint16(_1963) + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                       uint16(uint16(_2583) + uint16(mem[_2817 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[160]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1765 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1835 = mem[_1765]
            require mem[_1765] == mem[_1765 + 30 len 2]
            require mem[_1765 + 32] == mem[_1765 + 62 len 2]
            if not ext_call.return_data[128]:
                if uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) > -mem[_1765 + 30 len 2] + 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1765 + 30 len 2] + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100))
                        return mem[mem[64]], 
                               uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2611] == mem[_2611 + 30 len 2]
                    require mem[_2611 + 32] == mem[_2611 + 62 len 2]
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2611 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2611 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > 65535:
                        revert with 0, 17
                    return uint16(_1835) + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_2611 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2518 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2582 = mem[_2518]
                require mem[_2518] == mem[_2518 + 30 len 2]
                require mem[_2518 + 32] == mem[_2518 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2518 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1835) + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_2518 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2816 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2816] == mem[_2816 + 30 len 2]
                require mem[_2816 + 32] == mem[_2816 + 62 len 2]
                if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2816 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2816 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > -uint16(_2582) + 65535:
                    revert with 0, 17
                return uint16(_1835) + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) << 240, 
                       uint16(uint16(_2582) + uint16(mem[_2816 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[128]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2256 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _2323 = mem[_2256]
            require mem[_2256] == mem[_2256 + 30 len 2]
            require mem[_2256 + 32] == mem[_2256 + 62 len 2]
            if uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100) > -mem[_2256 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2256 + 30 len 2] + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)) > -uint16(_1835) + 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(uint16(_1835) + uint16(mem[_2256 + 30 len 2] + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)))
                    return mem[mem[64]], 
                           uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2815 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2815] == mem[_2815 + 30 len 2]
                require mem[_2815 + 32] == mem[_2815 + 62 len 2]
                if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2815 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2815 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > 65535:
                    revert with 0, 17
                return uint16(_1835) + uint16(uint16(_2323) + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)) << 240, 
                       uint16(mem[_2815 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2767 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _2805 = mem[_2767]
            require mem[_2767] == mem[_2767 + 30 len 2]
            require mem[_2767 + 32] == mem[_2767 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2767 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1835) + uint16(uint16(_2323) + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)) << 240, 
                       uint16(mem[_2767 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2911 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2911] == mem[_2911 + 30 len 2]
            require mem[_2911 + 32] == mem[_2911 + 62 len 2]
            if uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100) > -mem[_2911 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2911 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)) > -uint16(_2805) + 65535:
                revert with 0, 17
            return uint16(_1835) + uint16(uint16(_2323) + uint16(uint16(_1471) * uint16(uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) + 8) / 100)) << 240, 
                   uint16(uint16(_2805) + uint16(mem[_2911 + 30 len 2] + uint16(uint16(_1297) * uint16(-(Mask(256, (-28 * _1217) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1217) + 24 % 16) + 100) / 100)))
        mem[_273 + 64] = 0
        mem[_273] = ext_call.return_data[0]
        _1191 = mem[(2 * ceil32(return_data.size)) + 160]
        if mem[(2 * ceil32(return_data.size)) + 160] > 6:
            revert with 0, 33
        if 28 * mem[(2 * ceil32(return_data.size)) + 160] > !0:
            revert with 0, 17
        if Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16 > 8:
            _1205 = mem[(2 * ceil32(return_data.size)) + 192]
            if Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16 < 8:
                _1207 = mem[_273 + 96]
                if not ext_call.return_data[160]:
                    if not ext_call.return_data[128]:
                        if mem[_273 + 126 len 2] > 65535:
                            revert with 0, 17
                        if not ext_call.return_data[224]:
                            if not ext_call.return_data[192]:
                                if mem[(2 * ceil32(return_data.size)) + 222 len 2] > 65535:
                                    revert with 0, 17
                                mem[mem[64]] = mem[_273 + 126 len 2]
                                return mem[mem[64]], _1205 << 240
                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[192]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1295 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1295] == mem[_1295 + 30 len 2]
                            require mem[_1295 + 32] == mem[_1295 + 62 len 2]
                            if uint16(_1205) > -mem[_1295 + 30 len 2] + 65535:
                                revert with 0, 17
                            if uint16(mem[_1295 + 30 len 2] + uint16(_1205)) > 65535:
                                revert with 0, 17
                            return _1207 << 240, uint16(mem[_1295 + 30 len 2] + uint16(_1205))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[224]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1268 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1287 = mem[_1268]
                        require mem[_1268] == mem[_1268 + 30 len 2]
                        require mem[_1268 + 32] == mem[_1268 + 62 len 2]
                        if not ext_call.return_data[192]:
                            if uint16(_1205) > 65535:
                                revert with 0, 17
                            if uint16(_1205) > -mem[_1268 + 30 len 2] + 65535:
                                revert with 0, 17
                            return _1207 << 240, uint16(mem[_1268 + 30 len 2] + uint16(_1205))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1431 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1431] == mem[_1431 + 30 len 2]
                        require mem[_1431 + 32] == mem[_1431 + 62 len 2]
                        if uint16(_1205) > -mem[_1431 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1431 + 30 len 2] + uint16(_1205)) > -uint16(_1287) + 65535:
                            revert with 0, 17
                        return _1207 << 240, uint16(uint16(_1287) + uint16(mem[_1431 + 30 len 2] + uint16(_1205)))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[128]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1230 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1235 = mem[_1230]
                    require mem[_1230] == mem[_1230 + 30 len 2]
                    require mem[_1230 + 32] == mem[_1230 + 62 len 2]
                    if uint16(_1207) > -mem[_1230 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1230 + 30 len 2] + uint16(_1207)) > 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(_1205) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_1230 + 30 len 2] + uint16(_1207))
                            return mem[mem[64]], _1205 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1430 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1430] == mem[_1430 + 30 len 2]
                        require mem[_1430 + 32] == mem[_1430 + 62 len 2]
                        if uint16(_1205) > -mem[_1430 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1430 + 30 len 2] + uint16(_1205)) > 65535:
                            revert with 0, 17
                        return uint16(_1235) + uint16(_1207) << 240, uint16(mem[_1430 + 30 len 2] + uint16(_1205))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1378 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1414 = mem[_1378]
                    require mem[_1378] == mem[_1378 + 30 len 2]
                    require mem[_1378 + 32] == mem[_1378 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(_1205) > 65535:
                            revert with 0, 17
                        if uint16(_1205) > -mem[_1378 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1235) + uint16(_1207) << 240, uint16(mem[_1378 + 30 len 2] + uint16(_1205))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1670 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1670] == mem[_1670 + 30 len 2]
                    require mem[_1670 + 32] == mem[_1670 + 62 len 2]
                    if uint16(_1205) > -mem[_1670 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1670 + 30 len 2] + uint16(_1205)) > -uint16(_1414) + 65535:
                        revert with 0, 17
                    return uint16(_1235) + uint16(_1207) << 240, uint16(uint16(_1414) + uint16(mem[_1670 + 30 len 2] + uint16(_1205)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[160]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1227 = mem[_1220]
                require mem[_1220] == mem[_1220 + 30 len 2]
                require mem[_1220 + 32] == mem[_1220 + 62 len 2]
                if not ext_call.return_data[128]:
                    if uint16(_1207) > 65535:
                        revert with 0, 17
                    if uint16(_1207) > -mem[_1220 + 30 len 2] + 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(_1205) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_1220 + 30 len 2] + uint16(_1207))
                            return mem[mem[64]], _1205 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1429 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1429] == mem[_1429 + 30 len 2]
                        require mem[_1429 + 32] == mem[_1429 + 62 len 2]
                        if uint16(_1205) > -mem[_1429 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1429 + 30 len 2] + uint16(_1205)) > 65535:
                            revert with 0, 17
                        return uint16(_1227) + uint16(_1207) << 240, uint16(mem[_1429 + 30 len 2] + uint16(_1205))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1413 = mem[_1377]
                    require mem[_1377] == mem[_1377 + 30 len 2]
                    require mem[_1377 + 32] == mem[_1377 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(_1205) > 65535:
                            revert with 0, 17
                        if uint16(_1205) > -mem[_1377 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1227) + uint16(_1207) << 240, uint16(mem[_1377 + 30 len 2] + uint16(_1205))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1669 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1669] == mem[_1669 + 30 len 2]
                    require mem[_1669 + 32] == mem[_1669 + 62 len 2]
                    if uint16(_1205) > -mem[_1669 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1669 + 30 len 2] + uint16(_1205)) > -uint16(_1413) + 65535:
                        revert with 0, 17
                    return uint16(_1227) + uint16(_1207) << 240, uint16(uint16(_1413) + uint16(mem[_1669 + 30 len 2] + uint16(_1205)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[128]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1299 = mem[_1286]
                require mem[_1286] == mem[_1286 + 30 len 2]
                require mem[_1286 + 32] == mem[_1286 + 62 len 2]
                if uint16(_1207) > -mem[_1286 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1286 + 30 len 2] + uint16(_1207)) > -uint16(_1227) + 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(_1205) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(uint16(_1227) + uint16(mem[_1286 + 30 len 2] + uint16(_1207)))
                        return mem[mem[64]], _1205 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1668 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1668] == mem[_1668 + 30 len 2]
                    require mem[_1668 + 32] == mem[_1668 + 62 len 2]
                    if uint16(_1205) > -mem[_1668 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1668 + 30 len 2] + uint16(_1205)) > 65535:
                        revert with 0, 17
                    return uint16(_1227) + uint16(uint16(_1299) + uint16(_1207)) << 240, uint16(mem[_1668 + 30 len 2] + uint16(_1205))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1593 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1643 = mem[_1593]
                require mem[_1593] == mem[_1593 + 30 len 2]
                require mem[_1593 + 32] == mem[_1593 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(_1205) > 65535:
                        revert with 0, 17
                    if uint16(_1205) > -mem[_1593 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1227) + uint16(uint16(_1299) + uint16(_1207)) << 240, uint16(mem[_1593 + 30 len 2] + uint16(_1205))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1997 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1997] == mem[_1997 + 30 len 2]
                require mem[_1997 + 32] == mem[_1997 + 62 len 2]
                if uint16(_1205) > -mem[_1997 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1997 + 30 len 2] + uint16(_1205)) > -uint16(_1643) + 65535:
                    revert with 0, 17
                return uint16(_1227) + uint16(uint16(_1299) + uint16(_1207)) << 240, 
                       uint16(uint16(_1643) + uint16(mem[_1997 + 30 len 2] + uint16(_1205)))
            if 100 < Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16:
                revert with 0, 17
            if 8 > -uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 65535:
                revert with 0, 17
            _1221 = mem[_273 + 96]
            if mem[_273 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) > -1 / mem[_273 + 126 len 2]:
                revert with 0, 17
            if not ext_call.return_data[160]:
                if not ext_call.return_data[128]:
                    if uint16(mem[_273 + 126 len 2] * uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) / 100) > 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if mem[(2 * ceil32(return_data.size)) + 222 len 2] > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_273 + 126 len 2] * uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) / 100)
                            return mem[mem[64]], _1205 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1441 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1441] == mem[_1441 + 30 len 2]
                        require mem[_1441 + 32] == mem[_1441 + 62 len 2]
                        if uint16(_1205) > -mem[_1441 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1441 + 30 len 2] + uint16(_1205)) > 65535:
                            revert with 0, 17
                        return uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100 << 240, 
                               uint16(mem[_1441 + 30 len 2] + uint16(_1205))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1403 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1433 = mem[_1403]
                    require mem[_1403] == mem[_1403 + 30 len 2]
                    require mem[_1403 + 32] == mem[_1403 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(_1205) > 65535:
                            revert with 0, 17
                        if uint16(_1205) > -mem[_1403 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100 << 240, 
                               uint16(mem[_1403 + 30 len 2] + uint16(_1205))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1691 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1691] == mem[_1691 + 30 len 2]
                    require mem[_1691 + 32] == mem[_1691 + 62 len 2]
                    if uint16(_1205) > -mem[_1691 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1691 + 30 len 2] + uint16(_1205)) > -uint16(_1433) + 65535:
                        revert with 0, 17
                    return uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100 << 240, 
                           uint16(uint16(_1433) + uint16(mem[_1691 + 30 len 2] + uint16(_1205)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[128]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1308 = mem[_1296]
                require mem[_1296] == mem[_1296 + 30 len 2]
                require mem[_1296 + 32] == mem[_1296 + 62 len 2]
                if uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) > -mem[_1296 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1296 + 30 len 2] + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)) > 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(_1205) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1296 + 30 len 2] + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100))
                        return mem[mem[64]], _1205 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1690 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1690] == mem[_1690 + 30 len 2]
                    require mem[_1690 + 32] == mem[_1690 + 62 len 2]
                    if uint16(_1205) > -mem[_1690 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1690 + 30 len 2] + uint16(_1205)) > 65535:
                        revert with 0, 17
                    return uint16(_1308) + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_1690 + 30 len 2] + uint16(_1205))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1626 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1672 = mem[_1626]
                require mem[_1626] == mem[_1626 + 30 len 2]
                require mem[_1626 + 32] == mem[_1626 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(_1205) > 65535:
                        revert with 0, 17
                    if uint16(_1205) > -mem[_1626 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1308) + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_1626 + 30 len 2] + uint16(_1205))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2024 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2024] == mem[_2024 + 30 len 2]
                require mem[_2024 + 32] == mem[_2024 + 62 len 2]
                if uint16(_1205) > -mem[_2024 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2024 + 30 len 2] + uint16(_1205)) > -uint16(_1672) + 65535:
                    revert with 0, 17
                return uint16(_1308) + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                       uint16(uint16(_1672) + uint16(mem[_2024 + 30 len 2] + uint16(_1205)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[160]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1288 = mem[_1269]
            require mem[_1269] == mem[_1269 + 30 len 2]
            require mem[_1269 + 32] == mem[_1269 + 62 len 2]
            if not ext_call.return_data[128]:
                if uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) > -mem[_1269 + 30 len 2] + 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(_1205) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1269 + 30 len 2] + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100))
                        return mem[mem[64]], _1205 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1689] == mem[_1689 + 30 len 2]
                    require mem[_1689 + 32] == mem[_1689 + 62 len 2]
                    if uint16(_1205) > -mem[_1689 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1689 + 30 len 2] + uint16(_1205)) > 65535:
                        revert with 0, 17
                    return uint16(_1288) + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_1689 + 30 len 2] + uint16(_1205))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1625 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1671 = mem[_1625]
                require mem[_1625] == mem[_1625 + 30 len 2]
                require mem[_1625 + 32] == mem[_1625 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(_1205) > 65535:
                        revert with 0, 17
                    if uint16(_1205) > -mem[_1625 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1288) + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_1625 + 30 len 2] + uint16(_1205))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2023 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2023] == mem[_2023 + 30 len 2]
                require mem[_2023 + 32] == mem[_2023 + 62 len 2]
                if uint16(_1205) > -mem[_2023 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2023 + 30 len 2] + uint16(_1205)) > -uint16(_1671) + 65535:
                    revert with 0, 17
                return uint16(_1288) + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                       uint16(uint16(_1671) + uint16(mem[_2023 + 30 len 2] + uint16(_1205)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[128]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1432 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1457 = mem[_1432]
            require mem[_1432] == mem[_1432 + 30 len 2]
            require mem[_1432 + 32] == mem[_1432 + 62 len 2]
            if uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) > -mem[_1432 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1432 + 30 len 2] + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)) > -uint16(_1288) + 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(_1205) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(uint16(_1288) + uint16(mem[_1432 + 30 len 2] + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)))
                    return mem[mem[64]], _1205 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2022 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2022] == mem[_2022 + 30 len 2]
                require mem[_2022 + 32] == mem[_2022 + 62 len 2]
                if uint16(_1205) > -mem[_2022 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2022 + 30 len 2] + uint16(_1205)) > 65535:
                    revert with 0, 17
                return uint16(_1288) + uint16(uint16(_1457) + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)) << 240, 
                       uint16(mem[_2022 + 30 len 2] + uint16(_1205))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1949 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1998 = mem[_1949]
            require mem[_1949] == mem[_1949 + 30 len 2]
            require mem[_1949 + 32] == mem[_1949 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(_1205) > 65535:
                    revert with 0, 17
                if uint16(_1205) > -mem[_1949 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1288) + uint16(uint16(_1457) + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)) << 240, 
                       uint16(mem[_1949 + 30 len 2] + uint16(_1205))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2368] == mem[_2368 + 30 len 2]
            require mem[_2368 + 32] == mem[_2368 + 62 len 2]
            if uint16(_1205) > -mem[_2368 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2368 + 30 len 2] + uint16(_1205)) > -uint16(_1998) + 65535:
                revert with 0, 17
            return uint16(_1288) + uint16(uint16(_1457) + uint16(uint16(_1221) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)) << 240, 
                   uint16(uint16(_1998) + uint16(mem[_2368 + 30 len 2] + uint16(_1205)))
        if 100 < Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16:
            revert with 0, 17
        _1209 = mem[(2 * ceil32(return_data.size)) + 192]
        if mem[(2 * ceil32(return_data.size)) + 222 len 2] and uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) > -1 / mem[(2 * ceil32(return_data.size)) + 222 len 2]:
            revert with 0, 17
        if Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16 < 8:
            _1231 = mem[_273 + 96]
            if not ext_call.return_data[160]:
                if not ext_call.return_data[128]:
                    if mem[_273 + 126 len 2] > 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(mem[(2 * ceil32(return_data.size)) + 222 len 2] * uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) / 100) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = mem[_273 + 126 len 2]
                            return mem[mem[64]], 
                                   uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1404] == mem[_1404 + 30 len 2]
                        require mem[_1404 + 32] == mem[_1404 + 62 len 2]
                        if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1404 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1404 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > 65535:
                            revert with 0, 17
                        return _1231 << 240, 
                               uint16(mem[_1404 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1380 = mem[_1350]
                    require mem[_1350] == mem[_1350 + 30 len 2]
                    require mem[_1350 + 32] == mem[_1350 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1350 + 30 len 2] + 65535:
                            revert with 0, 17
                        return _1231 << 240, 
                               uint16(mem[_1350 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1629] == mem[_1629 + 30 len 2]
                    require mem[_1629 + 32] == mem[_1629 + 62 len 2]
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1629 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1629 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > -uint16(_1380) + 65535:
                        revert with 0, 17
                    return _1231 << 240, 
                           uint16(uint16(_1380) + uint16(mem[_1629 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[128]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1290 = mem[_1270]
                require mem[_1270] == mem[_1270 + 30 len 2]
                require mem[_1270 + 32] == mem[_1270 + 62 len 2]
                if uint16(_1231) > -mem[_1270 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1270 + 30 len 2] + uint16(_1231)) > 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1270 + 30 len 2] + uint16(_1231))
                        return mem[mem[64]], 
                               uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1628 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1628] == mem[_1628 + 30 len 2]
                    require mem[_1628 + 32] == mem[_1628 + 62 len 2]
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1628 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1628 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > 65535:
                        revert with 0, 17
                    return uint16(_1290) + uint16(_1231) << 240, 
                           uint16(mem[_1628 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1532 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1596 = mem[_1532]
                require mem[_1532] == mem[_1532 + 30 len 2]
                require mem[_1532 + 32] == mem[_1532 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1532 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1290) + uint16(_1231) << 240, 
                           uint16(mem[_1532 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1952 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1952] == mem[_1952 + 30 len 2]
                require mem[_1952 + 32] == mem[_1952 + 62 len 2]
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1952 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1952 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > -uint16(_1596) + 65535:
                    revert with 0, 17
                return uint16(_1290) + uint16(_1231) << 240, 
                       uint16(uint16(_1596) + uint16(mem[_1952 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[160]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1244 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1259 = mem[_1244]
            require mem[_1244] == mem[_1244 + 30 len 2]
            require mem[_1244 + 32] == mem[_1244 + 62 len 2]
            if not ext_call.return_data[128]:
                if uint16(_1231) > 65535:
                    revert with 0, 17
                if uint16(_1231) > -mem[_1244 + 30 len 2] + 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1244 + 30 len 2] + uint16(_1231))
                        return mem[mem[64]], 
                               uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1627] == mem[_1627 + 30 len 2]
                    require mem[_1627 + 32] == mem[_1627 + 62 len 2]
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1627 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1627 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > 65535:
                        revert with 0, 17
                    return uint16(_1259) + uint16(_1231) << 240, 
                           uint16(mem[_1627 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1531 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1595 = mem[_1531]
                require mem[_1531] == mem[_1531 + 30 len 2]
                require mem[_1531 + 32] == mem[_1531 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1531 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1259) + uint16(_1231) << 240, 
                           uint16(mem[_1531 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1951 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1951] == mem[_1951 + 30 len 2]
                require mem[_1951 + 32] == mem[_1951 + 62 len 2]
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1951 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1951 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > -uint16(_1595) + 65535:
                    revert with 0, 17
                return uint16(_1259) + uint16(_1231) << 240, 
                       uint16(uint16(_1595) + uint16(mem[_1951 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[128]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1379 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1417 = mem[_1379]
            require mem[_1379] == mem[_1379 + 30 len 2]
            require mem[_1379 + 32] == mem[_1379 + 62 len 2]
            if uint16(_1231) > -mem[_1379 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1379 + 30 len 2] + uint16(_1231)) > -uint16(_1259) + 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(uint16(_1259) + uint16(mem[_1379 + 30 len 2] + uint16(_1231)))
                    return mem[mem[64]], 
                           uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1950 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1950] == mem[_1950 + 30 len 2]
                require mem[_1950 + 32] == mem[_1950 + 62 len 2]
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1950 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1950 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > 65535:
                    revert with 0, 17
                return uint16(_1259) + uint16(uint16(_1417) + uint16(_1231)) << 240, 
                       uint16(mem[_1950 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1829 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1918 = mem[_1829]
            require mem[_1829] == mem[_1829 + 30 len 2]
            require mem[_1829 + 32] == mem[_1829 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1829 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1259) + uint16(uint16(_1417) + uint16(_1231)) << 240, 
                       uint16(mem[_1829 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2311] == mem[_2311 + 30 len 2]
            require mem[_2311 + 32] == mem[_2311 + 62 len 2]
            if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_2311 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2311 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > -uint16(_1918) + 65535:
                revert with 0, 17
            return uint16(_1259) + uint16(uint16(_1417) + uint16(_1231)) << 240, 
                   uint16(uint16(_1918) + uint16(mem[_2311 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)))
        if 100 < Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16:
            revert with 0, 17
        if 8 > -uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 65535:
            revert with 0, 17
        _1245 = mem[_273 + 96]
        if mem[_273 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) > -1 / mem[_273 + 126 len 2]:
            revert with 0, 17
        if not ext_call.return_data[160]:
            if not ext_call.return_data[128]:
                if uint16(mem[_273 + 126 len 2] * uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) / 100) > 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(mem[(2 * ceil32(return_data.size)) + 222 len 2] * uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_273 + 126 len 2] * uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) / 100)
                        return mem[mem[64]], 
                               uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1650 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1650] == mem[_1650 + 30 len 2]
                    require mem[_1650 + 32] == mem[_1650 + 62 len 2]
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1650 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1650 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > 65535:
                        revert with 0, 17
                    return uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100 << 240, 
                           uint16(mem[_1650 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1631 = mem[_1577]
                require mem[_1577] == mem[_1577 + 30 len 2]
                require mem[_1577 + 32] == mem[_1577 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1577 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100 << 240, 
                           uint16(mem[_1577 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1982 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1982] == mem[_1982 + 30 len 2]
                require mem[_1982 + 32] == mem[_1982 + 62 len 2]
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1982 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1982 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > -uint16(_1631) + 65535:
                    revert with 0, 17
                return uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100 << 240, 
                       uint16(uint16(_1631) + uint16(mem[_1982 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[128]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1405 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1437 = mem[_1405]
            require mem[_1405] == mem[_1405 + 30 len 2]
            require mem[_1405 + 32] == mem[_1405 + 62 len 2]
            if uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) > -mem[_1405 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1405 + 30 len 2] + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)) > 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(mem[_1405 + 30 len 2] + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100))
                    return mem[mem[64]], 
                           uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1981 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1981] == mem[_1981 + 30 len 2]
                require mem[_1981 + 32] == mem[_1981 + 62 len 2]
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1981 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1981 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > 65535:
                    revert with 0, 17
                return uint16(_1437) + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_1981 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1886 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1954 = mem[_1886]
            require mem[_1886] == mem[_1886 + 30 len 2]
            require mem[_1886 + 32] == mem[_1886 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1886 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1437) + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_1886 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2338 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2338] == mem[_2338 + 30 len 2]
            require mem[_2338 + 32] == mem[_2338 + 62 len 2]
            if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_2338 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2338 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > -uint16(_1954) + 65535:
                revert with 0, 17
            return uint16(_1437) + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                   uint16(uint16(_1954) + uint16(mem[_2338 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[160]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1351 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1381 = mem[_1351]
        require mem[_1351] == mem[_1351 + 30 len 2]
        require mem[_1351 + 32] == mem[_1351 + 62 len 2]
        if not ext_call.return_data[128]:
            if uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) > 65535:
                revert with 0, 17
            if uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) > -mem[_1351 + 30 len 2] + 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(mem[_1351 + 30 len 2] + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100))
                    return mem[mem[64]], 
                           uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1980 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1980] == mem[_1980 + 30 len 2]
                require mem[_1980 + 32] == mem[_1980 + 62 len 2]
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1980 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1980 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > 65535:
                    revert with 0, 17
                return uint16(_1381) + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_1980 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1885 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1953 = mem[_1885]
            require mem[_1885] == mem[_1885 + 30 len 2]
            require mem[_1885 + 32] == mem[_1885 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_1885 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1381) + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_1885 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2337] == mem[_2337 + 30 len 2]
            require mem[_2337 + 32] == mem[_2337 + 62 len 2]
            if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_2337 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2337 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > -uint16(_1953) + 65535:
                revert with 0, 17
            return uint16(_1381) + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) << 240, 
                   uint16(uint16(_1953) + uint16(mem[_2337 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[128]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1630 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1678 = mem[_1630]
        require mem[_1630] == mem[_1630 + 30 len 2]
        require mem[_1630 + 32] == mem[_1630 + 62 len 2]
        if uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100) > -mem[_1630 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_1630 + 30 len 2] + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)) > -uint16(_1381) + 65535:
            revert with 0, 17
        if not ext_call.return_data[224]:
            if not ext_call.return_data[192]:
                if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                mem[mem[64]] = uint16(uint16(_1381) + uint16(mem[_1630 + 30 len 2] + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)))
                return mem[mem[64]], 
                       uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100 << 240
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2336] == mem[_2336 + 30 len 2]
            require mem[_2336 + 32] == mem[_2336 + 62 len 2]
            if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_2336 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2336 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > 65535:
                revert with 0, 17
            return uint16(_1381) + uint16(uint16(_1678) + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)) << 240, 
                   uint16(mem[_2336 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[224]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2244 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _2312 = mem[_2244]
        require mem[_2244] == mem[_2244 + 30 len 2]
        require mem[_2244 + 32] == mem[_2244 + 62 len 2]
        if not ext_call.return_data[192]:
            if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > 65535:
                revert with 0, 17
            if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_2244 + 30 len 2] + 65535:
                revert with 0, 17
            return uint16(_1381) + uint16(uint16(_1678) + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)) << 240, 
                   uint16(mem[_2244 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[192]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2635 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_2635] == mem[_2635 + 30 len 2]
        require mem[_2635 + 32] == mem[_2635 + 62 len 2]
        if uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100) > -mem[_2635 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_2635 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)) > -uint16(_2312) + 65535:
            revert with 0, 17
        return uint16(_1381) + uint16(uint16(_1678) + uint16(uint16(_1245) * uint16(uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) + 8) / 100)) << 240, 
               uint16(uint16(_2312) + uint16(mem[_2635 + 30 len 2] + uint16(uint16(_1209) * uint16(-(Mask(256, -28 * _1191, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1191 % 16) + 100) / 100)))
    mem[(2 * ceil32(return_data.size)) + 160] = 0
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    _254 = mem[64]
    mem[64] = mem[64] + 160
    mem[_254] = 0
    mem[_254 + 32] = 0
    mem[_254 + 64] = 0
    mem[_254 + 96] = 0
    mem[_254 + 128] = 0
    _260 = mem[64]
    mem[64] = mem[64] + 96
    mem[_260 len 96] = call.data[calldata.size len 96]
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.0x969215ba with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _263 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 256
    require mem[_263] == mem[_263 + 12 len 20]
    _265 = mem[_263 + 32]
    _266 = mem[_263 + 64]
    _267 = mem[_263 + 96]
    _268 = mem[_263 + 128]
    require mem[_263 + 128] == mem[_263 + 158 len 2]
    _270 = mem[_263 + 160]
    require mem[_263 + 160] == mem[_263 + 190 len 2]
    require mem[_263 + 224] == mem[_263 + 240 len 16]
    mem[_254 + 32] = mem[_263 + 192]
    mem[_254 + 128] = uint16(_270)
    mem[_254 + 96] = uint16(_268)
    mem[_260 + 64] = _267
    mem[_260 + 32] = _266
    mem[_260] = _265
    _274 = mem[64]
    mem[64] = mem[64] + 224
    mem[_274 len 224] = call.data[calldata.size len 224]
    idx = 0
    while idx < 3:
        require ext_code.size(0x1b7966315ef0259de890f38f1bdb95acc03cacdd)
        staticcall 0x1b7966315ef0259de890f38f1bdb95acc03cacdd.crabadaInfo(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + _260]
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_1186 + 96] == mem[_1186 + 120 len 8]
        require mem[_1186 + 128] == mem[_1186 + 159 len 1]
        _1202 = mem[_274 + 192]
        if mem[_274 + 192] == -1:
            revert with 0, 17
        mem[_274 + 192] = mem[_274 + 192] + 1
        if _1202 + 1 != 2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_254 + 64] = 6
        mem[_254] = ext_call.return_data[0]
        _1213 = mem[(2 * ceil32(return_data.size)) + 160]
        if mem[(2 * ceil32(return_data.size)) + 160] > 6:
            revert with 0, 33
        if 28 * mem[(2 * ceil32(return_data.size)) + 160] > !24:
            revert with 0, 17
        if Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16 > 8:
            _1265 = mem[(2 * ceil32(return_data.size)) + 192]
            if Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16 < 8:
                _1285 = mem[_254 + 96]
                if not ext_call.return_data[160]:
                    if not ext_call.return_data[128]:
                        if mem[_254 + 126 len 2] > 65535:
                            revert with 0, 17
                        if not ext_call.return_data[224]:
                            if not ext_call.return_data[192]:
                                if mem[(2 * ceil32(return_data.size)) + 222 len 2] > 65535:
                                    revert with 0, 17
                                mem[mem[64]] = mem[_254 + 126 len 2]
                                return mem[mem[64]], _1265 << 240
                            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[192]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1617 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1617] == mem[_1617 + 30 len 2]
                            require mem[_1617 + 32] == mem[_1617 + 62 len 2]
                            if uint16(_1265) > -mem[_1617 + 30 len 2] + 65535:
                                revert with 0, 17
                            if uint16(mem[_1617 + 30 len 2] + uint16(_1265)) > 65535:
                                revert with 0, 17
                            return _1285 << 240, uint16(mem[_1617 + 30 len 2] + uint16(_1265))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[224]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1589 = mem[_1521]
                        require mem[_1521] == mem[_1521 + 30 len 2]
                        require mem[_1521 + 32] == mem[_1521 + 62 len 2]
                        if not ext_call.return_data[192]:
                            if uint16(_1265) > 65535:
                                revert with 0, 17
                            if uint16(_1265) > -mem[_1521 + 30 len 2] + 65535:
                                revert with 0, 17
                            return _1285 << 240, uint16(mem[_1521 + 30 len 2] + uint16(_1265))
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1940 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1940] == mem[_1940 + 30 len 2]
                        require mem[_1940 + 32] == mem[_1940 + 62 len 2]
                        if uint16(_1265) > -mem[_1940 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1940 + 30 len 2] + uint16(_1265)) > -uint16(_1589) + 65535:
                            revert with 0, 17
                        return _1285 << 240, uint16(uint16(_1589) + uint16(mem[_1940 + 30 len 2] + uint16(_1265)))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[128]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1412 = mem[_1375]
                    require mem[_1375] == mem[_1375 + 30 len 2]
                    require mem[_1375 + 32] == mem[_1375 + 62 len 2]
                    if uint16(_1285) > -mem[_1375 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1375 + 30 len 2] + uint16(_1285)) > 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(_1265) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_1375 + 30 len 2] + uint16(_1285))
                            return mem[mem[64]], _1265 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1939 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1939] == mem[_1939 + 30 len 2]
                        require mem[_1939 + 32] == mem[_1939 + 62 len 2]
                        if uint16(_1265) > -mem[_1939 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1939 + 30 len 2] + uint16(_1265)) > 65535:
                            revert with 0, 17
                        return uint16(_1412) + uint16(_1285) << 240, uint16(mem[_1939 + 30 len 2] + uint16(_1265))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1816 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1910 = mem[_1816]
                    require mem[_1816] == mem[_1816 + 30 len 2]
                    require mem[_1816 + 32] == mem[_1816 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(_1265) > 65535:
                            revert with 0, 17
                        if uint16(_1265) > -mem[_1816 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1412) + uint16(_1285) << 240, uint16(mem[_1816 + 30 len 2] + uint16(_1265))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2302] == mem[_2302 + 30 len 2]
                    require mem[_2302 + 32] == mem[_2302 + 62 len 2]
                    if uint16(_1265) > -mem[_2302 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2302 + 30 len 2] + uint16(_1265)) > -uint16(_1910) + 65535:
                        revert with 0, 17
                    return uint16(_1412) + uint16(_1285) << 240, uint16(uint16(_1910) + uint16(mem[_2302 + 30 len 2] + uint16(_1265)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[160]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1326 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1361 = mem[_1326]
                require mem[_1326] == mem[_1326 + 30 len 2]
                require mem[_1326 + 32] == mem[_1326 + 62 len 2]
                if not ext_call.return_data[128]:
                    if uint16(_1285) > 65535:
                        revert with 0, 17
                    if uint16(_1285) > -mem[_1326 + 30 len 2] + 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(_1265) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_1326 + 30 len 2] + uint16(_1285))
                            return mem[mem[64]], _1265 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1938] == mem[_1938 + 30 len 2]
                        require mem[_1938 + 32] == mem[_1938 + 62 len 2]
                        if uint16(_1265) > -mem[_1938 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1938 + 30 len 2] + uint16(_1265)) > 65535:
                            revert with 0, 17
                        return uint16(_1361) + uint16(_1285) << 240, uint16(mem[_1938 + 30 len 2] + uint16(_1265))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1909 = mem[_1815]
                    require mem[_1815] == mem[_1815 + 30 len 2]
                    require mem[_1815 + 32] == mem[_1815 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(_1265) > 65535:
                            revert with 0, 17
                        if uint16(_1265) > -mem[_1815 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1361) + uint16(_1285) << 240, uint16(mem[_1815 + 30 len 2] + uint16(_1265))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2301] == mem[_2301 + 30 len 2]
                    require mem[_2301 + 32] == mem[_2301 + 62 len 2]
                    if uint16(_1265) > -mem[_2301 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2301 + 30 len 2] + uint16(_1265)) > -uint16(_1909) + 65535:
                        revert with 0, 17
                    return uint16(_1361) + uint16(_1285) << 240, uint16(uint16(_1909) + uint16(mem[_2301 + 30 len 2] + uint16(_1265)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[128]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1588 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1642 = mem[_1588]
                require mem[_1588] == mem[_1588 + 30 len 2]
                require mem[_1588 + 32] == mem[_1588 + 62 len 2]
                if uint16(_1285) > -mem[_1588 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1588 + 30 len 2] + uint16(_1285)) > -uint16(_1361) + 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(_1265) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(uint16(_1361) + uint16(mem[_1588 + 30 len 2] + uint16(_1285)))
                        return mem[mem[64]], _1265 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2300 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2300] == mem[_2300 + 30 len 2]
                    require mem[_2300 + 32] == mem[_2300 + 62 len 2]
                    if uint16(_1265) > -mem[_2300 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2300 + 30 len 2] + uint16(_1265)) > 65535:
                        revert with 0, 17
                    return uint16(_1361) + uint16(uint16(_1642) + uint16(_1285)) << 240, uint16(mem[_2300 + 30 len 2] + uint16(_1265))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2270 = mem[_2183]
                require mem[_2183] == mem[_2183 + 30 len 2]
                require mem[_2183 + 32] == mem[_2183 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(_1265) > 65535:
                        revert with 0, 17
                    if uint16(_1265) > -mem[_2183 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1361) + uint16(uint16(_1642) + uint16(_1285)) << 240, uint16(mem[_2183 + 30 len 2] + uint16(_1265))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2614] == mem[_2614 + 30 len 2]
                require mem[_2614 + 32] == mem[_2614 + 62 len 2]
                if uint16(_1265) > -mem[_2614 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2614 + 30 len 2] + uint16(_1265)) > -uint16(_2270) + 65535:
                    revert with 0, 17
                return uint16(_1361) + uint16(uint16(_1642) + uint16(_1285)) << 240, 
                       uint16(uint16(_2270) + uint16(mem[_2614 + 30 len 2] + uint16(_1265)))
            if 100 < Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16:
                revert with 0, 17
            if 8 > -uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 65535:
                revert with 0, 17
            _1327 = mem[_254 + 96]
            if mem[_254 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) > -1 / mem[_254 + 126 len 2]:
                revert with 0, 17
            if not ext_call.return_data[160]:
                if not ext_call.return_data[128]:
                    if uint16(mem[_254 + 126 len 2] * uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) / 100) > 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if mem[(2 * ceil32(return_data.size)) + 222 len 2] > 65535:
                                revert with 0, 17
                            mem[mem[64]] = uint16(mem[_254 + 126 len 2] * uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) / 100)
                            return mem[mem[64]], _1265 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1973 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1973] == mem[_1973 + 30 len 2]
                        require mem[_1973 + 32] == mem[_1973 + 62 len 2]
                        if uint16(_1265) > -mem[_1973 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1973 + 30 len 2] + uint16(_1265)) > 65535:
                            revert with 0, 17
                        return uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100 << 240, 
                               uint16(mem[_1973 + 30 len 2] + uint16(_1265))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1864 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1942 = mem[_1864]
                    require mem[_1864] == mem[_1864 + 30 len 2]
                    require mem[_1864 + 32] == mem[_1864 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(_1265) > 65535:
                            revert with 0, 17
                        if uint16(_1265) > -mem[_1864 + 30 len 2] + 65535:
                            revert with 0, 17
                        return uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100 << 240, 
                               uint16(mem[_1864 + 30 len 2] + uint16(_1265))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2331 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2331] == mem[_2331 + 30 len 2]
                    require mem[_2331 + 32] == mem[_2331 + 62 len 2]
                    if uint16(_1265) > -mem[_2331 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2331 + 30 len 2] + uint16(_1265)) > -uint16(_1942) + 65535:
                        revert with 0, 17
                    return uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100 << 240, 
                           uint16(uint16(_1942) + uint16(mem[_2331 + 30 len 2] + uint16(_1265)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[128]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1618 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1666 = mem[_1618]
                require mem[_1618] == mem[_1618 + 30 len 2]
                require mem[_1618 + 32] == mem[_1618 + 62 len 2]
                if uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) > -mem[_1618 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1618 + 30 len 2] + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)) > 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(_1265) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1618 + 30 len 2] + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100))
                        return mem[mem[64]], _1265 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2330 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2330] == mem[_2330 + 30 len 2]
                    require mem[_2330 + 32] == mem[_2330 + 62 len 2]
                    if uint16(_1265) > -mem[_2330 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2330 + 30 len 2] + uint16(_1265)) > 65535:
                        revert with 0, 17
                    return uint16(_1666) + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_2330 + 30 len 2] + uint16(_1265))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2226 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2304 = mem[_2226]
                require mem[_2226] == mem[_2226 + 30 len 2]
                require mem[_2226 + 32] == mem[_2226 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(_1265) > 65535:
                        revert with 0, 17
                    if uint16(_1265) > -mem[_2226 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1666) + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_2226 + 30 len 2] + uint16(_1265))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2629 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2629] == mem[_2629 + 30 len 2]
                require mem[_2629 + 32] == mem[_2629 + 62 len 2]
                if uint16(_1265) > -mem[_2629 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2629 + 30 len 2] + uint16(_1265)) > -uint16(_2304) + 65535:
                    revert with 0, 17
                return uint16(_1666) + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                       uint16(uint16(_2304) + uint16(mem[_2629 + 30 len 2] + uint16(_1265)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[160]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1522 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1590 = mem[_1522]
            require mem[_1522] == mem[_1522 + 30 len 2]
            require mem[_1522 + 32] == mem[_1522 + 62 len 2]
            if not ext_call.return_data[128]:
                if uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) > -mem[_1522 + 30 len 2] + 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(_1265) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1522 + 30 len 2] + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100))
                        return mem[mem[64]], _1265 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2329 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2329] == mem[_2329 + 30 len 2]
                    require mem[_2329 + 32] == mem[_2329 + 62 len 2]
                    if uint16(_1265) > -mem[_2329 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2329 + 30 len 2] + uint16(_1265)) > 65535:
                        revert with 0, 17
                    return uint16(_1590) + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_2329 + 30 len 2] + uint16(_1265))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2303 = mem[_2225]
                require mem[_2225] == mem[_2225 + 30 len 2]
                require mem[_2225 + 32] == mem[_2225 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(_1265) > 65535:
                        revert with 0, 17
                    if uint16(_1265) > -mem[_2225 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1590) + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                           uint16(mem[_2225 + 30 len 2] + uint16(_1265))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2628 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2628] == mem[_2628 + 30 len 2]
                require mem[_2628 + 32] == mem[_2628 + 62 len 2]
                if uint16(_1265) > -mem[_2628 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2628 + 30 len 2] + uint16(_1265)) > -uint16(_2303) + 65535:
                    revert with 0, 17
                return uint16(_1590) + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                       uint16(uint16(_2303) + uint16(mem[_2628 + 30 len 2] + uint16(_1265)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[128]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1941 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1995 = mem[_1941]
            require mem[_1941] == mem[_1941 + 30 len 2]
            require mem[_1941 + 32] == mem[_1941 + 62 len 2]
            if uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) > -mem[_1941 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1941 + 30 len 2] + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)) > -uint16(_1590) + 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(_1265) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(uint16(_1590) + uint16(mem[_1941 + 30 len 2] + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)))
                    return mem[mem[64]], _1265 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2627 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2627] == mem[_2627 + 30 len 2]
                require mem[_2627 + 32] == mem[_2627 + 62 len 2]
                if uint16(_1265) > -mem[_2627 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2627 + 30 len 2] + uint16(_1265)) > 65535:
                    revert with 0, 17
                return uint16(_1590) + uint16(uint16(_1995) + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)) << 240, 
                       uint16(mem[_2627 + 30 len 2] + uint16(_1265))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2565 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _2615 = mem[_2565]
            require mem[_2565] == mem[_2565 + 30 len 2]
            require mem[_2565 + 32] == mem[_2565 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(_1265) > 65535:
                    revert with 0, 17
                if uint16(_1265) > -mem[_2565 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1590) + uint16(uint16(_1995) + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)) << 240, 
                       uint16(mem[_2565 + 30 len 2] + uint16(_1265))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2820 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2820] == mem[_2820 + 30 len 2]
            require mem[_2820 + 32] == mem[_2820 + 62 len 2]
            if uint16(_1265) > -mem[_2820 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2820 + 30 len 2] + uint16(_1265)) > -uint16(_2615) + 65535:
                revert with 0, 17
            return uint16(_1590) + uint16(uint16(_1995) + uint16(uint16(_1327) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)) << 240, 
                   uint16(uint16(_2615) + uint16(mem[_2820 + 30 len 2] + uint16(_1265)))
        if 100 < Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16:
            revert with 0, 17
        _1294 = mem[(2 * ceil32(return_data.size)) + 192]
        if mem[(2 * ceil32(return_data.size)) + 222 len 2] and uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) > -1 / mem[(2 * ceil32(return_data.size)) + 222 len 2]:
            revert with 0, 17
        if Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16 < 8:
            _1376 = mem[_254 + 96]
            if not ext_call.return_data[160]:
                if not ext_call.return_data[128]:
                    if mem[_254 + 126 len 2] > 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if uint16(mem[(2 * ceil32(return_data.size)) + 222 len 2] * uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) / 100) > 65535:
                                revert with 0, 17
                            mem[mem[64]] = mem[_254 + 126 len 2]
                            return mem[mem[64]], 
                                   uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1865 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1865] == mem[_1865 + 30 len 2]
                        require mem[_1865 + 32] == mem[_1865 + 62 len 2]
                        if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_1865 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1865 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > 65535:
                            revert with 0, 17
                        return _1376 << 240, 
                               uint16(mem[_1865 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1818 = mem[_1748]
                    require mem[_1748] == mem[_1748 + 30 len 2]
                    require mem[_1748 + 32] == mem[_1748 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_1748 + 30 len 2] + 65535:
                            revert with 0, 17
                        return _1376 << 240, 
                               uint16(mem[_1748 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2229 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2229] == mem[_2229 + 30 len 2]
                    require mem[_2229 + 32] == mem[_2229 + 62 len 2]
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2229 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2229 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > -uint16(_1818) + 65535:
                        revert with 0, 17
                    return _1376 << 240, 
                           uint16(uint16(_1818) + uint16(mem[_2229 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[128]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1523 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1592 = mem[_1523]
                require mem[_1523] == mem[_1523 + 30 len 2]
                require mem[_1523 + 32] == mem[_1523 + 62 len 2]
                if uint16(_1376) > -mem[_1523 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1523 + 30 len 2] + uint16(_1376)) > 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1523 + 30 len 2] + uint16(_1376))
                        return mem[mem[64]], 
                               uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2228] == mem[_2228 + 30 len 2]
                    require mem[_2228 + 32] == mem[_2228 + 62 len 2]
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2228 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2228 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > 65535:
                        revert with 0, 17
                    return uint16(_1592) + uint16(_1376) << 240, 
                           uint16(mem[_2228 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2091 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2186 = mem[_2091]
                require mem[_2091] == mem[_2091 + 30 len 2]
                require mem[_2091 + 32] == mem[_2091 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2091 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1592) + uint16(_1376) << 240, 
                           uint16(mem[_2091 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2568 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2568] == mem[_2568 + 30 len 2]
                require mem[_2568 + 32] == mem[_2568 + 62 len 2]
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2568 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2568 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > -uint16(_2186) + 65535:
                    revert with 0, 17
                return uint16(_1592) + uint16(_1376) << 240, 
                       uint16(uint16(_2186) + uint16(mem[_2568 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[160]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1501 = mem[_1464]
            require mem[_1464] == mem[_1464 + 30 len 2]
            require mem[_1464 + 32] == mem[_1464 + 62 len 2]
            if not ext_call.return_data[128]:
                if uint16(_1376) > 65535:
                    revert with 0, 17
                if uint16(_1376) > -mem[_1464 + 30 len 2] + 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1464 + 30 len 2] + uint16(_1376))
                        return mem[mem[64]], 
                               uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2227] == mem[_2227 + 30 len 2]
                    require mem[_2227 + 32] == mem[_2227 + 62 len 2]
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2227 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2227 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > 65535:
                        revert with 0, 17
                    return uint16(_1501) + uint16(_1376) << 240, 
                           uint16(mem[_2227 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2090 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2185 = mem[_2090]
                require mem[_2090] == mem[_2090 + 30 len 2]
                require mem[_2090 + 32] == mem[_2090 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2090 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1501) + uint16(_1376) << 240, 
                           uint16(mem[_2090 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2567 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2567] == mem[_2567 + 30 len 2]
                require mem[_2567 + 32] == mem[_2567 + 62 len 2]
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2567 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2567 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > -uint16(_2185) + 65535:
                    revert with 0, 17
                return uint16(_1501) + uint16(_1376) << 240, 
                       uint16(uint16(_2185) + uint16(mem[_2567 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[128]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1913 = mem[_1817]
            require mem[_1817] == mem[_1817 + 30 len 2]
            require mem[_1817 + 32] == mem[_1817 + 62 len 2]
            if uint16(_1376) > -mem[_1817 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1817 + 30 len 2] + uint16(_1376)) > -uint16(_1501) + 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(uint16(_1501) + uint16(mem[_1817 + 30 len 2] + uint16(_1376)))
                    return mem[mem[64]], 
                           uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2566 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2566] == mem[_2566 + 30 len 2]
                require mem[_2566 + 32] == mem[_2566 + 62 len 2]
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2566 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2566 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > 65535:
                    revert with 0, 17
                return uint16(_1501) + uint16(uint16(_1913) + uint16(_1376)) << 240, 
                       uint16(mem[_2566 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2440 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _2532 = mem[_2440]
            require mem[_2440] == mem[_2440 + 30 len 2]
            require mem[_2440 + 32] == mem[_2440 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2440 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1501) + uint16(uint16(_1913) + uint16(_1376)) << 240, 
                       uint16(mem[_2440 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2801 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2801] == mem[_2801 + 30 len 2]
            require mem[_2801 + 32] == mem[_2801 + 62 len 2]
            if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2801 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2801 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > -uint16(_2532) + 65535:
                revert with 0, 17
            return uint16(_1501) + uint16(uint16(_1913) + uint16(_1376)) << 240, 
                   uint16(uint16(_2532) + uint16(mem[_2801 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)))
        if 100 < Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16:
            revert with 0, 17
        if 8 > -uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 65535:
            revert with 0, 17
        _1465 = mem[_254 + 96]
        if mem[_254 + 126 len 2] and uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) > -1 / mem[_254 + 126 len 2]:
            revert with 0, 17
        if not ext_call.return_data[160]:
            if not ext_call.return_data[128]:
                if uint16(mem[_254 + 126 len 2] * uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) / 100) > 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(mem[(2 * ceil32(return_data.size)) + 222 len 2] * uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_254 + 126 len 2] * uint16(uint16(-(Mask(256, (-28 * mem[(2 * ceil32(return_data.size)) + 160]) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * mem[(2 * ceil32(return_data.size)) + 160]) + 24 % 16) + 100) + 8) / 100)
                        return mem[mem[64]], 
                               uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2277 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2277] == mem[_2277 + 30 len 2]
                    require mem[_2277 + 32] == mem[_2277 + 62 len 2]
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2277 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_2277 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > 65535:
                        revert with 0, 17
                    return uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100 << 240, 
                           uint16(mem[_2277 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _2231 = mem[_2140]
                require mem[_2140] == mem[_2140 + 30 len 2]
                require mem[_2140 + 32] == mem[_2140 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2140 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100 << 240, 
                           uint16(mem[_2140 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2598 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2598] == mem[_2598 + 30 len 2]
                require mem[_2598 + 32] == mem[_2598 + 62 len 2]
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2598 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2598 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > -uint16(_2231) + 65535:
                    revert with 0, 17
                return uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100 << 240, 
                       uint16(uint16(_2231) + uint16(mem[_2598 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[128]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1866 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1946 = mem[_1866]
            require mem[_1866] == mem[_1866 + 30 len 2]
            require mem[_1866 + 32] == mem[_1866 + 62 len 2]
            if uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) > -mem[_1866 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1866 + 30 len 2] + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)) > 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(mem[_1866 + 30 len 2] + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100))
                    return mem[mem[64]], 
                           uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2597 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2597] == mem[_2597 + 30 len 2]
                require mem[_2597 + 32] == mem[_2597 + 62 len 2]
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2597 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2597 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > 65535:
                    revert with 0, 17
                return uint16(_1946) + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_2597 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2489 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _2570 = mem[_2489]
            require mem[_2489] == mem[_2489 + 30 len 2]
            require mem[_2489 + 32] == mem[_2489 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2489 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1946) + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_2489 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2811 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2811] == mem[_2811 + 30 len 2]
            require mem[_2811 + 32] == mem[_2811 + 62 len 2]
            if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2811 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2811 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > -uint16(_2570) + 65535:
                revert with 0, 17
            return uint16(_1946) + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                   uint16(uint16(_2570) + uint16(mem[_2811 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[160]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1749 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1819 = mem[_1749]
        require mem[_1749] == mem[_1749 + 30 len 2]
        require mem[_1749 + 32] == mem[_1749 + 62 len 2]
        if not ext_call.return_data[128]:
            if uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) > 65535:
                revert with 0, 17
            if uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) > -mem[_1749 + 30 len 2] + 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(mem[_1749 + 30 len 2] + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100))
                    return mem[mem[64]], 
                           uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2596 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2596] == mem[_2596 + 30 len 2]
                require mem[_2596 + 32] == mem[_2596 + 62 len 2]
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2596 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_2596 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > 65535:
                    revert with 0, 17
                return uint16(_1819) + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_2596 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2488 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _2569 = mem[_2488]
            require mem[_2488] == mem[_2488 + 30 len 2]
            require mem[_2488 + 32] == mem[_2488 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2488 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1819) + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_2488 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2810 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2810] == mem[_2810 + 30 len 2]
            require mem[_2810 + 32] == mem[_2810 + 62 len 2]
            if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2810 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2810 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > -uint16(_2569) + 65535:
                revert with 0, 17
            return uint16(_1819) + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) << 240, 
                   uint16(uint16(_2569) + uint16(mem[_2810 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[128]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2230 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _2310 = mem[_2230]
        require mem[_2230] == mem[_2230 + 30 len 2]
        require mem[_2230 + 32] == mem[_2230 + 62 len 2]
        if uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100) > -mem[_2230 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_2230 + 30 len 2] + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)) > -uint16(_1819) + 65535:
            revert with 0, 17
        if not ext_call.return_data[224]:
            if not ext_call.return_data[192]:
                if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                mem[mem[64]] = uint16(uint16(_1819) + uint16(mem[_2230 + 30 len 2] + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)))
                return mem[mem[64]], 
                       uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100 << 240
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2809 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2809] == mem[_2809 + 30 len 2]
            require mem[_2809 + 32] == mem[_2809 + 62 len 2]
            if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2809 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2809 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > 65535:
                revert with 0, 17
            return uint16(_1819) + uint16(uint16(_2310) + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)) << 240, 
                   uint16(mem[_2809 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[224]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2749 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _2802 = mem[_2749]
        require mem[_2749] == mem[_2749 + 30 len 2]
        require mem[_2749 + 32] == mem[_2749 + 62 len 2]
        if not ext_call.return_data[192]:
            if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > 65535:
                revert with 0, 17
            if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2749 + 30 len 2] + 65535:
                revert with 0, 17
            return uint16(_1819) + uint16(uint16(_2310) + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)) << 240, 
                   uint16(mem[_2749 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[192]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2910 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_2910] == mem[_2910 + 30 len 2]
        require mem[_2910 + 32] == mem[_2910 + 62 len 2]
        if uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100) > -mem[_2910 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_2910 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)) > -uint16(_2802) + 65535:
            revert with 0, 17
        return uint16(_1819) + uint16(uint16(_2310) + uint16(uint16(_1465) * uint16(uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) + 8) / 100)) << 240, 
               uint16(uint16(_2802) + uint16(mem[_2910 + 30 len 2] + uint16(uint16(_1294) * uint16(-(Mask(256, (-28 * _1213) - 24, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> (28 * _1213) + 24 % 16) + 100) / 100)))
    mem[_254 + 64] = 0
    mem[_254] = ext_call.return_data[0]
    _1189 = mem[(2 * ceil32(return_data.size)) + 160]
    if mem[(2 * ceil32(return_data.size)) + 160] > 6:
        revert with 0, 33
    if 28 * mem[(2 * ceil32(return_data.size)) + 160] > !0:
        revert with 0, 17
    if Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16 > 8:
        _1204 = mem[(2 * ceil32(return_data.size)) + 192]
        if Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16 < 8:
            _1206 = mem[_254 + 96]
            if not ext_call.return_data[160]:
                if not ext_call.return_data[128]:
                    if mem[_254 + 126 len 2] > 65535:
                        revert with 0, 17
                    if not ext_call.return_data[224]:
                        if not ext_call.return_data[192]:
                            if mem[(2 * ceil32(return_data.size)) + 222 len 2] > 65535:
                                revert with 0, 17
                            mem[mem[64]] = mem[_254 + 126 len 2]
                            return mem[mem[64]], _1204 << 240
                        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                                gas gas_remaining wei
                               args ext_call.return_data[192]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_1292] == mem[_1292 + 30 len 2]
                        require mem[_1292 + 32] == mem[_1292 + 62 len 2]
                        if uint16(_1204) > -mem[_1292 + 30 len 2] + 65535:
                            revert with 0, 17
                        if uint16(mem[_1292 + 30 len 2] + uint16(_1204)) > 65535:
                            revert with 0, 17
                        return _1206 << 240, uint16(mem[_1292 + 30 len 2] + uint16(_1204))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[224]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1281 = mem[_1262]
                    require mem[_1262] == mem[_1262 + 30 len 2]
                    require mem[_1262 + 32] == mem[_1262 + 62 len 2]
                    if not ext_call.return_data[192]:
                        if uint16(_1204) > 65535:
                            revert with 0, 17
                        if uint16(_1204) > -mem[_1262 + 30 len 2] + 65535:
                            revert with 0, 17
                        return _1206 << 240, uint16(mem[_1262 + 30 len 2] + uint16(_1204))
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1422 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1422] == mem[_1422 + 30 len 2]
                    require mem[_1422 + 32] == mem[_1422 + 62 len 2]
                    if uint16(_1204) > -mem[_1422 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1422 + 30 len 2] + uint16(_1204)) > -uint16(_1281) + 65535:
                        revert with 0, 17
                    return _1206 << 240, uint16(uint16(_1281) + uint16(mem[_1422 + 30 len 2] + uint16(_1204)))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[128]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1228 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1233 = mem[_1228]
                require mem[_1228] == mem[_1228 + 30 len 2]
                require mem[_1228 + 32] == mem[_1228 + 62 len 2]
                if uint16(_1206) > -mem[_1228 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1228 + 30 len 2] + uint16(_1206)) > 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(_1204) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1228 + 30 len 2] + uint16(_1206))
                        return mem[mem[64]], _1204 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1421 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1421] == mem[_1421 + 30 len 2]
                    require mem[_1421 + 32] == mem[_1421 + 62 len 2]
                    if uint16(_1204) > -mem[_1421 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1421 + 30 len 2] + uint16(_1204)) > 65535:
                        revert with 0, 17
                    return uint16(_1233) + uint16(_1206) << 240, uint16(mem[_1421 + 30 len 2] + uint16(_1204))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1371 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1407 = mem[_1371]
                require mem[_1371] == mem[_1371 + 30 len 2]
                require mem[_1371 + 32] == mem[_1371 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(_1204) > 65535:
                        revert with 0, 17
                    if uint16(_1204) > -mem[_1371 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1233) + uint16(_1206) << 240, uint16(mem[_1371 + 30 len 2] + uint16(_1204))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1654 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1654] == mem[_1654 + 30 len 2]
                require mem[_1654 + 32] == mem[_1654 + 62 len 2]
                if uint16(_1204) > -mem[_1654 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1654 + 30 len 2] + uint16(_1204)) > -uint16(_1407) + 65535:
                    revert with 0, 17
                return uint16(_1233) + uint16(_1206) << 240, uint16(uint16(_1407) + uint16(mem[_1654 + 30 len 2] + uint16(_1204)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[160]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1226 = mem[_1218]
            require mem[_1218] == mem[_1218 + 30 len 2]
            require mem[_1218 + 32] == mem[_1218 + 62 len 2]
            if not ext_call.return_data[128]:
                if uint16(_1206) > 65535:
                    revert with 0, 17
                if uint16(_1206) > -mem[_1218 + 30 len 2] + 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(_1204) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_1218 + 30 len 2] + uint16(_1206))
                        return mem[mem[64]], _1204 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1420] == mem[_1420 + 30 len 2]
                    require mem[_1420 + 32] == mem[_1420 + 62 len 2]
                    if uint16(_1204) > -mem[_1420 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1420 + 30 len 2] + uint16(_1204)) > 65535:
                        revert with 0, 17
                    return uint16(_1226) + uint16(_1206) << 240, uint16(mem[_1420 + 30 len 2] + uint16(_1204))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1370 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1406 = mem[_1370]
                require mem[_1370] == mem[_1370 + 30 len 2]
                require mem[_1370 + 32] == mem[_1370 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(_1204) > 65535:
                        revert with 0, 17
                    if uint16(_1204) > -mem[_1370 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1226) + uint16(_1206) << 240, uint16(mem[_1370 + 30 len 2] + uint16(_1204))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1653 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1653] == mem[_1653 + 30 len 2]
                require mem[_1653 + 32] == mem[_1653 + 62 len 2]
                if uint16(_1204) > -mem[_1653 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1653 + 30 len 2] + uint16(_1204)) > -uint16(_1406) + 65535:
                    revert with 0, 17
                return uint16(_1226) + uint16(_1206) << 240, uint16(uint16(_1406) + uint16(mem[_1653 + 30 len 2] + uint16(_1204)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[128]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1280 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1298 = mem[_1280]
            require mem[_1280] == mem[_1280 + 30 len 2]
            require mem[_1280 + 32] == mem[_1280 + 62 len 2]
            if uint16(_1206) > -mem[_1280 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1280 + 30 len 2] + uint16(_1206)) > -uint16(_1226) + 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(_1204) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(uint16(_1226) + uint16(mem[_1280 + 30 len 2] + uint16(_1206)))
                    return mem[mem[64]], _1204 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1652 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1652] == mem[_1652 + 30 len 2]
                require mem[_1652 + 32] == mem[_1652 + 62 len 2]
                if uint16(_1204) > -mem[_1652 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1652 + 30 len 2] + uint16(_1204)) > 65535:
                    revert with 0, 17
                return uint16(_1226) + uint16(uint16(_1298) + uint16(_1206)) << 240, uint16(mem[_1652 + 30 len 2] + uint16(_1204))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1582 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1634 = mem[_1582]
            require mem[_1582] == mem[_1582 + 30 len 2]
            require mem[_1582 + 32] == mem[_1582 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(_1204) > 65535:
                    revert with 0, 17
                if uint16(_1204) > -mem[_1582 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1226) + uint16(uint16(_1298) + uint16(_1206)) << 240, uint16(mem[_1582 + 30 len 2] + uint16(_1204))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1984 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_1984] == mem[_1984 + 30 len 2]
            require mem[_1984 + 32] == mem[_1984 + 62 len 2]
            if uint16(_1204) > -mem[_1984 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1984 + 30 len 2] + uint16(_1204)) > -uint16(_1634) + 65535:
                revert with 0, 17
            return uint16(_1226) + uint16(uint16(_1298) + uint16(_1206)) << 240, 
                   uint16(uint16(_1634) + uint16(mem[_1984 + 30 len 2] + uint16(_1204)))
        if 100 < Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16:
            revert with 0, 17
        if 8 > -uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 65535:
            revert with 0, 17
        _1219 = mem[_254 + 96]
        if mem[_254 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) > -1 / mem[_254 + 126 len 2]:
            revert with 0, 17
        if not ext_call.return_data[160]:
            if not ext_call.return_data[128]:
                if uint16(mem[_254 + 126 len 2] * uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) / 100) > 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if mem[(2 * ceil32(return_data.size)) + 222 len 2] > 65535:
                            revert with 0, 17
                        mem[mem[64]] = uint16(mem[_254 + 126 len 2] * uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) / 100)
                        return mem[mem[64]], _1204 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1438 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1438] == mem[_1438 + 30 len 2]
                    require mem[_1438 + 32] == mem[_1438 + 62 len 2]
                    if uint16(_1204) > -mem[_1438 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1438 + 30 len 2] + uint16(_1204)) > 65535:
                        revert with 0, 17
                    return uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100 << 240, 
                           uint16(mem[_1438 + 30 len 2] + uint16(_1204))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1392 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1424 = mem[_1392]
                require mem[_1392] == mem[_1392 + 30 len 2]
                require mem[_1392 + 32] == mem[_1392 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(_1204) > 65535:
                        revert with 0, 17
                    if uint16(_1204) > -mem[_1392 + 30 len 2] + 65535:
                        revert with 0, 17
                    return uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100 << 240, 
                           uint16(mem[_1392 + 30 len 2] + uint16(_1204))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1686 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1686] == mem[_1686 + 30 len 2]
                require mem[_1686 + 32] == mem[_1686 + 62 len 2]
                if uint16(_1204) > -mem[_1686 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1686 + 30 len 2] + uint16(_1204)) > -uint16(_1424) + 65535:
                    revert with 0, 17
                return uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100 << 240, 
                       uint16(uint16(_1424) + uint16(mem[_1686 + 30 len 2] + uint16(_1204)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[128]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1303 = mem[_1293]
            require mem[_1293] == mem[_1293 + 30 len 2]
            require mem[_1293 + 32] == mem[_1293 + 62 len 2]
            if uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) > -mem[_1293 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1293 + 30 len 2] + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)) > 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(_1204) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(mem[_1293 + 30 len 2] + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100))
                    return mem[mem[64]], _1204 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1685 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1685] == mem[_1685 + 30 len 2]
                require mem[_1685 + 32] == mem[_1685 + 62 len 2]
                if uint16(_1204) > -mem[_1685 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1685 + 30 len 2] + uint16(_1204)) > 65535:
                    revert with 0, 17
                return uint16(_1303) + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_1685 + 30 len 2] + uint16(_1204))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1611 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1656 = mem[_1611]
            require mem[_1611] == mem[_1611 + 30 len 2]
            require mem[_1611 + 32] == mem[_1611 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(_1204) > 65535:
                    revert with 0, 17
                if uint16(_1204) > -mem[_1611 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1303) + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_1611 + 30 len 2] + uint16(_1204))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2012 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2012] == mem[_2012 + 30 len 2]
            require mem[_2012 + 32] == mem[_2012 + 62 len 2]
            if uint16(_1204) > -mem[_2012 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2012 + 30 len 2] + uint16(_1204)) > -uint16(_1656) + 65535:
                revert with 0, 17
            return uint16(_1303) + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
                   uint16(uint16(_1656) + uint16(mem[_2012 + 30 len 2] + uint16(_1204)))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[160]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1282 = mem[_1263]
        require mem[_1263] == mem[_1263 + 30 len 2]
        require mem[_1263 + 32] == mem[_1263 + 62 len 2]
        if not ext_call.return_data[128]:
            if uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) > 65535:
                revert with 0, 17
            if uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) > -mem[_1263 + 30 len 2] + 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(_1204) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(mem[_1263 + 30 len 2] + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100))
                    return mem[mem[64]], _1204 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1684 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1684] == mem[_1684 + 30 len 2]
                require mem[_1684 + 32] == mem[_1684 + 62 len 2]
                if uint16(_1204) > -mem[_1684 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1684 + 30 len 2] + uint16(_1204)) > 65535:
                    revert with 0, 17
                return uint16(_1282) + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_1684 + 30 len 2] + uint16(_1204))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1610 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1655 = mem[_1610]
            require mem[_1610] == mem[_1610 + 30 len 2]
            require mem[_1610 + 32] == mem[_1610 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(_1204) > 65535:
                    revert with 0, 17
                if uint16(_1204) > -mem[_1610 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1282) + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
                       uint16(mem[_1610 + 30 len 2] + uint16(_1204))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2011 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2011] == mem[_2011 + 30 len 2]
            require mem[_2011 + 32] == mem[_2011 + 62 len 2]
            if uint16(_1204) > -mem[_2011 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2011 + 30 len 2] + uint16(_1204)) > -uint16(_1655) + 65535:
                revert with 0, 17
            return uint16(_1282) + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
                   uint16(uint16(_1655) + uint16(mem[_2011 + 30 len 2] + uint16(_1204)))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[128]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1423 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1449 = mem[_1423]
        require mem[_1423] == mem[_1423 + 30 len 2]
        require mem[_1423 + 32] == mem[_1423 + 62 len 2]
        if uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) > -mem[_1423 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_1423 + 30 len 2] + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)) > -uint16(_1282) + 65535:
            revert with 0, 17
        if not ext_call.return_data[224]:
            if not ext_call.return_data[192]:
                if uint16(_1204) > 65535:
                    revert with 0, 17
                mem[mem[64]] = uint16(uint16(_1282) + uint16(mem[_1423 + 30 len 2] + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)))
                return mem[mem[64]], _1204 << 240
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2010 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_2010] == mem[_2010 + 30 len 2]
            require mem[_2010 + 32] == mem[_2010 + 62 len 2]
            if uint16(_1204) > -mem[_2010 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_2010 + 30 len 2] + uint16(_1204)) > 65535:
                revert with 0, 17
            return uint16(_1282) + uint16(uint16(_1449) + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)) << 240, 
                   uint16(mem[_2010 + 30 len 2] + uint16(_1204))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[224]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1932 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1985 = mem[_1932]
        require mem[_1932] == mem[_1932 + 30 len 2]
        require mem[_1932 + 32] == mem[_1932 + 62 len 2]
        if not ext_call.return_data[192]:
            if uint16(_1204) > 65535:
                revert with 0, 17
            if uint16(_1204) > -mem[_1932 + 30 len 2] + 65535:
                revert with 0, 17
            return uint16(_1282) + uint16(uint16(_1449) + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)) << 240, 
                   uint16(mem[_1932 + 30 len 2] + uint16(_1204))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[192]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2354 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_2354] == mem[_2354 + 30 len 2]
        require mem[_2354 + 32] == mem[_2354 + 62 len 2]
        if uint16(_1204) > -mem[_2354 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_2354 + 30 len 2] + uint16(_1204)) > -uint16(_1985) + 65535:
            revert with 0, 17
        return uint16(_1282) + uint16(uint16(_1449) + uint16(uint16(_1219) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)) << 240, 
               uint16(uint16(_1985) + uint16(mem[_2354 + 30 len 2] + uint16(_1204)))
    if 100 < Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16:
        revert with 0, 17
    _1208 = mem[(2 * ceil32(return_data.size)) + 192]
    if mem[(2 * ceil32(return_data.size)) + 222 len 2] and uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) > -1 / mem[(2 * ceil32(return_data.size)) + 222 len 2]:
        revert with 0, 17
    if Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16 < 8:
        _1229 = mem[_254 + 96]
        if not ext_call.return_data[160]:
            if not ext_call.return_data[128]:
                if mem[_254 + 126 len 2] > 65535:
                    revert with 0, 17
                if not ext_call.return_data[224]:
                    if not ext_call.return_data[192]:
                        if uint16(mem[(2 * ceil32(return_data.size)) + 222 len 2] * uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) / 100) > 65535:
                            revert with 0, 17
                        mem[mem[64]] = mem[_254 + 126 len 2]
                        return mem[mem[64]], 
                               uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100 << 240
                    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args ext_call.return_data[192]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1393] == mem[_1393 + 30 len 2]
                    require mem[_1393 + 32] == mem[_1393 + 62 len 2]
                    if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1393 + 30 len 2] + 65535:
                        revert with 0, 17
                    if uint16(mem[_1393 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > 65535:
                        revert with 0, 17
                    return _1229 << 240, 
                           uint16(mem[_1393 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[224]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1339 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1373 = mem[_1339]
                require mem[_1339] == mem[_1339 + 30 len 2]
                require mem[_1339 + 32] == mem[_1339 + 62 len 2]
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1339 + 30 len 2] + 65535:
                        revert with 0, 17
                    return _1229 << 240, 
                           uint16(mem[_1339 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1614] == mem[_1614 + 30 len 2]
                require mem[_1614 + 32] == mem[_1614 + 62 len 2]
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1614 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1614 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > -uint16(_1373) + 65535:
                    revert with 0, 17
                return _1229 << 240, 
                       uint16(uint16(_1373) + uint16(mem[_1614 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[128]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1284 = mem[_1264]
            require mem[_1264] == mem[_1264 + 30 len 2]
            require mem[_1264 + 32] == mem[_1264 + 62 len 2]
            if uint16(_1229) > -mem[_1264 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1264 + 30 len 2] + uint16(_1229)) > 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(mem[_1264 + 30 len 2] + uint16(_1229))
                    return mem[mem[64]], 
                           uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1613 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1613] == mem[_1613 + 30 len 2]
                require mem[_1613 + 32] == mem[_1613 + 62 len 2]
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1613 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1613 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > 65535:
                    revert with 0, 17
                return uint16(_1284) + uint16(_1229) << 240, 
                       uint16(mem[_1613 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1518 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1585 = mem[_1518]
            require mem[_1518] == mem[_1518 + 30 len 2]
            require mem[_1518 + 32] == mem[_1518 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1518 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1284) + uint16(_1229) << 240, 
                       uint16(mem[_1518 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1935 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_1935] == mem[_1935 + 30 len 2]
            require mem[_1935 + 32] == mem[_1935 + 62 len 2]
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1935 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1935 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > -uint16(_1585) + 65535:
                revert with 0, 17
            return uint16(_1284) + uint16(_1229) << 240, 
                   uint16(uint16(_1585) + uint16(mem[_1935 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[160]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1258 = mem[_1242]
        require mem[_1242] == mem[_1242 + 30 len 2]
        require mem[_1242 + 32] == mem[_1242 + 62 len 2]
        if not ext_call.return_data[128]:
            if uint16(_1229) > 65535:
                revert with 0, 17
            if uint16(_1229) > -mem[_1242 + 30 len 2] + 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(mem[_1242 + 30 len 2] + uint16(_1229))
                    return mem[mem[64]], 
                           uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1612 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1612] == mem[_1612 + 30 len 2]
                require mem[_1612 + 32] == mem[_1612 + 62 len 2]
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1612 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1612 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > 65535:
                    revert with 0, 17
                return uint16(_1258) + uint16(_1229) << 240, 
                       uint16(mem[_1612 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1517 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1584 = mem[_1517]
            require mem[_1517] == mem[_1517 + 30 len 2]
            require mem[_1517 + 32] == mem[_1517 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1517 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1258) + uint16(_1229) << 240, 
                       uint16(mem[_1517 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1934 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_1934] == mem[_1934 + 30 len 2]
            require mem[_1934 + 32] == mem[_1934 + 62 len 2]
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1934 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1934 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > -uint16(_1584) + 65535:
                revert with 0, 17
            return uint16(_1258) + uint16(_1229) << 240, 
                   uint16(uint16(_1584) + uint16(mem[_1934 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[128]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1372 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1410 = mem[_1372]
        require mem[_1372] == mem[_1372 + 30 len 2]
        require mem[_1372 + 32] == mem[_1372 + 62 len 2]
        if uint16(_1229) > -mem[_1372 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_1372 + 30 len 2] + uint16(_1229)) > -uint16(_1258) + 65535:
            revert with 0, 17
        if not ext_call.return_data[224]:
            if not ext_call.return_data[192]:
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                mem[mem[64]] = uint16(uint16(_1258) + uint16(mem[_1372 + 30 len 2] + uint16(_1229)))
                return mem[mem[64]], 
                       uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100 << 240
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1933 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_1933] == mem[_1933 + 30 len 2]
            require mem[_1933 + 32] == mem[_1933 + 62 len 2]
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1933 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1933 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > 65535:
                revert with 0, 17
            return uint16(_1258) + uint16(uint16(_1410) + uint16(_1229)) << 240, 
                   uint16(mem[_1933 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[224]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1813 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1902 = mem[_1813]
        require mem[_1813] == mem[_1813 + 30 len 2]
        require mem[_1813 + 32] == mem[_1813 + 62 len 2]
        if not ext_call.return_data[192]:
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                revert with 0, 17
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1813 + 30 len 2] + 65535:
                revert with 0, 17
            return uint16(_1258) + uint16(uint16(_1410) + uint16(_1229)) << 240, 
                   uint16(mem[_1813 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[192]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2298 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_2298] == mem[_2298 + 30 len 2]
        require mem[_2298 + 32] == mem[_2298 + 62 len 2]
        if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_2298 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_2298 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > -uint16(_1902) + 65535:
            revert with 0, 17
        return uint16(_1258) + uint16(uint16(_1410) + uint16(_1229)) << 240, 
               uint16(uint16(_1902) + uint16(mem[_2298 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)))
    if 100 < Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16:
        revert with 0, 17
    if 8 > -uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 65535:
        revert with 0, 17
    _1243 = mem[_254 + 96]
    if mem[_254 + 126 len 2] and uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) > -1 / mem[_254 + 126 len 2]:
        revert with 0, 17
    if not ext_call.return_data[160]:
        if not ext_call.return_data[128]:
            if uint16(mem[_254 + 126 len 2] * uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) / 100) > 65535:
                revert with 0, 17
            if not ext_call.return_data[224]:
                if not ext_call.return_data[192]:
                    if uint16(mem[(2 * ceil32(return_data.size)) + 222 len 2] * uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) / 100) > 65535:
                        revert with 0, 17
                    mem[mem[64]] = uint16(mem[_254 + 126 len 2] * uint16(uint16(-(Mask(256, -28 * mem[(2 * ceil32(return_data.size)) + 160], 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) << -28 * mem[(2 * ceil32(return_data.size)) + 160] % 16) + 100) + 8) / 100)
                    return mem[mem[64]], 
                           uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100 << 240
                require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
                staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args ext_call.return_data[192]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1641 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_1641] == mem[_1641 + 30 len 2]
                require mem[_1641 + 32] == mem[_1641 + 62 len 2]
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1641 + 30 len 2] + 65535:
                    revert with 0, 17
                if uint16(mem[_1641 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > 65535:
                    revert with 0, 17
                return uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100 << 240, 
                       uint16(mem[_1641 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[224]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1555 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1616 = mem[_1555]
            require mem[_1555] == mem[_1555 + 30 len 2]
            require mem[_1555 + 32] == mem[_1555 + 62 len 2]
            if not ext_call.return_data[192]:
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1555 + 30 len 2] + 65535:
                    revert with 0, 17
                return uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100 << 240, 
                       uint16(mem[_1555 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1972 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_1972] == mem[_1972 + 30 len 2]
            require mem[_1972 + 32] == mem[_1972 + 62 len 2]
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1972 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1972 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > -uint16(_1616) + 65535:
                revert with 0, 17
            return uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100 << 240, 
                   uint16(uint16(_1616) + uint16(mem[_1972 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[128]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1394 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1428 = mem[_1394]
        require mem[_1394] == mem[_1394 + 30 len 2]
        require mem[_1394 + 32] == mem[_1394 + 62 len 2]
        if uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) > -mem[_1394 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_1394 + 30 len 2] + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)) > 65535:
            revert with 0, 17
        if not ext_call.return_data[224]:
            if not ext_call.return_data[192]:
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                mem[mem[64]] = uint16(mem[_1394 + 30 len 2] + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100))
                return mem[mem[64]], 
                       uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100 << 240
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1971 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_1971] == mem[_1971 + 30 len 2]
            require mem[_1971 + 32] == mem[_1971 + 62 len 2]
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1971 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1971 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > 65535:
                revert with 0, 17
            return uint16(_1428) + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
                   uint16(mem[_1971 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[224]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1855 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1937 = mem[_1855]
        require mem[_1855] == mem[_1855 + 30 len 2]
        require mem[_1855 + 32] == mem[_1855 + 62 len 2]
        if not ext_call.return_data[192]:
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                revert with 0, 17
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1855 + 30 len 2] + 65535:
                revert with 0, 17
            return uint16(_1428) + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
                   uint16(mem[_1855 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[192]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2328 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_2328] == mem[_2328 + 30 len 2]
        require mem[_2328 + 32] == mem[_2328 + 62 len 2]
        if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_2328 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_2328 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > -uint16(_1937) + 65535:
            revert with 0, 17
        return uint16(_1428) + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
               uint16(uint16(_1937) + uint16(mem[_2328 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)))
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[160]
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1340 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _1374 = mem[_1340]
    require mem[_1340] == mem[_1340 + 30 len 2]
    require mem[_1340 + 32] == mem[_1340 + 62 len 2]
    if not ext_call.return_data[128]:
        if uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) > 65535:
            revert with 0, 17
        if uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) > -mem[_1340 + 30 len 2] + 65535:
            revert with 0, 17
        if not ext_call.return_data[224]:
            if not ext_call.return_data[192]:
                if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                    revert with 0, 17
                mem[mem[64]] = uint16(mem[_1340 + 30 len 2] + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100))
                return mem[mem[64]], 
                       uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100 << 240
            require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
            staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[192]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1970 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_1970] == mem[_1970 + 30 len 2]
            require mem[_1970 + 32] == mem[_1970 + 62 len 2]
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1970 + 30 len 2] + 65535:
                revert with 0, 17
            if uint16(mem[_1970 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > 65535:
                revert with 0, 17
            return uint16(_1374) + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
                   uint16(mem[_1970 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[224]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1854 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1936 = mem[_1854]
        require mem[_1854] == mem[_1854 + 30 len 2]
        require mem[_1854 + 32] == mem[_1854 + 62 len 2]
        if not ext_call.return_data[192]:
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                revert with 0, 17
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_1854 + 30 len 2] + 65535:
                revert with 0, 17
            return uint16(_1374) + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
                   uint16(mem[_1854 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[192]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_2327] == mem[_2327 + 30 len 2]
        require mem[_2327 + 32] == mem[_2327 + 62 len 2]
        if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_2327 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_2327 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > -uint16(_1936) + 65535:
            revert with 0, 17
        return uint16(_1374) + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) << 240, 
               uint16(uint16(_1936) + uint16(mem[_2327 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)))
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[128]
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1615 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _1662 = mem[_1615]
    require mem[_1615] == mem[_1615 + 30 len 2]
    require mem[_1615 + 32] == mem[_1615 + 62 len 2]
    if uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100) > -mem[_1615 + 30 len 2] + 65535:
        revert with 0, 17
    if uint16(mem[_1615 + 30 len 2] + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)) > -uint16(_1374) + 65535:
        revert with 0, 17
    if not ext_call.return_data[224]:
        if not ext_call.return_data[192]:
            if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
                revert with 0, 17
            mem[mem[64]] = uint16(uint16(_1374) + uint16(mem[_1615 + 30 len 2] + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)))
            return mem[mem[64]], 
                   uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100 << 240
        require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
        staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[192]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_2326] == mem[_2326 + 30 len 2]
        require mem[_2326 + 32] == mem[_2326 + 62 len 2]
        if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_2326 + 30 len 2] + 65535:
            revert with 0, 17
        if uint16(mem[_2326 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > 65535:
            revert with 0, 17
        return uint16(_1374) + uint16(uint16(_1662) + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)) << 240, 
               uint16(mem[_2326 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[224]
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2218 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _2299 = mem[_2218]
    require mem[_2218] == mem[_2218 + 30 len 2]
    require mem[_2218 + 32] == mem[_2218 + 62 len 2]
    if not ext_call.return_data[192]:
        if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > 65535:
            revert with 0, 17
        if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_2218 + 30 len 2] + 65535:
            revert with 0, 17
        return uint16(_1374) + uint16(uint16(_1662) + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)) << 240, 
               uint16(mem[_2218 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100))
    require ext_code.size(0x82a85407bd612f52577909f4a58bfc6873f14da8)
    staticcall 0x82a85407bd612f52577909f4a58bfc6873f14da8.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2626 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    require mem[_2626] == mem[_2626 + 30 len 2]
    require mem[_2626 + 32] == mem[_2626 + 62 len 2]
    if uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100) > -mem[_2626 + 30 len 2] + 65535:
        revert with 0, 17
    if uint16(mem[_2626 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)) > -uint16(_2299) + 65535:
        revert with 0, 17
    return uint16(_1374) + uint16(uint16(_1662) + uint16(uint16(_1243) * uint16(uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) + 8) / 100)) << 240, 
           uint16(uint16(_2299) + uint16(mem[_2626 + 30 len 2] + uint16(uint16(_1208) * uint16(-(Mask(256, -28 * _1189, 0x770ffbf0770fbff0770b0ff077b70ff07b770ff0b3333330) >> 28 * _1189 % 16) + 100) / 100)))
}



}
