contract main {




// =====================  Runtime code  =====================


#
#  - sub_09756dfc(?)
#  - sub_6f4dcb7e(?)
#
function _fallback() payable {
    revert
}

function sub_fd8ac6be(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).joetroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return address(arg1), ext_call.return_data[0]
}

function sub_54781336(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if uint8(arg1) > 1:
        revert with 0, 'rewardType is invalid'
    if uint8(arg1):
        if 1 == uint8(arg1):
            require ext_code.size(address(arg2))
            call address(arg2).claimReward(uint8 arg1, address arg2) with:
                 gas gas_remaining wei
                args 1, address(arg4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(arg4) > eth.balance(arg4):
                revert with 0, '', 0
    else:
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg2))
        call address(arg2).claimReward(uint8 arg1, address arg2) with:
             gas gas_remaining wei
            args 0, address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, '', 0
    return 0
}

function getAccountLimits(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    require ext_code.size(arg1)
    staticcall arg1.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg2
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require 0 == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 288] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getAssetsIn(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _11 = mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64
    require mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 319 < ceil32(return_data.size) + return_data.size + 288
    _12 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 320 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 320
    mem[(2 * ceil32(return_data.size)) + 288] = _12
    require _11 + (32 * _12) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _11 + 320
    t = (2 * ceil32(return_data.size)) + 320
    while idx < _12:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 192] = (2 * ceil32(return_data.size)) + 288
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    mem[mem[64] + 128] = _12
    idx = 0
    s = (2 * ceil32(return_data.size)) + 320
    t = mem[64] + 160
    while idx < _12:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len (32 * _12) + 160
}

function sub_5bd58c6a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _53 = mem[64]
            mem[64] = mem[64] + 64
            mem[_53] = 0
            mem[_53 + 32] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).joetroller() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_60] == mem[_60 + 12 len 20]
            require ext_code.size(mem[_60 + 12 len 20])
            staticcall mem[_60 + 12 len 20].oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _71 = mem[_70]
            require mem[_70] == mem[_70 + 12 len 20]
            _76 = mem[64]
            mem[64] = mem[64] + 64
            mem[_76] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(_71))
            staticcall address(_71).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_81] == mem[_81]
            mem[_76 + 32] = mem[_81]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _76
            idx = idx + 1
            continue 
        _46 = mem[64]
        mem[mem[64]] = 32
        _47 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _47:
            _89 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_89 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _46 + (64 * _47) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 192
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[var16001] = (32 * ('cd', 4).length) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _119 = mem[64]
        mem[64] = mem[64] + 64
        mem[_119] = 0
        mem[_119 + 32] = 0
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).joetroller() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_123] == mem[_123 + 12 len 20]
        require ext_code.size(mem[_123 + 12 len 20])
        staticcall mem[_123 + 12 len 20].oracle() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _128 = mem[_127]
        require mem[_127] == mem[_127 + 12 len 20]
        _129 = mem[64]
        mem[64] = mem[64] + 64
        mem[_129] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(_128))
        staticcall address(_128).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_132] == mem[_132]
        mem[_129 + 32] = mem[_132]
        require idx < mem[96]
        mem[(32 * idx) + 128] = _129
        idx = idx + 1
        continue 
    _114 = mem[64]
    mem[mem[64]] = 32
    _115 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _115:
        _135 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_135 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _114 + (64 * _115) + -mem[64] + 64
}

function sub_d3890670(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[292] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 292] = address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 292] = address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _17 = mem[(4 * ceil32(return_data.size)) + 288]
    require mem[(4 * ceil32(return_data.size)) + 288] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
    _18 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288] <= test266151307()
    require ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]) + 320 <= test266151307()
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]) + 320
    mem[(6 * ceil32(return_data.size)) + 288] = _18
    require _17 + _18 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 320 len ceil32(_18)] = mem[(4 * ceil32(return_data.size)) + _17 + 320 len ceil32(_18)]
    if ceil32(_18) <= _18:
        _222 = mem[64]
        mem[64] = mem[64] + 64
        mem[_222] = 5
        mem[_222 + 32] = 0x6141564158000000000000000000000000000000000000000000000000000000
        _224 = mem[64]
        mem[mem[64] + 32] = 0x6141564158000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 37] = 0
        _524 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 37
        _526 = sha3(mem[_524 + 32 len mem[_524]])
        mem[_224 + 69 len ceil32(_18)] = mem[(6 * ceil32(return_data.size)) + 320 len ceil32(_18)]
        if ceil32(_18) > _18:
            mem[_18 + _224 + 69] = 0
        mem[64] = _18 + _224 + 69
        if sha3(mem[_224 + 69 len _18]) == _526:
            return arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(arg2),
                   eth.balance(arg2)
    else:
        mem[_18 + (6 * ceil32(return_data.size)) + 320] = 0
        _223 = mem[64]
        mem[64] = mem[64] + 64
        mem[_223] = 5
        mem[_223 + 32] = 0x6141564158000000000000000000000000000000000000000000000000000000
        _225 = mem[64]
        mem[mem[64] + 32] = 0x6141564158000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 37] = 0
        _532 = mem[64]
        mem[mem[64]] = 5
        mem[64] = mem[64] + 37
        _534 = sha3(mem[_532 + 32 len mem[_532]])
        mem[_225 + 69 len ceil32(_18)] = mem[(6 * ceil32(return_data.size)) + 320 len ceil32(_18)]
        if ceil32(_18) > _18:
            mem[_18 + _225 + 69] = 0
        mem[64] = _18 + _225 + 69
        if sha3(mem[_225 + 69 len _18]) == _534:
            return arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(arg2),
                   eth.balance(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return arg1 << 192, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function sub_5aee5566(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _343 = mem[64]
            mem[64] = mem[64] + 192
            mem[_343] = 0
            mem[_343 + 32] = 0
            mem[_343 + 64] = 0
            mem[_343 + 96] = 0
            mem[_343 + 128] = 0
            mem[_343 + 160] = 0
            mem[mem[64] + 4] = address(cd[36])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _359 = mem[_357]
            require mem[_357] == mem[_357]
            mem[mem[64] + 4] = address(cd[36])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _370 = mem[_369]
            require mem[_369] == mem[_369]
            mem[mem[64] + 4] = address(cd[36])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).balanceOfUnderlying(address arg1) with:
                 gas gas_remaining wei
                args address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _378 = mem[_377]
            require mem[_377] == mem[_377]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _385 = mem[_384]
            require mem[_384] <= test266151307()
            require _384 + mem[_384] + 31 < _384 + return_data.size
            _388 = mem[_384 + mem[_384]]
            require mem[_384 + mem[_384]] <= test266151307()
            require ceil32(mem[_384 + mem[_384]]) + 32 >= 0 and _384 + ceil32(return_data.size) + ceil32(mem[_384 + mem[_384]]) + 32 <= test266151307()
            mem[64] = _384 + ceil32(return_data.size) + ceil32(mem[_384 + mem[_384]]) + 32
            mem[_384 + ceil32(return_data.size)] = _388
            require _385 + _388 + 32 <= return_data.size
            s = 0
            while s < _388:
                mem[s + _384 + ceil32(return_data.size) + 32] = mem[s + _384 + _385 + 32]
                s = s + 32
                continue 
            if ceil32(_388) <= _388:
                _705 = mem[64]
                mem[64] = mem[64] + 64
                mem[_705] = 5
                mem[_705 + 32] = 0x6141564158000000000000000000000000000000000000000000000000000000
                _707 = mem[64]
                s = 0
                while s < 5:
                    mem[s + _707 + 32] = mem[s + _705 + 32]
                    s = s + 32
                    continue 
                mem[_707 + 37] = 0
                _1075 = mem[64]
                mem[mem[64]] = _707 + -mem[64] + 5
                mem[64] = _707 + 37
                _1077 = sha3(mem[_1075 + 32 len mem[_1075]])
                _1089 = mem[_384 + ceil32(return_data.size)]
                s = 0
                while s < _1089:
                    mem[s + _707 + 69] = mem[s + _384 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_1089) <= _1089:
                    _1450 = mem[64]
                    mem[mem[64]] = _1089 + _707 + -mem[64] + 37
                    mem[64] = _1089 + _707 + 69
                    if sha3(mem[_1450 + 32 len mem[_1450]]) == _1077:
                        mem[64] = _1089 + _707 + 261
                        mem[_1089 + _707 + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + 101] = _359
                        mem[_1089 + _707 + 133] = _370
                        mem[_1089 + _707 + 165] = _378
                        mem[_1089 + _707 + 197] = eth.balance(cd[36])
                        mem[_1089 + _707 + 229] = eth.balance(cd[36])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1089 + _707 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1089 + _707 + ceil32(return_data.size) + 73] = address(cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[_1089 + _707 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 73] = address(cd[36])
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1089 + _707 + (4 * ceil32(return_data.size)) + 261
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 101] = _359
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 133] = _370
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 165] = _378
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + (4 * ceil32(return_data.size)) + 69
                else:
                    mem[_1089 + _707 + 69] = 0
                    _1453 = mem[64]
                    mem[mem[64]] = _1089 + _707 + -mem[64] + 37
                    mem[64] = _1089 + _707 + 69
                    if sha3(mem[_1453 + 32 len mem[_1453]]) == _1077:
                        mem[64] = _1089 + _707 + 261
                        mem[_1089 + _707 + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + 101] = _359
                        mem[_1089 + _707 + 133] = _370
                        mem[_1089 + _707 + 165] = _378
                        mem[_1089 + _707 + 197] = eth.balance(cd[36])
                        mem[_1089 + _707 + 229] = eth.balance(cd[36])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1089 + _707 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1089 + _707 + ceil32(return_data.size) + 73] = address(cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[_1089 + _707 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 73] = address(cd[36])
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1089 + _707 + (4 * ceil32(return_data.size)) + 261
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 101] = _359
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 133] = _370
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 165] = _378
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + (4 * ceil32(return_data.size)) + 69
            else:
                mem[_388 + _384 + ceil32(return_data.size) + 32] = 0
                _706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_706] = 5
                mem[_706 + 32] = 0x6141564158000000000000000000000000000000000000000000000000000000
                _708 = mem[64]
                s = 0
                while s < 5:
                    mem[s + _708 + 32] = mem[s + _706 + 32]
                    s = s + 32
                    continue 
                mem[_708 + 37] = 0
                _1083 = mem[64]
                mem[mem[64]] = _708 + -mem[64] + 5
                mem[64] = _708 + 37
                _1085 = sha3(mem[_1083 + 32 len mem[_1083]])
                _1091 = mem[_384 + ceil32(return_data.size)]
                s = 0
                while s < _1091:
                    mem[s + _708 + 69] = mem[s + _384 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_1091) <= _1091:
                    _1462 = mem[64]
                    mem[mem[64]] = _1091 + _708 + -mem[64] + 37
                    mem[64] = _1091 + _708 + 69
                    if sha3(mem[_1462 + 32 len mem[_1462]]) == _1085:
                        mem[64] = _1091 + _708 + 261
                        mem[_1091 + _708 + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + 101] = _359
                        mem[_1091 + _708 + 133] = _370
                        mem[_1091 + _708 + 165] = _378
                        mem[_1091 + _708 + 197] = eth.balance(cd[36])
                        mem[_1091 + _708 + 229] = eth.balance(cd[36])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1091 + _708 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1091 + _708 + ceil32(return_data.size) + 73] = address(cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[_1091 + _708 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 73] = address(cd[36])
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1091 + _708 + (4 * ceil32(return_data.size)) + 261
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 101] = _359
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 133] = _370
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 165] = _378
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + (4 * ceil32(return_data.size)) + 69
                else:
                    mem[_1091 + _708 + 69] = 0
                    _1465 = mem[64]
                    mem[mem[64]] = _1091 + _708 + -mem[64] + 37
                    mem[64] = _1091 + _708 + 69
                    if sha3(mem[_1465 + 32 len mem[_1465]]) == _1085:
                        mem[64] = _1091 + _708 + 261
                        mem[_1091 + _708 + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + 101] = _359
                        mem[_1091 + _708 + 133] = _370
                        mem[_1091 + _708 + 165] = _378
                        mem[_1091 + _708 + 197] = eth.balance(cd[36])
                        mem[_1091 + _708 + 229] = eth.balance(cd[36])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + 69
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1091 + _708 + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + ceil32(return_data.size) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1091 + _708 + ceil32(return_data.size) + 73] = address(cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[_1091 + _708 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + (2 * ceil32(return_data.size)) + 69
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 73] = address(cd[36])
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1091 + _708 + (4 * ceil32(return_data.size)) + 261
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 101] = _359
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 133] = _370
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 165] = _378
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + (4 * ceil32(return_data.size)) + 69
            idx = idx + 1
            continue 
        _336 = mem[64]
        mem[mem[64]] = 32
        _337 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _337:
            _701 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_701 + 32]
            mem[t + 64] = mem[_701 + 64]
            mem[t + 96] = mem[_701 + 96]
            mem[t + 128] = mem[_701 + 128]
            mem[t + 160] = mem[_701 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _336 + (192 * _337) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 320
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[var25001] = (32 * ('cd', 4).length) + 128
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _1123 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1123] = 0
        mem[_1123 + 32] = 0
        mem[_1123 + 64] = 0
        mem[_1123 + 96] = 0
        mem[_1123 + 128] = 0
        mem[_1123 + 160] = 0
        mem[mem[64] + 4] = address(cd[36])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1178 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1187 = mem[_1178]
        require mem[_1178] == mem[_1178]
        mem[mem[64] + 4] = address(cd[36])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1224 = mem[_1215]
        require mem[_1215] == mem[_1215]
        mem[mem[64] + 4] = address(cd[36])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1251 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1252 = mem[_1251]
        require mem[_1251] == mem[_1251]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1271 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1272 = mem[_1271]
        require mem[_1271] <= test266151307()
        require _1271 + mem[_1271] + 31 < _1271 + return_data.size
        _1273 = mem[_1271 + mem[_1271]]
        require mem[_1271 + mem[_1271]] <= test266151307()
        require ceil32(mem[_1271 + mem[_1271]]) + 32 >= 0 and _1271 + ceil32(return_data.size) + ceil32(mem[_1271 + mem[_1271]]) + 32 <= test266151307()
        mem[64] = _1271 + ceil32(return_data.size) + ceil32(mem[_1271 + mem[_1271]]) + 32
        mem[_1271 + ceil32(return_data.size)] = _1273
        require _1272 + _1273 + 32 <= return_data.size
        s = 0
        while s < _1273:
            mem[s + _1271 + ceil32(return_data.size) + 32] = mem[s + _1271 + _1272 + 32]
            s = s + 32
            continue 
        if ceil32(_1273) <= _1273:
            _1468 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1468] = 5
            mem[_1468 + 32] = 0x6141564158000000000000000000000000000000000000000000000000000000
            _1470 = mem[64]
            s = 0
            while s < 5:
                mem[s + _1470 + 32] = mem[s + _1468 + 32]
                s = s + 32
                continue 
            mem[_1470 + 37] = 0
            _1791 = mem[64]
            mem[mem[64]] = _1470 + -mem[64] + 5
            mem[64] = _1470 + 37
            _1793 = sha3(mem[_1791 + 32 len mem[_1791]])
            _1804 = mem[_1271 + ceil32(return_data.size)]
            s = 0
            while s < _1804:
                mem[s + _1470 + 69] = mem[s + _1271 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_1804) <= _1804:
                _1973 = mem[64]
                mem[mem[64]] = _1804 + _1470 + -mem[64] + 37
                mem[64] = _1804 + _1470 + 69
                if sha3(mem[_1973 + 32 len mem[_1973]]) == _1793:
                    mem[64] = _1804 + _1470 + 261
                    mem[_1804 + _1470 + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + 101] = _1187
                    mem[_1804 + _1470 + 133] = _1224
                    mem[_1804 + _1470 + 165] = _1252
                    mem[_1804 + _1470 + 197] = eth.balance(cd[36])
                    mem[_1804 + _1470 + 229] = eth.balance(cd[36])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1804 + _1470 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1804 + _1470 + ceil32(return_data.size) + 73] = address(cd[36])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[_1804 + _1470 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 73] = address(cd[36])
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 261
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 101] = _1187
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 133] = _1224
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 165] = _1252
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 69
            else:
                mem[_1804 + _1470 + 69] = 0
                _1976 = mem[64]
                mem[mem[64]] = _1804 + _1470 + -mem[64] + 37
                mem[64] = _1804 + _1470 + 69
                if sha3(mem[_1976 + 32 len mem[_1976]]) == _1793:
                    mem[64] = _1804 + _1470 + 261
                    mem[_1804 + _1470 + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + 101] = _1187
                    mem[_1804 + _1470 + 133] = _1224
                    mem[_1804 + _1470 + 165] = _1252
                    mem[_1804 + _1470 + 197] = eth.balance(cd[36])
                    mem[_1804 + _1470 + 229] = eth.balance(cd[36])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1804 + _1470 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1804 + _1470 + ceil32(return_data.size) + 73] = address(cd[36])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[_1804 + _1470 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 73] = address(cd[36])
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 261
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 101] = _1187
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 133] = _1224
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 165] = _1252
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 69
        else:
            mem[_1273 + _1271 + ceil32(return_data.size) + 32] = 0
            _1469 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1469] = 5
            mem[_1469 + 32] = 0x6141564158000000000000000000000000000000000000000000000000000000
            _1471 = mem[64]
            s = 0
            while s < 5:
                mem[s + _1471 + 32] = mem[s + _1469 + 32]
                s = s + 32
                continue 
            mem[_1471 + 37] = 0
            _1799 = mem[64]
            mem[mem[64]] = _1471 + -mem[64] + 5
            mem[64] = _1471 + 37
            _1801 = sha3(mem[_1799 + 32 len mem[_1799]])
            _1806 = mem[_1271 + ceil32(return_data.size)]
            s = 0
            while s < _1806:
                mem[s + _1471 + 69] = mem[s + _1271 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_1806) <= _1806:
                _1985 = mem[64]
                mem[mem[64]] = _1806 + _1471 + -mem[64] + 37
                mem[64] = _1806 + _1471 + 69
                if sha3(mem[_1985 + 32 len mem[_1985]]) == _1801:
                    mem[64] = _1806 + _1471 + 261
                    mem[_1806 + _1471 + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + 101] = _1187
                    mem[_1806 + _1471 + 133] = _1224
                    mem[_1806 + _1471 + 165] = _1252
                    mem[_1806 + _1471 + 197] = eth.balance(cd[36])
                    mem[_1806 + _1471 + 229] = eth.balance(cd[36])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1806 + _1471 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1806 + _1471 + ceil32(return_data.size) + 73] = address(cd[36])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[_1806 + _1471 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 73] = address(cd[36])
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 261
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 101] = _1187
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 133] = _1224
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 165] = _1252
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 69
            else:
                mem[_1806 + _1471 + 69] = 0
                _1988 = mem[64]
                mem[mem[64]] = _1806 + _1471 + -mem[64] + 37
                mem[64] = _1806 + _1471 + 69
                if sha3(mem[_1988 + 32 len mem[_1988]]) == _1801:
                    mem[64] = _1806 + _1471 + 261
                    mem[_1806 + _1471 + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + 101] = _1187
                    mem[_1806 + _1471 + 133] = _1224
                    mem[_1806 + _1471 + 165] = _1252
                    mem[_1806 + _1471 + 197] = eth.balance(cd[36])
                    mem[_1806 + _1471 + 229] = eth.balance(cd[36])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + 69
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1806 + _1471 + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + ceil32(return_data.size) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1806 + _1471 + ceil32(return_data.size) + 73] = address(cd[36])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[_1806 + _1471 + ceil32(return_data.size) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + (2 * ceil32(return_data.size)) + 69
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 73] = address(cd[36])
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 105] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 69] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 261
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 69] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 101] = _1187
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 133] = _1224
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 165] = _1252
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 229] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 69
        idx = idx + 1
        continue 
    _1070 = mem[64]
    mem[mem[64]] = 32
    _1087 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _1087:
        _1440 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1440 + 32]
        mem[t + 64] = mem[_1440 + 64]
        mem[t + 96] = mem[_1440 + 96]
        mem[t + 128] = mem[_1440 + 128]
        mem[t + 160] = mem[_1440 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _1070 + (192 * _1087) + -mem[64] + 64
}



}
