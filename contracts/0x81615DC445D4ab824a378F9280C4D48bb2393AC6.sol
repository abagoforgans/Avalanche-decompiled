contract main {




// =====================  Runtime code  =====================


#
#  - sub_36e16a06(?)
#  - sub_7cbf2149(?)
#  - sub_89ba4bbf(?)
#
uint256 stor2;
uint256 stor4;
array of struct stor5;

function _fallback() payable {
    revert
}

function sub(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < arg2:
        revert with 'NH{q', 17
    if arg1 - arg2 > arg1:
        revert with 0, 'ds-math-sub-underflow'
    return (arg1 - arg2)
}

function add(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 < arg1:
        revert with 0, 'ds-math-add-overflow'
    return (arg1 + arg2)
}

function mul(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        return 0
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg1 * arg2 / arg2 != arg1:
        revert with 0, 'ds-math-mul-overflow'
    return (arg1 * arg2)
}

function sqrt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 3:
        if not arg1:
            return 0
        return 1
    if arg1 / 2 > -2:
        revert with 'NH{q', 17
    s = (arg1 / 2) + 1
    t = arg1
    while s < t:
        if not s:
            revert with 'NH{q', 18
        if arg1 / s > -s - 1:
            revert with 'NH{q', 17
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    return address(arg2), arg1
}

function sub_86bf92f7(?) payable {
    require stor4 >= 2 * 10^16
    if stor5.length != 2:
        if stor5.length > test266151307():
            revert with 'NH{q', 65
        mem[96] = stor5.length
        mem[64] = (32 * stor5.length) + 128
        if not stor5.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor5.length:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                if address(s) != stor5[idx].field_1280:
                    if address(s) != stor5[idx].field_1536:
                        _442 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_442] = address(s)
                        mem[_442 + 32] = 0
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[_442 + 64] = stor5[idx].field_256
                        mem[_442 + 96] = stor5[idx].field_0
                        mem[_442 + 128] = stor5[idx].field_1024
                        mem[0] = 5
                        mem[_442 + 160] = stor5[idx].field_1792
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _442
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    _463 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_463] = address(s)
                    mem[_463 + 32] = stor5[idx].field_1280
                    mem[_463 + 64] = stor5[idx].field_256
                    mem[_463 + 96] = stor5[idx].field_0
                    mem[_463 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_463 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _463
                else:
                    if address(s) != stor5[idx].field_1536:
                        _464 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_464] = address(s)
                        mem[_464 + 32] = stor5[idx].field_1536
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[_464 + 64] = stor5[idx].field_256
                        mem[_464 + 96] = stor5[idx].field_0
                        mem[_464 + 128] = stor5[idx].field_1024
                        mem[0] = 5
                        mem[_464 + 160] = stor5[idx].field_1792
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _464
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor5[idx].field_1536
                        continue 
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    _511 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_511] = address(s)
                    mem[_511 + 32] = stor5[idx].field_1280
                    mem[_511 + 64] = stor5[idx].field_256
                    mem[_511 + 96] = stor5[idx].field_0
                    mem[_511 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_511 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _511
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor5[idx].field_1280
                continue 
            _422 = mem[64]
            mem[mem[64]] = stor2
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _677 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _677:
                _827 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_827 + 44 len 20]
                mem[t + 64] = mem[_827 + 76 len 20]
                mem[t + 96] = mem[_827 + 108 len 20]
                mem[t + 128] = mem[_827 + 128]
                mem[t + 160] = mem[_827 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _422 + (192 * _677) + -mem[64] + 128
        mem[64] = (32 * stor5.length) + 320
        mem[(32 * stor5.length) + 128] = 0
        mem[(32 * stor5.length) + 160] = 0
        mem[(32 * stor5.length) + 192] = 0
        mem[(32 * stor5.length) + 224] = 0
        mem[(32 * stor5.length) + 256] = 0
        mem[(32 * stor5.length) + 288] = 0
        mem[var10001] = (32 * stor5.length) + 128
        s = var10001
        idx = var10002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(32 * stor5.length) + 128] = 0
            mem[(32 * stor5.length) + 160] = 0
            mem[(32 * stor5.length) + 192] = 0
            mem[(32 * stor5.length) + 224] = 0
            mem[(32 * stor5.length) + 256] = 0
            mem[(32 * stor5.length) + 288] = 0
            mem[s + 32] = (32 * stor5.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor5.length:
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = 5
            if address(s) != stor5[idx].field_1280:
                if address(s) != stor5[idx].field_1536:
                    _1087 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1087] = address(s)
                    mem[_1087 + 32] = 0
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[_1087 + 64] = stor5[idx].field_256
                    mem[_1087 + 96] = stor5[idx].field_0
                    mem[_1087 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_1087 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1087
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                _1108 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1108] = address(s)
                mem[_1108 + 32] = stor5[idx].field_1280
                mem[_1108 + 64] = stor5[idx].field_256
                mem[_1108 + 96] = stor5[idx].field_0
                mem[_1108 + 128] = stor5[idx].field_1024
                mem[0] = 5
                mem[_1108 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1108
            else:
                if address(s) != stor5[idx].field_1536:
                    _1109 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1109] = address(s)
                    mem[_1109 + 32] = stor5[idx].field_1536
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[_1109 + 64] = stor5[idx].field_256
                    mem[_1109 + 96] = stor5[idx].field_0
                    mem[_1109 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_1109 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1109
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor5[idx].field_1536
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                _1146 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1146] = address(s)
                mem[_1146 + 32] = stor5[idx].field_1280
                mem[_1146 + 64] = stor5[idx].field_256
                mem[_1146 + 96] = stor5[idx].field_0
                mem[_1146 + 128] = stor5[idx].field_1024
                mem[0] = 5
                mem[_1146 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1146
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor5[idx].field_1280
            continue 
        _1067 = mem[64]
        mem[mem[64]] = stor2
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _1222 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _1222:
            _1267 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1267 + 44 len 20]
            mem[t + 64] = mem[_1267 + 76 len 20]
            mem[t + 96] = mem[_1267 + 108 len 20]
            mem[t + 128] = mem[_1267 + 128]
            mem[t + 160] = mem[_1267 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _1067 + (192 * _1222) + -mem[64] + 128
    if 0 >= stor5.length:
        revert with 'NH{q', 50
    if address(stor5.field_256) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa:
        if 0 >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = 5
        if address(stor5.field_256) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
            if stor5.length > test266151307():
                revert with 'NH{q', 65
            mem[96] = stor5.length
            mem[64] = (32 * stor5.length) + 128
            if not stor5.length:
                idx = 0
                s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                while idx < stor5.length:
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    if address(s) != stor5[idx].field_1280:
                        if address(s) != stor5[idx].field_1536:
                            _443 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_443] = address(s)
                            mem[_443 + 32] = 0
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[_443 + 64] = stor5[idx].field_256
                            mem[_443 + 96] = stor5[idx].field_0
                            mem[_443 + 128] = stor5[idx].field_1024
                            mem[0] = 5
                            mem[_443 + 160] = stor5[idx].field_1792
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _443
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            continue 
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        _468 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_468] = address(s)
                        mem[_468 + 32] = stor5[idx].field_1280
                        mem[_468 + 64] = stor5[idx].field_256
                        mem[_468 + 96] = stor5[idx].field_0
                        mem[_468 + 128] = stor5[idx].field_1024
                        mem[0] = 5
                        mem[_468 + 160] = stor5[idx].field_1792
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _468
                    else:
                        if address(s) != stor5[idx].field_1536:
                            _469 = mem[64]
                            mem[64] = mem[64] + 192
                            mem[_469] = address(s)
                            mem[_469 + 32] = stor5[idx].field_1536
                            if idx >= stor5.length:
                                revert with 'NH{q', 50
                            mem[_469 + 64] = stor5[idx].field_256
                            mem[_469 + 96] = stor5[idx].field_0
                            mem[_469 + 128] = stor5[idx].field_1024
                            mem[0] = 5
                            mem[_469 + 160] = stor5[idx].field_1792
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _469
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor5[idx].field_1536
                            continue 
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        _518 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_518] = address(s)
                        mem[_518 + 32] = stor5[idx].field_1280
                        mem[_518 + 64] = stor5[idx].field_256
                        mem[_518 + 96] = stor5[idx].field_0
                        mem[_518 + 128] = stor5[idx].field_1024
                        mem[0] = 5
                        mem[_518 + 160] = stor5[idx].field_1792
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _518
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor5[idx].field_1280
                    continue 
                _424 = mem[64]
                mem[mem[64]] = stor2
                mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[mem[64] + 64] = 96
                _681 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _681:
                    _828 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_828 + 44 len 20]
                    mem[t + 64] = mem[_828 + 76 len 20]
                    mem[t + 96] = mem[_828 + 108 len 20]
                    mem[t + 128] = mem[_828 + 128]
                    mem[t + 160] = mem[_828 + 160]
                    idx = idx + 1
                    s = s + 32
                    t = t + 192
                    continue 
                return memory
                  from mem[64]
                   len _424 + (192 * _681) + -mem[64] + 128
            mem[64] = (32 * stor5.length) + 320
            mem[(32 * stor5.length) + 128] = 0
            mem[(32 * stor5.length) + 160] = 0
            mem[(32 * stor5.length) + 192] = 0
            mem[(32 * stor5.length) + 224] = 0
            mem[(32 * stor5.length) + 256] = 0
            mem[(32 * stor5.length) + 288] = 0
            mem[var17001] = (32 * stor5.length) + 128
            s = var17001
            idx = var17002
            while idx - 1:
                mem[64] = mem[64] + 192
                mem[(32 * stor5.length) + 128] = 0
                mem[(32 * stor5.length) + 160] = 0
                mem[(32 * stor5.length) + 192] = 0
                mem[(32 * stor5.length) + 224] = 0
                mem[(32 * stor5.length) + 256] = 0
                mem[(32 * stor5.length) + 288] = 0
                mem[s + 32] = (32 * stor5.length) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor5.length:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                if address(s) != stor5[idx].field_1280:
                    if address(s) != stor5[idx].field_1536:
                        _1088 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1088] = address(s)
                        mem[_1088 + 32] = 0
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[_1088 + 64] = stor5[idx].field_256
                        mem[_1088 + 96] = stor5[idx].field_0
                        mem[_1088 + 128] = stor5[idx].field_1024
                        mem[0] = 5
                        mem[_1088 + 160] = stor5[idx].field_1792
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1088
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    _1111 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1111] = address(s)
                    mem[_1111 + 32] = stor5[idx].field_1280
                    mem[_1111 + 64] = stor5[idx].field_256
                    mem[_1111 + 96] = stor5[idx].field_0
                    mem[_1111 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_1111 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1111
                else:
                    if address(s) != stor5[idx].field_1536:
                        _1112 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1112] = address(s)
                        mem[_1112 + 32] = stor5[idx].field_1536
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[_1112 + 64] = stor5[idx].field_256
                        mem[_1112 + 96] = stor5[idx].field_0
                        mem[_1112 + 128] = stor5[idx].field_1024
                        mem[0] = 5
                        mem[_1112 + 160] = stor5[idx].field_1792
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1112
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor5[idx].field_1536
                        continue 
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    _1151 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1151] = address(s)
                    mem[_1151 + 32] = stor5[idx].field_1280
                    mem[_1151 + 64] = stor5[idx].field_256
                    mem[_1151 + 96] = stor5[idx].field_0
                    mem[_1151 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_1151 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1151
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor5[idx].field_1280
                continue 
            _1069 = mem[64]
            mem[mem[64]] = stor2
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _1223 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _1223:
                _1268 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1268 + 44 len 20]
                mem[t + 64] = mem[_1268 + 76 len 20]
                mem[t + 96] = mem[_1268 + 108 len 20]
                mem[t + 128] = mem[_1268 + 128]
                mem[t + 160] = mem[_1268 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _1069 + (192 * _1223) + -mem[64] + 128
        if 1 >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = 5
        require address(stor5.field_2304) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
        if stor5.length > test266151307():
            revert with 'NH{q', 65
        mem[96] = stor5.length
        mem[64] = (32 * stor5.length) + 128
        if not stor5.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor5.length:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                if address(s) != stor5[idx].field_1280:
                    if address(s) != stor5[idx].field_1536:
                        _444 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_444] = address(s)
                        mem[_444 + 32] = 0
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[_444 + 64] = stor5[idx].field_256
                        mem[_444 + 96] = stor5[idx].field_0
                        mem[_444 + 128] = stor5[idx].field_1024
                        mem[0] = 5
                        mem[_444 + 160] = stor5[idx].field_1792
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _444
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    _473 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_473] = address(s)
                    mem[_473 + 32] = stor5[idx].field_1280
                    mem[_473 + 64] = stor5[idx].field_256
                    mem[_473 + 96] = stor5[idx].field_0
                    mem[_473 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_473 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _473
                else:
                    if address(s) != stor5[idx].field_1536:
                        _474 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_474] = address(s)
                        mem[_474 + 32] = stor5[idx].field_1536
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[_474 + 64] = stor5[idx].field_256
                        mem[_474 + 96] = stor5[idx].field_0
                        mem[_474 + 128] = stor5[idx].field_1024
                        mem[0] = 5
                        mem[_474 + 160] = stor5[idx].field_1792
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _474
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor5[idx].field_1536
                        continue 
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    _525 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_525] = address(s)
                    mem[_525 + 32] = stor5[idx].field_1280
                    mem[_525 + 64] = stor5[idx].field_256
                    mem[_525 + 96] = stor5[idx].field_0
                    mem[_525 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_525 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _525
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor5[idx].field_1280
                continue 
            _426 = mem[64]
            mem[mem[64]] = stor2
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _685 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _685:
                _829 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_829 + 44 len 20]
                mem[t + 64] = mem[_829 + 76 len 20]
                mem[t + 96] = mem[_829 + 108 len 20]
                mem[t + 128] = mem[_829 + 128]
                mem[t + 160] = mem[_829 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _426 + (192 * _685) + -mem[64] + 128
        mem[64] = (32 * stor5.length) + 320
        mem[(32 * stor5.length) + 128] = 0
        mem[(32 * stor5.length) + 160] = 0
        mem[(32 * stor5.length) + 192] = 0
        mem[(32 * stor5.length) + 224] = 0
        mem[(32 * stor5.length) + 256] = 0
        mem[(32 * stor5.length) + 288] = 0
        mem[var19001] = (32 * stor5.length) + 128
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(32 * stor5.length) + 128] = 0
            mem[(32 * stor5.length) + 160] = 0
            mem[(32 * stor5.length) + 192] = 0
            mem[(32 * stor5.length) + 224] = 0
            mem[(32 * stor5.length) + 256] = 0
            mem[(32 * stor5.length) + 288] = 0
            mem[s + 32] = (32 * stor5.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor5.length:
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = 5
            if address(s) != stor5[idx].field_1280:
                if address(s) != stor5[idx].field_1536:
                    _1089 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1089] = address(s)
                    mem[_1089 + 32] = 0
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[_1089 + 64] = stor5[idx].field_256
                    mem[_1089 + 96] = stor5[idx].field_0
                    mem[_1089 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_1089 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1089
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                _1114 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1114] = address(s)
                mem[_1114 + 32] = stor5[idx].field_1280
                mem[_1114 + 64] = stor5[idx].field_256
                mem[_1114 + 96] = stor5[idx].field_0
                mem[_1114 + 128] = stor5[idx].field_1024
                mem[0] = 5
                mem[_1114 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1114
            else:
                if address(s) != stor5[idx].field_1536:
                    _1115 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1115] = address(s)
                    mem[_1115 + 32] = stor5[idx].field_1536
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[_1115 + 64] = stor5[idx].field_256
                    mem[_1115 + 96] = stor5[idx].field_0
                    mem[_1115 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_1115 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1115
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor5[idx].field_1536
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                _1156 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1156] = address(s)
                mem[_1156 + 32] = stor5[idx].field_1280
                mem[_1156 + 64] = stor5[idx].field_256
                mem[_1156 + 96] = stor5[idx].field_0
                mem[_1156 + 128] = stor5[idx].field_1024
                mem[0] = 5
                mem[_1156 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1156
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor5[idx].field_1280
            continue 
        _1071 = mem[64]
        mem[mem[64]] = stor2
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _1224 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _1224:
            _1269 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1269 + 44 len 20]
            mem[t + 64] = mem[_1269 + 76 len 20]
            mem[t + 96] = mem[_1269 + 108 len 20]
            mem[t + 128] = mem[_1269 + 128]
            mem[t + 160] = mem[_1269 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _1071 + (192 * _1224) + -mem[64] + 128
    if 1 >= stor5.length:
        revert with 'NH{q', 50
    require address(stor5.field_2304) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3
    if 0 >= stor5.length:
        revert with 'NH{q', 50
    mem[0] = 5
    if address(stor5.field_256) != 0x8c28394ed230cd6caf0daa0e51680fd57826dee3:
        if stor5.length > test266151307():
            revert with 'NH{q', 65
        mem[96] = stor5.length
        mem[64] = (32 * stor5.length) + 128
        if not stor5.length:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < stor5.length:
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                if address(s) != stor5[idx].field_1280:
                    if address(s) != stor5[idx].field_1536:
                        _445 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_445] = address(s)
                        mem[_445 + 32] = 0
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[_445 + 64] = stor5[idx].field_256
                        mem[_445 + 96] = stor5[idx].field_0
                        mem[_445 + 128] = stor5[idx].field_1024
                        mem[0] = 5
                        mem[_445 + 160] = stor5[idx].field_1792
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _445
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        continue 
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    _478 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_478] = address(s)
                    mem[_478 + 32] = stor5[idx].field_1280
                    mem[_478 + 64] = stor5[idx].field_256
                    mem[_478 + 96] = stor5[idx].field_0
                    mem[_478 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_478 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _478
                else:
                    if address(s) != stor5[idx].field_1536:
                        _479 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_479] = address(s)
                        mem[_479 + 32] = stor5[idx].field_1536
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[_479 + 64] = stor5[idx].field_256
                        mem[_479 + 96] = stor5[idx].field_0
                        mem[_479 + 128] = stor5[idx].field_1024
                        mem[0] = 5
                        mem[_479 + 160] = stor5[idx].field_1792
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor5[idx].field_1536
                        continue 
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[0] = 5
                    _532 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_532] = address(s)
                    mem[_532 + 32] = stor5[idx].field_1280
                    mem[_532 + 64] = stor5[idx].field_256
                    mem[_532 + 96] = stor5[idx].field_0
                    mem[_532 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_532 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _532
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor5[idx].field_1280
                continue 
            _428 = mem[64]
            mem[mem[64]] = stor2
            mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 64] = 96
            _689 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _689:
                _830 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_830 + 44 len 20]
                mem[t + 64] = mem[_830 + 76 len 20]
                mem[t + 96] = mem[_830 + 108 len 20]
                mem[t + 128] = mem[_830 + 128]
                mem[t + 160] = mem[_830 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _428 + (192 * _689) + -mem[64] + 128
        mem[64] = (32 * stor5.length) + 320
        mem[(32 * stor5.length) + 128] = 0
        mem[(32 * stor5.length) + 160] = 0
        mem[(32 * stor5.length) + 192] = 0
        mem[(32 * stor5.length) + 224] = 0
        mem[(32 * stor5.length) + 256] = 0
        mem[(32 * stor5.length) + 288] = 0
        mem[var19001] = (32 * stor5.length) + 128
        s = var19001
        idx = var19002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(32 * stor5.length) + 128] = 0
            mem[(32 * stor5.length) + 160] = 0
            mem[(32 * stor5.length) + 192] = 0
            mem[(32 * stor5.length) + 224] = 0
            mem[(32 * stor5.length) + 256] = 0
            mem[(32 * stor5.length) + 288] = 0
            mem[s + 32] = (32 * stor5.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor5.length:
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = 5
            if address(s) != stor5[idx].field_1280:
                if address(s) != stor5[idx].field_1536:
                    _1090 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1090] = address(s)
                    mem[_1090 + 32] = 0
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[_1090 + 64] = stor5[idx].field_256
                    mem[_1090 + 96] = stor5[idx].field_0
                    mem[_1090 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_1090 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1090
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                _1117 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1117] = address(s)
                mem[_1117 + 32] = stor5[idx].field_1280
                mem[_1117 + 64] = stor5[idx].field_256
                mem[_1117 + 96] = stor5[idx].field_0
                mem[_1117 + 128] = stor5[idx].field_1024
                mem[0] = 5
                mem[_1117 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1117
            else:
                if address(s) != stor5[idx].field_1536:
                    _1118 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1118] = address(s)
                    mem[_1118 + 32] = stor5[idx].field_1536
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[_1118 + 64] = stor5[idx].field_256
                    mem[_1118 + 96] = stor5[idx].field_0
                    mem[_1118 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_1118 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1118
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor5[idx].field_1536
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                _1161 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1161] = address(s)
                mem[_1161 + 32] = stor5[idx].field_1280
                mem[_1161 + 64] = stor5[idx].field_256
                mem[_1161 + 96] = stor5[idx].field_0
                mem[_1161 + 128] = stor5[idx].field_1024
                mem[0] = 5
                mem[_1161 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1161
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor5[idx].field_1280
            continue 
        _1073 = mem[64]
        mem[mem[64]] = stor2
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _1225 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _1225:
            _1270 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1270 + 44 len 20]
            mem[t + 64] = mem[_1270 + 76 len 20]
            mem[t + 96] = mem[_1270 + 108 len 20]
            mem[t + 128] = mem[_1270 + 128]
            mem[t + 160] = mem[_1270 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _1073 + (192 * _1225) + -mem[64] + 128
    if 1 >= stor5.length:
        revert with 'NH{q', 50
    mem[0] = 5
    require address(stor5.field_2304) != 0x4a2cb99e8d91f82cf10fb97d43745a1f23e47caa
    if stor5.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor5.length
    mem[64] = (32 * stor5.length) + 128
    if not stor5.length:
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < stor5.length:
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = 5
            if address(s) != stor5[idx].field_1280:
                if address(s) != stor5[idx].field_1536:
                    _446 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_446] = address(s)
                    mem[_446 + 32] = 0
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[_446 + 64] = stor5[idx].field_256
                    mem[_446 + 96] = stor5[idx].field_0
                    mem[_446 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_446 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _446
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                _483 = mem[64]
                mem[64] = mem[64] + 192
                mem[_483] = address(s)
                mem[_483 + 32] = stor5[idx].field_1280
                mem[_483 + 64] = stor5[idx].field_256
                mem[_483 + 96] = stor5[idx].field_0
                mem[_483 + 128] = stor5[idx].field_1024
                mem[0] = 5
                mem[_483 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _483
            else:
                if address(s) != stor5[idx].field_1536:
                    _484 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_484] = address(s)
                    mem[_484 + 32] = stor5[idx].field_1536
                    if idx >= stor5.length:
                        revert with 'NH{q', 50
                    mem[_484 + 64] = stor5[idx].field_256
                    mem[_484 + 96] = stor5[idx].field_0
                    mem[_484 + 128] = stor5[idx].field_1024
                    mem[0] = 5
                    mem[_484 + 160] = stor5[idx].field_1792
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _484
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor5[idx].field_1536
                    continue 
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[0] = 5
                _539 = mem[64]
                mem[64] = mem[64] + 192
                mem[_539] = address(s)
                mem[_539 + 32] = stor5[idx].field_1280
                mem[_539 + 64] = stor5[idx].field_256
                mem[_539 + 96] = stor5[idx].field_0
                mem[_539 + 128] = stor5[idx].field_1024
                mem[0] = 5
                mem[_539 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _539
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor5[idx].field_1280
            continue 
        _430 = mem[64]
        mem[mem[64]] = stor2
        mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 64] = 96
        _693 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _693:
            _831 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_831 + 44 len 20]
            mem[t + 64] = mem[_831 + 76 len 20]
            mem[t + 96] = mem[_831 + 108 len 20]
            mem[t + 128] = mem[_831 + 128]
            mem[t + 160] = mem[_831 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _430 + (192 * _693) + -mem[64] + 128
    mem[64] = (32 * stor5.length) + 320
    mem[(32 * stor5.length) + 128] = 0
    mem[(32 * stor5.length) + 160] = 0
    mem[(32 * stor5.length) + 192] = 0
    mem[(32 * stor5.length) + 224] = 0
    mem[(32 * stor5.length) + 256] = 0
    mem[(32 * stor5.length) + 288] = 0
    mem[var21001] = (32 * stor5.length) + 128
    s = var21001
    idx = var21002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * stor5.length) + 128] = 0
        mem[(32 * stor5.length) + 160] = 0
        mem[(32 * stor5.length) + 192] = 0
        mem[(32 * stor5.length) + 224] = 0
        mem[(32 * stor5.length) + 256] = 0
        mem[(32 * stor5.length) + 288] = 0
        mem[s + 32] = (32 * stor5.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    while idx < stor5.length:
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = 5
        if address(s) != stor5[idx].field_1280:
            if address(s) != stor5[idx].field_1536:
                _1091 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1091] = address(s)
                mem[_1091 + 32] = 0
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[_1091 + 64] = stor5[idx].field_256
                mem[_1091 + 96] = stor5[idx].field_0
                mem[_1091 + 128] = stor5[idx].field_1024
                mem[0] = 5
                mem[_1091 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1091
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                continue 
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = 5
            _1120 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1120] = address(s)
            mem[_1120 + 32] = stor5[idx].field_1280
            mem[_1120 + 64] = stor5[idx].field_256
            mem[_1120 + 96] = stor5[idx].field_0
            mem[_1120 + 128] = stor5[idx].field_1024
            mem[0] = 5
            mem[_1120 + 160] = stor5[idx].field_1792
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _1120
        else:
            if address(s) != stor5[idx].field_1536:
                _1121 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1121] = address(s)
                mem[_1121 + 32] = stor5[idx].field_1536
                if idx >= stor5.length:
                    revert with 'NH{q', 50
                mem[_1121 + 64] = stor5[idx].field_256
                mem[_1121 + 96] = stor5[idx].field_0
                mem[_1121 + 128] = stor5[idx].field_1024
                mem[0] = 5
                mem[_1121 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1121
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor5[idx].field_1536
                continue 
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = 5
            _1166 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1166] = address(s)
            mem[_1166 + 32] = stor5[idx].field_1280
            mem[_1166 + 64] = stor5[idx].field_256
            mem[_1166 + 96] = stor5[idx].field_0
            mem[_1166 + 128] = stor5[idx].field_1024
            mem[0] = 5
            mem[_1166 + 160] = stor5[idx].field_1792
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _1166
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor5[idx].field_1280
        continue 
    _1075 = mem[64]
    mem[mem[64]] = stor2
    mem[mem[64] + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 64] = 96
    _1226 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _1226:
        _1271 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1271 + 44 len 20]
        mem[t + 64] = mem[_1271 + 76 len 20]
        mem[t + 96] = mem[_1271 + 108 len 20]
        mem[t + 128] = mem[_1271 + 128]
        mem[t + 160] = mem[_1271 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _1075 + (192 * _1226) + -mem[64] + 128
}



}
