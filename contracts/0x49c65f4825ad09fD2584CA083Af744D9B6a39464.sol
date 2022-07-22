contract main {




// =====================  Runtime code  =====================


#
#  - getPosition(address arg1, address[] arg2)
#
const name = '', 0


address stor1;
address rewardTokenAddress;

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function isBorrowing(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= 128:
        revert with 0, 'can't be more than 128'
    if arg2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return bool(Mask(256, -2 * arg2, arg1) << -2 * arg2) != 0
}

function isUsingAsCollateralOrBorrowing(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= 128:
        revert with 0, 'can't be more than 128'
    if arg2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return Mask(256, -2 * arg2, arg1) << -2 * arg2 % 4 != 0
}

function isUsingAsCollateral(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= 128:
        revert with 0, 'can't be more than 128'
    if arg2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 1 > !(2 * arg2):
        revert with 0, 17
    return bool(Mask(256, -(2 * arg2) - 1, arg1) << -(2 * arg2) - 1) != 0
}

function getConfig(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.getUserConfiguration(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function getList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xd1946dbc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0xd1946dbc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _5:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}

function getReservesList() payable {
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0xd1946dbc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd1946dbc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _9
    require _8 + (32 * _9) + 32 <= return_data.size
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _9:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _9
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 64
    while idx < _9:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _17 + (32 * _9) + -mem[64] + 64
}

function getConfiguration(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUserConfiguration(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not bool((2 * ceil32(return_data.size)) + 160 <= test266151307()):
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 160] = 0xd1946dbc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd1946dbc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _19 = mem[(4 * ceil32(return_data.size)) + 160]
    require mem[(4 * ceil32(return_data.size)) + 160] <= test266151307()
    require (4 * ceil32(return_data.size)) + return_data.size + 160 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 191
    _20 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 160]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 160] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 160]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 160]) + 161 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 160] + 160]) + 161
    mem[(6 * ceil32(return_data.size)) + 160] = _20
    require _19 + (32 * _20) + 32 <= return_data.size
    s = (4 * ceil32(return_data.size)) + _19 + 192
    t = (6 * ceil32(return_data.size)) + 192
    idx = 0
    while idx < _20:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if _20 > test266151307():
        revert with 0, 65
    _83 = mem[64]
    mem[mem[64]] = _20
    if not _20:
        if _20 > test266151307():
            revert with 0, 65
        _85 = mem[64] + (32 * _20) + 32
        mem[mem[64] + (32 * _20) + 32] = _20
        mem[64] = mem[64] + (64 * _20) + 64
        if not _20:
            idx = 0
            while idx < _20:
                if idx >= 128:
                    revert with 0, 'can't be more than 128'
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if Mask(256, -2 * idx, ext_call.return_data[0]) >> 2 * idx % 4 != 0:
                    if idx >= 128:
                        revert with 0, 'can't be more than 128'
                    if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * idx):
                        revert with 0, 17
                    if idx >= mem[_83]:
                        revert with 0, 50
                    if bool(Mask(256, -(2 * idx) - 1, ext_call.return_data[0]) >> (2 * idx) + 1) != 0:
                        mem[(32 * idx) + _83 + 32] = 1
                    else:
                        mem[(32 * idx) + _83 + 32] = 0
                    if idx >= 128:
                        revert with 0, 'can't be more than 128'
                    if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if idx >= mem[_85]:
                        revert with 0, 50
                    if bool(Mask(256, -2 * idx, ext_call.return_data[0]) >> 2 * idx) != 0:
                        mem[(32 * idx) + _85 + 32] = 1
                    else:
                        mem[(32 * idx) + _85 + 32] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _144 = mem[64]
            mem[mem[64]] = 64
            _152 = mem[_83]
            mem[mem[64] + 64] = mem[_83]
            idx = 0
            s = _83 + 32
            t = mem[64] + 96
            while idx < _152:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_144 + 32] = (32 * _152) + 96
            _228 = mem[_85]
            mem[_144 + (32 * _152) + 96] = mem[_85]
            idx = 0
            s = _85 + 32
            t = _144 + (32 * _152) + 128
            while idx < _228:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _144 + (32 * _152) + (32 * _228) + -mem[64] + 128
        mem[_85 + 32 len 32 * _20] = call.data[calldata.size len 32 * _20]
        idx = 0
        while idx < _20:
            if idx >= 128:
                revert with 0, 'can't be more than 128'
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(256, -2 * idx, ext_call.return_data[0]) >> 2 * idx % 4 != 0:
                if idx >= 128:
                    revert with 0, 'can't be more than 128'
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if idx >= mem[_83]:
                    revert with 0, 50
                if bool(Mask(256, -(2 * idx) - 1, ext_call.return_data[0]) >> (2 * idx) + 1) != 0:
                    mem[(32 * idx) + _83 + 32] = 1
                else:
                    mem[(32 * idx) + _83 + 32] = 0
                if idx >= 128:
                    revert with 0, 'can't be more than 128'
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if idx >= mem[_85]:
                    revert with 0, 50
                if bool(Mask(256, -2 * idx, ext_call.return_data[0]) >> 2 * idx) != 0:
                    mem[(32 * idx) + _85 + 32] = 1
                else:
                    mem[(32 * idx) + _85 + 32] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _145 = mem[64]
        mem[mem[64]] = 64
        _153 = mem[_83]
        mem[mem[64] + 64] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 96
        while idx < _153:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_145 + 32] = (32 * _153) + 96
        _229 = mem[_85]
        mem[_145 + (32 * _153) + 96] = mem[_85]
        idx = 0
        s = _85 + 32
        t = _145 + (32 * _153) + 128
        while idx < _229:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _145 + (32 * _153) + (32 * _229) + -mem[64] + 128
    mem[mem[64] + 32 len 32 * _20] = call.data[calldata.size len 32 * _20]
    if _20 > test266151307():
        revert with 0, 65
    mem[mem[64] + (32 * _20) + 32] = _20
    mem[64] = mem[64] + (64 * _20) + 64
    if not _20:
        idx = 0
        while idx < _20:
            if idx >= 128:
                revert with 0, 'can't be more than 128'
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if Mask(256, -2 * idx, ext_call.return_data[0]) >> 2 * idx % 4 != 0:
                if idx >= 128:
                    revert with 0, 'can't be more than 128'
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if idx >= mem[_83]:
                    revert with 0, 50
                if bool(Mask(256, -(2 * idx) - 1, ext_call.return_data[0]) >> (2 * idx) + 1) != 0:
                    mem[(32 * idx) + _83 + 32] = 1
                else:
                    mem[(32 * idx) + _83 + 32] = 0
                if idx >= 128:
                    revert with 0, 'can't be more than 128'
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if idx >= mem[_83 + (32 * _20) + 32]:
                    revert with 0, 50
                if bool(Mask(256, -2 * idx, ext_call.return_data[0]) >> 2 * idx) != 0:
                    mem[(32 * idx) + _83 + (32 * _20) + 64] = 1
                else:
                    mem[(32 * idx) + _83 + (32 * _20) + 64] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _146 = mem[64]
        mem[mem[64]] = 64
        _154 = mem[_83]
        mem[mem[64] + 64] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 96
        while idx < _154:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_146 + 32] = (32 * _154) + 96
        _230 = mem[_83 + (32 * _20) + 32]
        mem[_146 + (32 * _154) + 96] = mem[_83 + (32 * _20) + 32]
        idx = 0
        s = _83 + (32 * _20) + 64
        t = _146 + (32 * _154) + 128
        while idx < _230:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _146 + (32 * _154) + (32 * _230) + -mem[64] + 128
    mem[_83 + (32 * _20) + 64 len 32 * _20] = call.data[calldata.size len 32 * _20]
    idx = 0
    while idx < _20:
        if idx >= 128:
            revert with 0, 'can't be more than 128'
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if Mask(256, -2 * idx, ext_call.return_data[0]) >> 2 * idx % 4 != 0:
            if idx >= 128:
                revert with 0, 'can't be more than 128'
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * idx):
                revert with 0, 17
            if idx >= mem[_83]:
                revert with 0, 50
            if bool(Mask(256, -(2 * idx) - 1, ext_call.return_data[0]) >> (2 * idx) + 1) != 0:
                mem[(32 * idx) + _83 + 32] = 1
            else:
                mem[(32 * idx) + _83 + 32] = 0
            if idx >= 128:
                revert with 0, 'can't be more than 128'
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if idx >= mem[_83 + (32 * _20) + 32]:
                revert with 0, 50
            if bool(Mask(256, -2 * idx, ext_call.return_data[0]) >> 2 * idx) != 0:
                mem[(32 * idx) + _83 + (32 * _20) + 64] = 1
            else:
                mem[(32 * idx) + _83 + (32 * _20) + 64] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _147 = mem[64]
    mem[mem[64]] = 64
    _155 = mem[_83]
    mem[mem[64] + 64] = mem[_83]
    idx = 0
    s = _83 + 32
    t = mem[64] + 96
    while idx < _155:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_147 + 32] = (32 * _155) + 96
    _231 = mem[_83 + (32 * _20) + 32]
    mem[_147 + (32 * _155) + 96] = mem[_83 + (32 * _20) + 32]
    idx = 0
    s = _83 + (32 * _20) + 64
    t = _147 + (32 * _155) + 128
    while idx < _231:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _147 + (32 * _155) + (32 * _231) + -mem[64] + 128
}



}
