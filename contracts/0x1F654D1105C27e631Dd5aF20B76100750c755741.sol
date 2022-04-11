contract main {




// =====================  Runtime code  =====================


#
#  - getRing(address arg1)
#  - getChest(address arg1)
#  - getWeapon(address arg1)
#  - tokenURI(address arg1)
#  - getHead(address arg1)
#  - getHand(address arg1)
#  - getFoot(address arg1)
#  - getNeck(address arg1)
#  - getWaist(address arg1)
#
array of struct stor0;
array of struct stor1;
array of struct stor2;
array of struct stor3;
array of struct stor4;
array of struct stor5;
array of struct stor6;
array of struct stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    revert
}

function handComponents(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96 len 160] = call.data[calldata.size len 160]
    mem[256] = 4
    mem[288] = 'HAND'
    mem[64] = (32 * stor5.length) + 352
    mem[320] = stor5.length
    s = 352
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx].field_0:
            if stor5[idx].field_0 == stor5[idx].field_1 < 32:
                revert with 'NH{q', 34
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(stor5[idx].field_1) + 32
            mem[_169] = stor5[idx].field_1
            if stor5[idx].field_0:
                if stor5[idx].field_0 == stor5[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor5[idx].field_1:
                    if 31 >= stor5[idx].field_1:
                        mem[_169 + 32] = 256 * stor5[idx].field_8
                    else:
                        mem[0] = sha3(5) + idx
                        mem[_169 + 32] = stor5[idx].field_0
                        t = _169 + 32
                        u = sha3(mem[0])
                        while _169 + stor5[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if stor5[idx].field_0 == stor5[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor5[idx].field_1:
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[idx].field_1:
                mem[_169 + 32] = 256 * stor5[idx].field_8
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(5) + idx
            mem[_169 + 32] = stor5[idx].field_0
            t = _169 + 32
            u = sha3(mem[0])
            while _169 + stor5[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _169
            t = t + 32
            u = u + 1
            continue 
        if stor5[idx].field_0 == stor5[idx].field_1 < 32:
            revert with 'NH{q', 34
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[idx].field_1) + 32
        mem[_171] = stor5[idx].field_1
        if stor5[idx].field_0:
            if stor5[idx].field_0 == stor5[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor5[idx].field_1:
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[idx].field_1:
                mem[_171 + 32] = 256 * stor5[idx].field_8
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(5) + idx
            mem[_171 + 32] = stor5[idx].field_0
            t = _171 + 32
            u = sha3(mem[0])
            while _171 + stor5[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _171
            t = t + 32
            u = u + 1
            continue 
        if stor5[idx].field_0 == stor5[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor5[idx].field_1:
            if 31 >= stor5[idx].field_1:
                mem[_171 + 32] = 256 * stor5[idx].field_8
            else:
                mem[0] = sha3(5) + idx
                mem[_171 + 32] = stor5[idx].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + stor5[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _171
        s = s + 32
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 160
    mem[_167 len 160] = call.data[calldata.size len 160]
    _168 = mem[64]
    mem[64] = mem[64] + 160
    mem[_168 len 160] = call.data[calldata.size len 160]
    _170 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    _176 = mem[64]
    mem[mem[64]] = 20
    mem[64] = mem[64] + 52
    _178 = mem[256]
    mem[_170 + 84 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
    if ceil32(_178) <= _178:
        _329 = mem[_176]
        mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
        if ceil32(_329) <= _329:
            _479 = mem[64]
            mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
            mem[64] = _170 + _178 + _329 + 84
            _487 = mem[_479]
            mem[_170 + _178 + _329 + 116 len ceil32(mem[_479])] = mem[_479 + 32 len ceil32(mem[_479])]
            if ceil32(_487) <= _487:
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _629 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _629 % 21 <= 14:
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _629 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_629 % stor8) + 1
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
            else:
                mem[_170 + _178 + _329 + _487 + 116] = 0
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _642 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _642 % 21 <= 14:
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _642 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_642 % stor8) + 1
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
            return memory
              from _170 + _178 + _329 + _487 + 116
               len 160
        mem[_170 + _178 + _329 + 84] = 0
        _482 = mem[64]
        mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
        mem[64] = _170 + _178 + _329 + 84
        _489 = mem[_482]
        mem[_170 + _178 + _329 + 116 len ceil32(mem[_482])] = mem[_482 + 32 len ceil32(mem[_482])]
        if ceil32(_489) <= _489:
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _632 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _632 % 21 <= 14:
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _632 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_632 % stor8) + 1
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _329 + _489 + 116] = 0
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _646 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _646 % 21 <= 14:
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _646 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_646 % stor8) + 1
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
        return memory
          from _170 + _178 + _329 + _489 + 116
           len 160
    mem[_170 + _178 + 84] = 0
    _330 = mem[_176]
    mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
    if ceil32(_330) <= _330:
        _480 = mem[64]
        mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
        mem[64] = _170 + _178 + _330 + 84
        _488 = mem[_480]
        mem[_170 + _178 + _330 + 116 len ceil32(mem[_480])] = mem[_480 + 32 len ceil32(mem[_480])]
        if ceil32(_488) <= _488:
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _635 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _635 % 21 <= 14:
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _635 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_635 % stor8) + 1
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _330 + _488 + 116] = 0
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _650 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _650 % 21 <= 14:
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _650 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_650 % stor8) + 1
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
        return memory
          from _170 + _178 + _330 + _488 + 116
           len 160
    mem[_170 + _178 + _330 + 84] = 0
    _484 = mem[64]
    mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
    mem[64] = _170 + _178 + _330 + 84
    _490 = mem[_484]
    mem[_170 + _178 + _330 + 116 len ceil32(mem[_484])] = mem[_484 + 32 len ceil32(mem[_484])]
    if ceil32(_490) <= _490:
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _638 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _638 % 21 <= 14:
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _638 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_638 % stor8) + 1
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
    else:
        mem[_170 + _178 + _330 + _490 + 116] = 0
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _654 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _654 % 21 <= 14:
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _654 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_654 % stor8) + 1
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
    return memory
      from _170 + _178 + _330 + _490 + 116
       len 160
}

function headComponents(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96 len 160] = call.data[calldata.size len 160]
    mem[256] = 4
    mem[288] = 'HEAD'
    mem[64] = (32 * stor2.length) + 352
    mem[320] = stor2.length
    s = 352
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if stor2[idx].field_0:
            if stor2[idx].field_0 == stor2[idx].field_1 < 32:
                revert with 'NH{q', 34
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[idx].field_1) + 32
            mem[_169] = stor2[idx].field_1
            if stor2[idx].field_0:
                if stor2[idx].field_0 == stor2[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor2[idx].field_1:
                    if 31 >= stor2[idx].field_1:
                        mem[_169 + 32] = 256 * stor2[idx].field_8
                    else:
                        mem[0] = sha3(2) + idx
                        mem[_169 + 32] = stor2[idx].field_0
                        t = _169 + 32
                        u = sha3(mem[0])
                        while _169 + stor2[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if stor2[idx].field_0 == stor2[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor2[idx].field_1:
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_1:
                mem[_169 + 32] = 256 * stor2[idx].field_8
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(2) + idx
            mem[_169 + 32] = stor2[idx].field_0
            t = _169 + 32
            u = sha3(mem[0])
            while _169 + stor2[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _169
            t = t + 32
            u = u + 1
            continue 
        if stor2[idx].field_0 == stor2[idx].field_1 < 32:
            revert with 'NH{q', 34
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].field_1) + 32
        mem[_171] = stor2[idx].field_1
        if stor2[idx].field_0:
            if stor2[idx].field_0 == stor2[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor2[idx].field_1:
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_1:
                mem[_171 + 32] = 256 * stor2[idx].field_8
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(2) + idx
            mem[_171 + 32] = stor2[idx].field_0
            t = _171 + 32
            u = sha3(mem[0])
            while _171 + stor2[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _171
            t = t + 32
            u = u + 1
            continue 
        if stor2[idx].field_0 == stor2[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[idx].field_1:
            if 31 >= stor2[idx].field_1:
                mem[_171 + 32] = 256 * stor2[idx].field_8
            else:
                mem[0] = sha3(2) + idx
                mem[_171 + 32] = stor2[idx].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + stor2[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _171
        s = s + 32
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 160
    mem[_167 len 160] = call.data[calldata.size len 160]
    _168 = mem[64]
    mem[64] = mem[64] + 160
    mem[_168 len 160] = call.data[calldata.size len 160]
    _170 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    _176 = mem[64]
    mem[mem[64]] = 20
    mem[64] = mem[64] + 52
    _178 = mem[256]
    mem[_170 + 84 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
    if ceil32(_178) <= _178:
        _329 = mem[_176]
        mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
        if ceil32(_329) <= _329:
            _479 = mem[64]
            mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
            mem[64] = _170 + _178 + _329 + 84
            _487 = mem[_479]
            mem[_170 + _178 + _329 + 116 len ceil32(mem[_479])] = mem[_479 + 32 len ceil32(mem[_479])]
            if ceil32(_487) <= _487:
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _629 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _629 % 21 <= 14:
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _629 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_629 % stor8) + 1
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
            else:
                mem[_170 + _178 + _329 + _487 + 116] = 0
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _642 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _642 % 21 <= 14:
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _642 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_642 % stor8) + 1
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
            return memory
              from _170 + _178 + _329 + _487 + 116
               len 160
        mem[_170 + _178 + _329 + 84] = 0
        _482 = mem[64]
        mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
        mem[64] = _170 + _178 + _329 + 84
        _489 = mem[_482]
        mem[_170 + _178 + _329 + 116 len ceil32(mem[_482])] = mem[_482 + 32 len ceil32(mem[_482])]
        if ceil32(_489) <= _489:
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _632 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _632 % 21 <= 14:
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _632 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_632 % stor8) + 1
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _329 + _489 + 116] = 0
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _646 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _646 % 21 <= 14:
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _646 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_646 % stor8) + 1
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
        return memory
          from _170 + _178 + _329 + _489 + 116
           len 160
    mem[_170 + _178 + 84] = 0
    _330 = mem[_176]
    mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
    if ceil32(_330) <= _330:
        _480 = mem[64]
        mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
        mem[64] = _170 + _178 + _330 + 84
        _488 = mem[_480]
        mem[_170 + _178 + _330 + 116 len ceil32(mem[_480])] = mem[_480 + 32 len ceil32(mem[_480])]
        if ceil32(_488) <= _488:
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _635 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _635 % 21 <= 14:
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _635 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_635 % stor8) + 1
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _330 + _488 + 116] = 0
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _650 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _650 % 21 <= 14:
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _650 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_650 % stor8) + 1
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
        return memory
          from _170 + _178 + _330 + _488 + 116
           len 160
    mem[_170 + _178 + _330 + 84] = 0
    _484 = mem[64]
    mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
    mem[64] = _170 + _178 + _330 + 84
    _490 = mem[_484]
    mem[_170 + _178 + _330 + 116 len ceil32(mem[_484])] = mem[_484 + 32 len ceil32(mem[_484])]
    if ceil32(_490) <= _490:
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _638 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _638 % 21 <= 14:
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _638 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_638 % stor8) + 1
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
    else:
        mem[_170 + _178 + _330 + _490 + 116] = 0
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _654 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _654 % 21 <= 14:
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _654 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_654 % stor8) + 1
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
    return memory
      from _170 + _178 + _330 + _490 + 116
       len 160
}

function neckComponents(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96 len 160] = call.data[calldata.size len 160]
    mem[256] = 4
    mem[288] = 'NECK'
    mem[64] = (32 * stor6.length) + 352
    mem[320] = stor6.length
    s = 352
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx].field_0:
            if stor6[idx].field_0 == stor6[idx].field_1 < 32:
                revert with 'NH{q', 34
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(stor6[idx].field_1) + 32
            mem[_169] = stor6[idx].field_1
            if stor6[idx].field_0:
                if stor6[idx].field_0 == stor6[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor6[idx].field_1:
                    if 31 >= stor6[idx].field_1:
                        mem[_169 + 32] = 256 * stor6[idx].field_8
                    else:
                        mem[0] = sha3(6) + idx
                        mem[_169 + 32] = stor6[idx].field_0
                        t = _169 + 32
                        u = sha3(mem[0])
                        while _169 + stor6[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if stor6[idx].field_0 == stor6[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor6[idx].field_1:
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor6[idx].field_1:
                mem[_169 + 32] = 256 * stor6[idx].field_8
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(6) + idx
            mem[_169 + 32] = stor6[idx].field_0
            t = _169 + 32
            u = sha3(mem[0])
            while _169 + stor6[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _169
            t = t + 32
            u = u + 1
            continue 
        if stor6[idx].field_0 == stor6[idx].field_1 < 32:
            revert with 'NH{q', 34
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(stor6[idx].field_1) + 32
        mem[_171] = stor6[idx].field_1
        if stor6[idx].field_0:
            if stor6[idx].field_0 == stor6[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor6[idx].field_1:
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor6[idx].field_1:
                mem[_171 + 32] = 256 * stor6[idx].field_8
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(6) + idx
            mem[_171 + 32] = stor6[idx].field_0
            t = _171 + 32
            u = sha3(mem[0])
            while _171 + stor6[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _171
            t = t + 32
            u = u + 1
            continue 
        if stor6[idx].field_0 == stor6[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[idx].field_1:
            if 31 >= stor6[idx].field_1:
                mem[_171 + 32] = 256 * stor6[idx].field_8
            else:
                mem[0] = sha3(6) + idx
                mem[_171 + 32] = stor6[idx].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + stor6[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _171
        s = s + 32
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 160
    mem[_167 len 160] = call.data[calldata.size len 160]
    _168 = mem[64]
    mem[64] = mem[64] + 160
    mem[_168 len 160] = call.data[calldata.size len 160]
    _170 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    _176 = mem[64]
    mem[mem[64]] = 20
    mem[64] = mem[64] + 52
    _178 = mem[256]
    mem[_170 + 84 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
    if ceil32(_178) <= _178:
        _329 = mem[_176]
        mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
        if ceil32(_329) <= _329:
            _479 = mem[64]
            mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
            mem[64] = _170 + _178 + _329 + 84
            _487 = mem[_479]
            mem[_170 + _178 + _329 + 116 len ceil32(mem[_479])] = mem[_479 + 32 len ceil32(mem[_479])]
            if ceil32(_487) <= _487:
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _629 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _629 % 21 <= 14:
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _629 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_629 % stor8) + 1
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
            else:
                mem[_170 + _178 + _329 + _487 + 116] = 0
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _642 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _642 % 21 <= 14:
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _642 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_642 % stor8) + 1
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
            return memory
              from _170 + _178 + _329 + _487 + 116
               len 160
        mem[_170 + _178 + _329 + 84] = 0
        _482 = mem[64]
        mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
        mem[64] = _170 + _178 + _329 + 84
        _489 = mem[_482]
        mem[_170 + _178 + _329 + 116 len ceil32(mem[_482])] = mem[_482 + 32 len ceil32(mem[_482])]
        if ceil32(_489) <= _489:
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _632 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _632 % 21 <= 14:
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _632 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_632 % stor8) + 1
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _329 + _489 + 116] = 0
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _646 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _646 % 21 <= 14:
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _646 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_646 % stor8) + 1
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
        return memory
          from _170 + _178 + _329 + _489 + 116
           len 160
    mem[_170 + _178 + 84] = 0
    _330 = mem[_176]
    mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
    if ceil32(_330) <= _330:
        _480 = mem[64]
        mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
        mem[64] = _170 + _178 + _330 + 84
        _488 = mem[_480]
        mem[_170 + _178 + _330 + 116 len ceil32(mem[_480])] = mem[_480 + 32 len ceil32(mem[_480])]
        if ceil32(_488) <= _488:
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _635 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _635 % 21 <= 14:
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _635 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_635 % stor8) + 1
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _330 + _488 + 116] = 0
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _650 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _650 % 21 <= 14:
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _650 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_650 % stor8) + 1
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
        return memory
          from _170 + _178 + _330 + _488 + 116
           len 160
    mem[_170 + _178 + _330 + 84] = 0
    _484 = mem[64]
    mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
    mem[64] = _170 + _178 + _330 + 84
    _490 = mem[_484]
    mem[_170 + _178 + _330 + 116 len ceil32(mem[_484])] = mem[_484 + 32 len ceil32(mem[_484])]
    if ceil32(_490) <= _490:
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _638 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _638 % 21 <= 14:
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _638 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_638 % stor8) + 1
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
    else:
        mem[_170 + _178 + _330 + _490 + 116] = 0
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _654 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _654 % 21 <= 14:
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _654 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_654 % stor8) + 1
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
    return memory
      from _170 + _178 + _330 + _490 + 116
       len 160
}

function footComponents(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96 len 160] = call.data[calldata.size len 160]
    mem[256] = 4
    mem[288] = 'FOOT'
    mem[64] = (32 * stor4.length) + 352
    mem[320] = stor4.length
    s = 352
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stor4[idx].field_0:
            if stor4[idx].field_0 == stor4[idx].field_1 < 32:
                revert with 'NH{q', 34
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(stor4[idx].field_1) + 32
            mem[_169] = stor4[idx].field_1
            if stor4[idx].field_0:
                if stor4[idx].field_0 == stor4[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor4[idx].field_1:
                    if 31 >= stor4[idx].field_1:
                        mem[_169 + 32] = 256 * stor4[idx].field_8
                    else:
                        mem[0] = sha3(4) + idx
                        mem[_169 + 32] = stor4[idx].field_0
                        t = _169 + 32
                        u = sha3(mem[0])
                        while _169 + stor4[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if stor4[idx].field_0 == stor4[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor4[idx].field_1:
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[idx].field_1:
                mem[_169 + 32] = 256 * stor4[idx].field_8
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(4) + idx
            mem[_169 + 32] = stor4[idx].field_0
            t = _169 + 32
            u = sha3(mem[0])
            while _169 + stor4[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _169
            t = t + 32
            u = u + 1
            continue 
        if stor4[idx].field_0 == stor4[idx].field_1 < 32:
            revert with 'NH{q', 34
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[idx].field_1) + 32
        mem[_171] = stor4[idx].field_1
        if stor4[idx].field_0:
            if stor4[idx].field_0 == stor4[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor4[idx].field_1:
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor4[idx].field_1:
                mem[_171 + 32] = 256 * stor4[idx].field_8
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(4) + idx
            mem[_171 + 32] = stor4[idx].field_0
            t = _171 + 32
            u = sha3(mem[0])
            while _171 + stor4[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _171
            t = t + 32
            u = u + 1
            continue 
        if stor4[idx].field_0 == stor4[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor4[idx].field_1:
            if 31 >= stor4[idx].field_1:
                mem[_171 + 32] = 256 * stor4[idx].field_8
            else:
                mem[0] = sha3(4) + idx
                mem[_171 + 32] = stor4[idx].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + stor4[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _171
        s = s + 32
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 160
    mem[_167 len 160] = call.data[calldata.size len 160]
    _168 = mem[64]
    mem[64] = mem[64] + 160
    mem[_168 len 160] = call.data[calldata.size len 160]
    _170 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    _176 = mem[64]
    mem[mem[64]] = 20
    mem[64] = mem[64] + 52
    _178 = mem[256]
    mem[_170 + 84 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
    if ceil32(_178) <= _178:
        _329 = mem[_176]
        mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
        if ceil32(_329) <= _329:
            _479 = mem[64]
            mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
            mem[64] = _170 + _178 + _329 + 84
            _487 = mem[_479]
            mem[_170 + _178 + _329 + 116 len ceil32(mem[_479])] = mem[_479 + 32 len ceil32(mem[_479])]
            if ceil32(_487) <= _487:
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _629 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _629 % 21 <= 14:
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _629 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_629 % stor8) + 1
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
            else:
                mem[_170 + _178 + _329 + _487 + 116] = 0
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _642 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _642 % 21 <= 14:
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _642 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_642 % stor8) + 1
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
            return memory
              from _170 + _178 + _329 + _487 + 116
               len 160
        mem[_170 + _178 + _329 + 84] = 0
        _482 = mem[64]
        mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
        mem[64] = _170 + _178 + _329 + 84
        _489 = mem[_482]
        mem[_170 + _178 + _329 + 116 len ceil32(mem[_482])] = mem[_482 + 32 len ceil32(mem[_482])]
        if ceil32(_489) <= _489:
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _632 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _632 % 21 <= 14:
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _632 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_632 % stor8) + 1
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _329 + _489 + 116] = 0
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _646 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _646 % 21 <= 14:
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _646 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_646 % stor8) + 1
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
        return memory
          from _170 + _178 + _329 + _489 + 116
           len 160
    mem[_170 + _178 + 84] = 0
    _330 = mem[_176]
    mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
    if ceil32(_330) <= _330:
        _480 = mem[64]
        mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
        mem[64] = _170 + _178 + _330 + 84
        _488 = mem[_480]
        mem[_170 + _178 + _330 + 116 len ceil32(mem[_480])] = mem[_480 + 32 len ceil32(mem[_480])]
        if ceil32(_488) <= _488:
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _635 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _635 % 21 <= 14:
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _635 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_635 % stor8) + 1
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _330 + _488 + 116] = 0
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _650 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _650 % 21 <= 14:
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _650 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_650 % stor8) + 1
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
        return memory
          from _170 + _178 + _330 + _488 + 116
           len 160
    mem[_170 + _178 + _330 + 84] = 0
    _484 = mem[64]
    mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
    mem[64] = _170 + _178 + _330 + 84
    _490 = mem[_484]
    mem[_170 + _178 + _330 + 116 len ceil32(mem[_484])] = mem[_484 + 32 len ceil32(mem[_484])]
    if ceil32(_490) <= _490:
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _638 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _638 % 21 <= 14:
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _638 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_638 % stor8) + 1
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
    else:
        mem[_170 + _178 + _330 + _490 + 116] = 0
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _654 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _654 % 21 <= 14:
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _654 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_654 % stor8) + 1
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
    return memory
      from _170 + _178 + _330 + _490 + 116
       len 160
}

function ringComponents(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96 len 160] = call.data[calldata.size len 160]
    mem[256] = 4
    mem[288] = 'RING'
    mem[64] = (32 * stor7.length) + 352
    mem[320] = stor7.length
    s = 352
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        if stor7[idx].field_0:
            if stor7[idx].field_0 == stor7[idx].field_1 < 32:
                revert with 'NH{q', 34
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(stor7[idx].field_1) + 32
            mem[_169] = stor7[idx].field_1
            if stor7[idx].field_0:
                if stor7[idx].field_0 == stor7[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor7[idx].field_1:
                    if 31 >= stor7[idx].field_1:
                        mem[_169 + 32] = 256 * stor7[idx].field_8
                    else:
                        mem[0] = sha3(7) + idx
                        mem[_169 + 32] = stor7[idx].field_0
                        t = _169 + 32
                        u = sha3(mem[0])
                        while _169 + stor7[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if stor7[idx].field_0 == stor7[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor7[idx].field_1:
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor7[idx].field_1:
                mem[_169 + 32] = 256 * stor7[idx].field_8
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(7) + idx
            mem[_169 + 32] = stor7[idx].field_0
            t = _169 + 32
            u = sha3(mem[0])
            while _169 + stor7[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _169
            t = t + 32
            u = u + 1
            continue 
        if stor7[idx].field_0 == stor7[idx].field_1 < 32:
            revert with 'NH{q', 34
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(stor7[idx].field_1) + 32
        mem[_171] = stor7[idx].field_1
        if stor7[idx].field_0:
            if stor7[idx].field_0 == stor7[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor7[idx].field_1:
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor7[idx].field_1:
                mem[_171 + 32] = 256 * stor7[idx].field_8
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(7) + idx
            mem[_171 + 32] = stor7[idx].field_0
            t = _171 + 32
            u = sha3(mem[0])
            while _171 + stor7[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _171
            t = t + 32
            u = u + 1
            continue 
        if stor7[idx].field_0 == stor7[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor7[idx].field_1:
            if 31 >= stor7[idx].field_1:
                mem[_171 + 32] = 256 * stor7[idx].field_8
            else:
                mem[0] = sha3(7) + idx
                mem[_171 + 32] = stor7[idx].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + stor7[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _171
        s = s + 32
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 160
    mem[_167 len 160] = call.data[calldata.size len 160]
    _168 = mem[64]
    mem[64] = mem[64] + 160
    mem[_168 len 160] = call.data[calldata.size len 160]
    _170 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    _176 = mem[64]
    mem[mem[64]] = 20
    mem[64] = mem[64] + 52
    _178 = mem[256]
    mem[_170 + 84 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
    if ceil32(_178) <= _178:
        _329 = mem[_176]
        mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
        if ceil32(_329) <= _329:
            _479 = mem[64]
            mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
            mem[64] = _170 + _178 + _329 + 84
            _487 = mem[_479]
            mem[_170 + _178 + _329 + 116 len ceil32(mem[_479])] = mem[_479 + 32 len ceil32(mem[_479])]
            if ceil32(_487) <= _487:
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _629 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _629 % 21 <= 14:
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _629 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_629 % stor8) + 1
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
            else:
                mem[_170 + _178 + _329 + _487 + 116] = 0
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _642 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _642 % 21 <= 14:
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _642 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_642 % stor8) + 1
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
            return memory
              from _170 + _178 + _329 + _487 + 116
               len 160
        mem[_170 + _178 + _329 + 84] = 0
        _482 = mem[64]
        mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
        mem[64] = _170 + _178 + _329 + 84
        _489 = mem[_482]
        mem[_170 + _178 + _329 + 116 len ceil32(mem[_482])] = mem[_482 + 32 len ceil32(mem[_482])]
        if ceil32(_489) <= _489:
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _632 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _632 % 21 <= 14:
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _632 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_632 % stor8) + 1
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _329 + _489 + 116] = 0
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _646 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _646 % 21 <= 14:
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _646 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_646 % stor8) + 1
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
        return memory
          from _170 + _178 + _329 + _489 + 116
           len 160
    mem[_170 + _178 + 84] = 0
    _330 = mem[_176]
    mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
    if ceil32(_330) <= _330:
        _480 = mem[64]
        mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
        mem[64] = _170 + _178 + _330 + 84
        _488 = mem[_480]
        mem[_170 + _178 + _330 + 116 len ceil32(mem[_480])] = mem[_480 + 32 len ceil32(mem[_480])]
        if ceil32(_488) <= _488:
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _635 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _635 % 21 <= 14:
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _635 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_635 % stor8) + 1
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _330 + _488 + 116] = 0
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _650 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _650 % 21 <= 14:
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _650 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_650 % stor8) + 1
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
        return memory
          from _170 + _178 + _330 + _488 + 116
           len 160
    mem[_170 + _178 + _330 + 84] = 0
    _484 = mem[64]
    mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
    mem[64] = _170 + _178 + _330 + 84
    _490 = mem[_484]
    mem[_170 + _178 + _330 + 116 len ceil32(mem[_484])] = mem[_484 + 32 len ceil32(mem[_484])]
    if ceil32(_490) <= _490:
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _638 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _638 % 21 <= 14:
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _638 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_638 % stor8) + 1
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
    else:
        mem[_170 + _178 + _330 + _490 + 116] = 0
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _654 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _654 % 21 <= 14:
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _654 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_654 % stor8) + 1
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
    return memory
      from _170 + _178 + _330 + _490 + 116
       len 160
}

function waistComponents(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96 len 160] = call.data[calldata.size len 160]
    mem[256] = 5
    mem[288] = 'WAIST'
    mem[64] = (32 * stor3.length) + 352
    mem[320] = stor3.length
    s = 352
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx].field_0:
            if stor3[idx].field_0 == stor3[idx].field_1 < 32:
                revert with 'NH{q', 34
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[idx].field_1) + 32
            mem[_169] = stor3[idx].field_1
            if stor3[idx].field_0:
                if stor3[idx].field_0 == stor3[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor3[idx].field_1:
                    if 31 >= stor3[idx].field_1:
                        mem[_169 + 32] = 256 * stor3[idx].field_8
                    else:
                        mem[0] = sha3(3) + idx
                        mem[_169 + 32] = stor3[idx].field_0
                        t = _169 + 32
                        u = sha3(mem[0])
                        while _169 + stor3[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[idx].field_0 == stor3[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor3[idx].field_1:
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[idx].field_1:
                mem[_169 + 32] = 256 * stor3[idx].field_8
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(3) + idx
            mem[_169 + 32] = stor3[idx].field_0
            t = _169 + 32
            u = sha3(mem[0])
            while _169 + stor3[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _169
            t = t + 32
            u = u + 1
            continue 
        if stor3[idx].field_0 == stor3[idx].field_1 < 32:
            revert with 'NH{q', 34
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[idx].field_1) + 32
        mem[_171] = stor3[idx].field_1
        if stor3[idx].field_0:
            if stor3[idx].field_0 == stor3[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor3[idx].field_1:
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[idx].field_1:
                mem[_171 + 32] = 256 * stor3[idx].field_8
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(3) + idx
            mem[_171 + 32] = stor3[idx].field_0
            t = _171 + 32
            u = sha3(mem[0])
            while _171 + stor3[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _171
            t = t + 32
            u = u + 1
            continue 
        if stor3[idx].field_0 == stor3[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[idx].field_1:
            if 31 >= stor3[idx].field_1:
                mem[_171 + 32] = 256 * stor3[idx].field_8
            else:
                mem[0] = sha3(3) + idx
                mem[_171 + 32] = stor3[idx].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + stor3[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _171
        s = s + 32
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 160
    mem[_167 len 160] = call.data[calldata.size len 160]
    _168 = mem[64]
    mem[64] = mem[64] + 160
    mem[_168 len 160] = call.data[calldata.size len 160]
    _170 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    _176 = mem[64]
    mem[mem[64]] = 20
    mem[64] = mem[64] + 52
    _178 = mem[256]
    mem[_170 + 84 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
    if ceil32(_178) <= _178:
        _329 = mem[_176]
        mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
        if ceil32(_329) <= _329:
            _479 = mem[64]
            mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
            mem[64] = _170 + _178 + _329 + 84
            _487 = mem[_479]
            mem[_170 + _178 + _329 + 116 len ceil32(mem[_479])] = mem[_479 + 32 len ceil32(mem[_479])]
            if ceil32(_487) <= _487:
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _629 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _629 % 21 <= 14:
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _629 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_629 % stor8) + 1
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
            else:
                mem[_170 + _178 + _329 + _487 + 116] = 0
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _642 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _642 % 21 <= 14:
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _642 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_642 % stor8) + 1
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
            return memory
              from _170 + _178 + _329 + _487 + 116
               len 160
        mem[_170 + _178 + _329 + 84] = 0
        _482 = mem[64]
        mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
        mem[64] = _170 + _178 + _329 + 84
        _489 = mem[_482]
        mem[_170 + _178 + _329 + 116 len ceil32(mem[_482])] = mem[_482 + 32 len ceil32(mem[_482])]
        if ceil32(_489) <= _489:
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _632 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _632 % 21 <= 14:
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _632 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_632 % stor8) + 1
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _329 + _489 + 116] = 0
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _646 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _646 % 21 <= 14:
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _646 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_646 % stor8) + 1
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
        return memory
          from _170 + _178 + _329 + _489 + 116
           len 160
    mem[_170 + _178 + 84] = 0
    _330 = mem[_176]
    mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
    if ceil32(_330) <= _330:
        _480 = mem[64]
        mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
        mem[64] = _170 + _178 + _330 + 84
        _488 = mem[_480]
        mem[_170 + _178 + _330 + 116 len ceil32(mem[_480])] = mem[_480 + 32 len ceil32(mem[_480])]
        if ceil32(_488) <= _488:
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _635 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _635 % 21 <= 14:
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _635 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_635 % stor8) + 1
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _330 + _488 + 116] = 0
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _650 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _650 % 21 <= 14:
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _650 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_650 % stor8) + 1
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
        return memory
          from _170 + _178 + _330 + _488 + 116
           len 160
    mem[_170 + _178 + _330 + 84] = 0
    _484 = mem[64]
    mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
    mem[64] = _170 + _178 + _330 + 84
    _490 = mem[_484]
    mem[_170 + _178 + _330 + 116 len ceil32(mem[_484])] = mem[_484 + 32 len ceil32(mem[_484])]
    if ceil32(_490) <= _490:
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _638 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _638 % 21 <= 14:
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _638 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_638 % stor8) + 1
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
    else:
        mem[_170 + _178 + _330 + _490 + 116] = 0
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _654 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _654 % 21 <= 14:
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _654 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_654 % stor8) + 1
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
    return memory
      from _170 + _178 + _330 + _490 + 116
       len 160
}

function chestComponents(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96 len 160] = call.data[calldata.size len 160]
    mem[256] = 5
    mem[288] = 'CHEST'
    mem[64] = (32 * stor1.length) + 352
    mem[320] = stor1.length
    s = 352
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0:
            if stor1[idx].field_0 == stor1[idx].field_1 < 32:
                revert with 'NH{q', 34
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(stor1[idx].field_1) + 32
            mem[_169] = stor1[idx].field_1
            if stor1[idx].field_0:
                if stor1[idx].field_0 == stor1[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor1[idx].field_1:
                    if 31 >= stor1[idx].field_1:
                        mem[_169 + 32] = 256 * stor1[idx].field_8
                    else:
                        mem[0] = sha3(1) + idx
                        mem[_169 + 32] = stor1[idx].field_0
                        t = _169 + 32
                        u = sha3(mem[0])
                        while _169 + stor1[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if stor1[idx].field_0 == stor1[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor1[idx].field_1:
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor1[idx].field_1:
                mem[_169 + 32] = 256 * stor1[idx].field_8
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(1) + idx
            mem[_169 + 32] = stor1[idx].field_0
            t = _169 + 32
            u = sha3(mem[0])
            while _169 + stor1[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _169
            t = t + 32
            u = u + 1
            continue 
        if stor1[idx].field_0 == stor1[idx].field_1 < 32:
            revert with 'NH{q', 34
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(stor1[idx].field_1) + 32
        mem[_171] = stor1[idx].field_1
        if stor1[idx].field_0:
            if stor1[idx].field_0 == stor1[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor1[idx].field_1:
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor1[idx].field_1:
                mem[_171 + 32] = 256 * stor1[idx].field_8
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(1) + idx
            mem[_171 + 32] = stor1[idx].field_0
            t = _171 + 32
            u = sha3(mem[0])
            while _171 + stor1[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _171
            t = t + 32
            u = u + 1
            continue 
        if stor1[idx].field_0 == stor1[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[idx].field_1:
            if 31 >= stor1[idx].field_1:
                mem[_171 + 32] = 256 * stor1[idx].field_8
            else:
                mem[0] = sha3(1) + idx
                mem[_171 + 32] = stor1[idx].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + stor1[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _171
        s = s + 32
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 160
    mem[_167 len 160] = call.data[calldata.size len 160]
    _168 = mem[64]
    mem[64] = mem[64] + 160
    mem[_168 len 160] = call.data[calldata.size len 160]
    _170 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    _176 = mem[64]
    mem[mem[64]] = 20
    mem[64] = mem[64] + 52
    _178 = mem[256]
    mem[_170 + 84 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
    if ceil32(_178) <= _178:
        _329 = mem[_176]
        mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
        if ceil32(_329) <= _329:
            _479 = mem[64]
            mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
            mem[64] = _170 + _178 + _329 + 84
            _487 = mem[_479]
            mem[_170 + _178 + _329 + 116 len ceil32(mem[_479])] = mem[_479 + 32 len ceil32(mem[_479])]
            if ceil32(_487) <= _487:
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _629 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _629 % 21 <= 14:
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _629 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_629 % stor8) + 1
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
            else:
                mem[_170 + _178 + _329 + _487 + 116] = 0
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _642 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _642 % 21 <= 14:
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _642 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_642 % stor8) + 1
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
            return memory
              from _170 + _178 + _329 + _487 + 116
               len 160
        mem[_170 + _178 + _329 + 84] = 0
        _482 = mem[64]
        mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
        mem[64] = _170 + _178 + _329 + 84
        _489 = mem[_482]
        mem[_170 + _178 + _329 + 116 len ceil32(mem[_482])] = mem[_482 + 32 len ceil32(mem[_482])]
        if ceil32(_489) <= _489:
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _632 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _632 % 21 <= 14:
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _632 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_632 % stor8) + 1
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _329 + _489 + 116] = 0
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _646 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _646 % 21 <= 14:
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _646 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_646 % stor8) + 1
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
        return memory
          from _170 + _178 + _329 + _489 + 116
           len 160
    mem[_170 + _178 + 84] = 0
    _330 = mem[_176]
    mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
    if ceil32(_330) <= _330:
        _480 = mem[64]
        mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
        mem[64] = _170 + _178 + _330 + 84
        _488 = mem[_480]
        mem[_170 + _178 + _330 + 116 len ceil32(mem[_480])] = mem[_480 + 32 len ceil32(mem[_480])]
        if ceil32(_488) <= _488:
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _635 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _635 % 21 <= 14:
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _635 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_635 % stor8) + 1
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _330 + _488 + 116] = 0
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _650 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _650 % 21 <= 14:
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _650 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_650 % stor8) + 1
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
        return memory
          from _170 + _178 + _330 + _488 + 116
           len 160
    mem[_170 + _178 + _330 + 84] = 0
    _484 = mem[64]
    mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
    mem[64] = _170 + _178 + _330 + 84
    _490 = mem[_484]
    mem[_170 + _178 + _330 + 116 len ceil32(mem[_484])] = mem[_484 + 32 len ceil32(mem[_484])]
    if ceil32(_490) <= _490:
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _638 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _638 % 21 <= 14:
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _638 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_638 % stor8) + 1
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
    else:
        mem[_170 + _178 + _330 + _490 + 116] = 0
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _654 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _654 % 21 <= 14:
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _654 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_654 % stor8) + 1
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
    return memory
      from _170 + _178 + _330 + _490 + 116
       len 160
}

function weaponComponents(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96 len 160] = call.data[calldata.size len 160]
    mem[256] = 6
    mem[288] = 'WEAPON'
    mem[64] = (32 * stor0.length) + 352
    mem[320] = stor0.length
    s = 352
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0:
            if stor0[idx].field_0 == stor0[idx].field_1 < 32:
                revert with 'NH{q', 34
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[idx].field_1) + 32
            mem[_169] = stor0[idx].field_1
            if stor0[idx].field_0:
                if stor0[idx].field_0 == stor0[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor0[idx].field_1:
                    if 31 >= stor0[idx].field_1:
                        mem[_169 + 32] = 256 * stor0[idx].field_8
                    else:
                        mem[0] = sha3(0) + idx
                        mem[_169 + 32] = stor0[idx].field_0
                        t = _169 + 32
                        u = sha3(mem[0])
                        while _169 + stor0[idx].field_1 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if stor0[idx].field_0 == stor0[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor0[idx].field_1:
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor0[idx].field_1:
                mem[_169 + 32] = 256 * stor0[idx].field_8
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(0) + idx
            mem[_169 + 32] = stor0[idx].field_0
            t = _169 + 32
            u = sha3(mem[0])
            while _169 + stor0[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _169
            t = t + 32
            u = u + 1
            continue 
        if stor0[idx].field_0 == stor0[idx].field_1 < 32:
            revert with 'NH{q', 34
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(stor0[idx].field_1) + 32
        mem[_171] = stor0[idx].field_1
        if stor0[idx].field_0:
            if stor0[idx].field_0 == stor0[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor0[idx].field_1:
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor0[idx].field_1:
                mem[_171 + 32] = 256 * stor0[idx].field_8
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(0) + idx
            mem[_171 + 32] = stor0[idx].field_0
            t = _171 + 32
            u = sha3(mem[0])
            while _171 + stor0[u].field_1 > t:
                mem[t + 32] = stor1[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[t] = _171
            t = t + 32
            u = u + 1
            continue 
        if stor0[idx].field_0 == stor0[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[idx].field_1:
            if 31 >= stor0[idx].field_1:
                mem[_171 + 32] = 256 * stor0[idx].field_8
            else:
                mem[0] = sha3(0) + idx
                mem[_171 + 32] = stor0[idx].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + stor0[idx].field_1 > t:
                    mem[t + 32] = stor1[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[s] = _171
        s = s + 32
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 160
    mem[_167 len 160] = call.data[calldata.size len 160]
    _168 = mem[64]
    mem[64] = mem[64] + 160
    mem[_168 len 160] = call.data[calldata.size len 160]
    _170 = mem[64]
    mem[mem[64] + 32] = address(arg1)
    _176 = mem[64]
    mem[mem[64]] = 20
    mem[64] = mem[64] + 52
    _178 = mem[256]
    mem[_170 + 84 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
    if ceil32(_178) <= _178:
        _329 = mem[_176]
        mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
        if ceil32(_329) <= _329:
            _479 = mem[64]
            mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
            mem[64] = _170 + _178 + _329 + 84
            _487 = mem[_479]
            mem[_170 + _178 + _329 + 116 len ceil32(mem[_479])] = mem[_479 + 32 len ceil32(mem[_479])]
            if ceil32(_487) <= _487:
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _629 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _629 % 21 <= 14:
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _629 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_629 % stor8) + 1
                    if _629 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _629 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_629 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _629 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_629 % stor10) + 1
                        if _629 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_629 % stor8) + 1, (_629 % stor9) + 1, (_629 % stor10) + 1, 1
            else:
                mem[_170 + _178 + _329 + _487 + 116] = 0
                mem[_170 + _178 + _329 + 84] = _487
                mem[64] = _170 + _178 + _329 + _487 + 116
                _642 = sha3(mem[_170 + _178 + _329 + 116 len _487])
                if not mem[320]:
                    revert with 'NH{q', 18
                mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _487]) % mem[320]
                mem[_168 + 32] = 0
                mem[_168 + 64] = 0
                if _642 % 21 <= 14:
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], 0, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
                else:
                    if not stor8:
                        revert with 'NH{q', 18
                    if _642 % stor8 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 32] = (_642 % stor8) + 1
                    if _642 % 21 < 19:
                        mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                    else:
                        if not stor9:
                            revert with 'NH{q', 18
                        if _642 % stor9 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 64] = (_642 % stor9) + 1
                        if not stor10:
                            revert with 'NH{q', 18
                        if _642 % stor10 > -2:
                            revert with 'NH{q', 17
                        mem[_168 + 96] = (_642 % stor10) + 1
                        if _642 % 21 == 19:
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, call.data[calldata.size + 128]
                        else:
                            mem[_168 + 128] = 1
                            mem[_170 + _178 + _329 + _487 + 116 len 160] = mem[_168], (_642 % stor8) + 1, (_642 % stor9) + 1, (_642 % stor10) + 1, 1
            return memory
              from _170 + _178 + _329 + _487 + 116
               len 160
        mem[_170 + _178 + _329 + 84] = 0
        _482 = mem[64]
        mem[mem[64]] = _170 + _178 + _329 + -mem[64] + 52
        mem[64] = _170 + _178 + _329 + 84
        _489 = mem[_482]
        mem[_170 + _178 + _329 + 116 len ceil32(mem[_482])] = mem[_482 + 32 len ceil32(mem[_482])]
        if ceil32(_489) <= _489:
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _632 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _632 % 21 <= 14:
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _632 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_632 % stor8) + 1
                if _632 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _632 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_632 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _632 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_632 % stor10) + 1
                    if _632 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_632 % stor8) + 1, (_632 % stor9) + 1, (_632 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _329 + _489 + 116] = 0
            mem[_170 + _178 + _329 + 84] = _489
            mem[64] = _170 + _178 + _329 + _489 + 116
            _646 = sha3(mem[_170 + _178 + _329 + 116 len _489])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _329 + 116 len _489]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _646 % 21 <= 14:
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], 0, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _646 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_646 % stor8) + 1
                if _646 % 21 < 19:
                    mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _646 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_646 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _646 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_646 % stor10) + 1
                    if _646 % 21 == 19:
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _329 + _489 + 116 len 160] = mem[_168], (_646 % stor8) + 1, (_646 % stor9) + 1, (_646 % stor10) + 1, 1
        return memory
          from _170 + _178 + _329 + _489 + 116
           len 160
    mem[_170 + _178 + 84] = 0
    _330 = mem[_176]
    mem[_170 + _178 + 84 len ceil32(mem[_176])] = mem[_176 + 32 len ceil32(mem[_176])]
    if ceil32(_330) <= _330:
        _480 = mem[64]
        mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
        mem[64] = _170 + _178 + _330 + 84
        _488 = mem[_480]
        mem[_170 + _178 + _330 + 116 len ceil32(mem[_480])] = mem[_480 + 32 len ceil32(mem[_480])]
        if ceil32(_488) <= _488:
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _635 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _635 % 21 <= 14:
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _635 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_635 % stor8) + 1
                if _635 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _635 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_635 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _635 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_635 % stor10) + 1
                    if _635 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_635 % stor8) + 1, (_635 % stor9) + 1, (_635 % stor10) + 1, 1
        else:
            mem[_170 + _178 + _330 + _488 + 116] = 0
            mem[_170 + _178 + _330 + 84] = _488
            mem[64] = _170 + _178 + _330 + _488 + 116
            _650 = sha3(mem[_170 + _178 + _330 + 116 len _488])
            if not mem[320]:
                revert with 'NH{q', 18
            mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _488]) % mem[320]
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            if _650 % 21 <= 14:
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], 0, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
            else:
                if not stor8:
                    revert with 'NH{q', 18
                if _650 % stor8 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 32] = (_650 % stor8) + 1
                if _650 % 21 < 19:
                    mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
                else:
                    if not stor9:
                        revert with 'NH{q', 18
                    if _650 % stor9 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 64] = (_650 % stor9) + 1
                    if not stor10:
                        revert with 'NH{q', 18
                    if _650 % stor10 > -2:
                        revert with 'NH{q', 17
                    mem[_168 + 96] = (_650 % stor10) + 1
                    if _650 % 21 == 19:
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, call.data[calldata.size + 128]
                    else:
                        mem[_168 + 128] = 1
                        mem[_170 + _178 + _330 + _488 + 116 len 160] = mem[_168], (_650 % stor8) + 1, (_650 % stor9) + 1, (_650 % stor10) + 1, 1
        return memory
          from _170 + _178 + _330 + _488 + 116
           len 160
    mem[_170 + _178 + _330 + 84] = 0
    _484 = mem[64]
    mem[mem[64]] = _170 + _178 + _330 + -mem[64] + 52
    mem[64] = _170 + _178 + _330 + 84
    _490 = mem[_484]
    mem[_170 + _178 + _330 + 116 len ceil32(mem[_484])] = mem[_484 + 32 len ceil32(mem[_484])]
    if ceil32(_490) <= _490:
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _638 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _638 % 21 <= 14:
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _638 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_638 % stor8) + 1
            if _638 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _638 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_638 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _638 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_638 % stor10) + 1
                if _638 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_638 % stor8) + 1, (_638 % stor9) + 1, (_638 % stor10) + 1, 1
    else:
        mem[_170 + _178 + _330 + _490 + 116] = 0
        mem[_170 + _178 + _330 + 84] = _490
        mem[64] = _170 + _178 + _330 + _490 + 116
        _654 = sha3(mem[_170 + _178 + _330 + 116 len _490])
        if not mem[320]:
            revert with 'NH{q', 18
        mem[_168] = sha3(mem[_170 + _178 + _330 + 116 len _490]) % mem[320]
        mem[_168 + 32] = 0
        mem[_168 + 64] = 0
        if _654 % 21 <= 14:
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], 0, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
        else:
            if not stor8:
                revert with 'NH{q', 18
            if _654 % stor8 > -2:
                revert with 'NH{q', 17
            mem[_168 + 32] = (_654 % stor8) + 1
            if _654 % 21 < 19:
                mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, 0, call.data[calldata.size + 96 len 64]
            else:
                if not stor9:
                    revert with 'NH{q', 18
                if _654 % stor9 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 64] = (_654 % stor9) + 1
                if not stor10:
                    revert with 'NH{q', 18
                if _654 % stor10 > -2:
                    revert with 'NH{q', 17
                mem[_168 + 96] = (_654 % stor10) + 1
                if _654 % 21 == 19:
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, call.data[calldata.size + 128]
                else:
                    mem[_168 + 128] = 1
                    mem[_170 + _178 + _330 + _490 + 116 len 160] = mem[_168], (_654 % stor8) + 1, (_654 % stor9) + 1, (_654 % stor10) + 1, 1
    return memory
      from _170 + _178 + _330 + _490 + 116
       len 160
}



}
