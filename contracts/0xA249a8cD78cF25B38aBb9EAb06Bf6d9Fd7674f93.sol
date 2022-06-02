contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d89ff504(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    require uint8(arg2) <= test266151307()
    mem[96] = uint8(arg2)
    mem[64] = (32 * uint8(arg2)) + 128
    if not uint8(arg2):
        idx = 0
        while uint8(idx) < uint8(arg2):
            mem[mem[64] + 4] = uint8(idx)
            require ext_code.size(address(arg1))
            staticcall address(arg1).getTokenBalance(uint8 arg1) with:
                    gas gas_remaining wei
                   args (idx << 248)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_101] == mem[_101]
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = mem[_101]
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x5fd65f0f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg1))
        staticcall address(arg1).swapStorage() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _94 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _96 = mem[_94]
        require mem[_94] <= test266151307()
        require return_data.size - mem[_94] >= 352
        require bool(_94 + ceil32(return_data.size) + 352 <= test266151307())
        mem[64] = _94 + ceil32(return_data.size) + 352
        _104 = mem[_94 + _96]
        require mem[_94 + _96] <= test266151307()
        require _94 + _96 + mem[_94 + _96] + 31 < _94 + return_data.size
        _108 = mem[_94 + _96 + mem[_94 + _96]]
        require mem[_94 + _96 + mem[_94 + _96]] <= test266151307()
        require _94 + ceil32(return_data.size) + (32 * mem[_94 + _96 + mem[_94 + _96]]) + 384 <= test266151307() and (32 * mem[_94 + _96 + mem[_94 + _96]]) + 384 >= 352
        mem[64] = _94 + ceil32(return_data.size) + (32 * mem[_94 + _96 + mem[_94 + _96]]) + 384
        mem[_94 + ceil32(return_data.size) + 352] = _108
        require _96 + _104 + (32 * _108) + 32 <= return_data.size
        idx = 0
        s = _94 + _96 + _104 + 32
        t = _94 + ceil32(return_data.size) + 384
        while idx < _108:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_94 + ceil32(return_data.size)] = _94 + ceil32(return_data.size) + 352
        require mem[_94 + _96 + 32] == mem[_94 + _96 + 44 len 20]
        mem[_94 + ceil32(return_data.size) + 32] = mem[_94 + _96 + 32]
        _178 = mem[_94 + _96 + 64]
        require mem[_94 + _96 + 64] <= test266151307()
        require _94 + _96 + mem[_94 + _96 + 64] + 31 < _94 + return_data.size
        _180 = mem[_94 + _96 + mem[_94 + _96 + 64]]
        require mem[_94 + _96 + mem[_94 + _96 + 64]] <= test266151307()
        _182 = mem[64]
        require mem[64] + (32 * mem[_94 + _96 + mem[_94 + _96 + 64]]) + 32 <= test266151307() and mem[64] + (32 * mem[_94 + _96 + mem[_94 + _96 + 64]]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_94 + _96 + mem[_94 + _96 + 64]]) + 32
        mem[_182] = _180
        require _96 + _178 + (32 * _180) + 32 <= return_data.size
        idx = 0
        s = _94 + _96 + _178 + 32
        t = _182 + 32
        while idx < _180:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_94 + ceil32(return_data.size) + 64] = _182
        _236 = mem[_94 + _96 + 96]
        require mem[_94 + _96 + 96] <= test266151307()
        require _94 + _96 + mem[_94 + _96 + 96] + 31 < _94 + return_data.size
        _238 = mem[_94 + _96 + mem[_94 + _96 + 96]]
        require mem[_94 + _96 + mem[_94 + _96 + 96]] <= test266151307()
        _240 = mem[64]
        require mem[64] + (32 * mem[_94 + _96 + mem[_94 + _96 + 96]]) + 32 <= test266151307() and mem[64] + (32 * mem[_94 + _96 + mem[_94 + _96 + 96]]) + 32 >= mem[64]
        mem[64] = mem[64] + (32 * mem[_94 + _96 + mem[_94 + _96 + 96]]) + 32
        mem[_240] = _238
        require _96 + _236 + (32 * _238) + 32 <= return_data.size
        idx = 0
        s = _94 + _96 + _236 + 32
        t = _240 + 32
        while idx < _238:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_94 + ceil32(return_data.size) + 96] = _240
        require mem[_94 + _96 + 128] == mem[_94 + _96 + 128]
        mem[_94 + ceil32(return_data.size) + 128] = mem[_94 + _96 + 128]
        require mem[_94 + _96 + 160] == mem[_94 + _96 + 160]
        mem[_94 + ceil32(return_data.size) + 160] = mem[_94 + _96 + 160]
        require mem[_94 + _96 + 192] == mem[_94 + _96 + 192]
        mem[_94 + ceil32(return_data.size) + 192] = mem[_94 + _96 + 192]
        require mem[_94 + _96 + 224] == mem[_94 + _96 + 224]
        mem[_94 + ceil32(return_data.size) + 224] = mem[_94 + _96 + 224]
        require mem[_94 + _96 + 256] == mem[_94 + _96 + 256]
        mem[_94 + ceil32(return_data.size) + 256] = mem[_94 + _96 + 256]
        require mem[_94 + _96 + 288] == mem[_94 + _96 + 288]
        mem[_94 + ceil32(return_data.size) + 288] = mem[_94 + _96 + 288]
        require mem[_94 + _96 + 320] == mem[_94 + _96 + 320]
        mem[_94 + ceil32(return_data.size) + 320] = mem[_94 + _96 + 320]
        _300 = mem[_94 + ceil32(return_data.size) + 224]
        _301 = mem[_94 + ceil32(return_data.size) + 288]
        _302 = mem[_94 + ceil32(return_data.size) + 192]
        _303 = mem[_94 + ceil32(return_data.size) + 256]
        require ext_code.size(mem[_94 + ceil32(return_data.size) + 44 len 20])
        staticcall mem[_94 + ceil32(return_data.size) + 44 len 20].0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _314 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _316 = mem[_314]
        require mem[_314] == mem[_314]
        mem[mem[64]] = 192
        mem[mem[64] + 192] = mem[96]
        mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 64] = _301
        mem[mem[64] + 96] = _302
        return 192, _300, _301, _302, _303, _316, mem[mem[64] + 192 len (32 * mem[96]) + 32]
    mem[128 len 32 * uint8(arg2)] = call.data[calldata.size len 32 * uint8(arg2)]
    idx = 0
    while uint8(idx) < uint8(arg2):
        mem[mem[64] + 4] = uint8(idx)
        require ext_code.size(address(arg1))
        staticcall address(arg1).getTokenBalance(uint8 arg1) with:
                gas gas_remaining wei
               args (idx << 248)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _103 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_103] == mem[_103]
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = mem[_103]
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x5fd65f0f00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).swapStorage() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _95 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _97 = mem[_95]
    require mem[_95] <= test266151307()
    require return_data.size - mem[_95] >= 352
    require bool(_95 + ceil32(return_data.size) + 352 <= test266151307())
    mem[64] = _95 + ceil32(return_data.size) + 352
    _105 = mem[_95 + _97]
    require mem[_95 + _97] <= test266151307()
    require _95 + _97 + mem[_95 + _97] + 31 < _95 + return_data.size
    _109 = mem[_95 + _97 + mem[_95 + _97]]
    require mem[_95 + _97 + mem[_95 + _97]] <= test266151307()
    require _95 + ceil32(return_data.size) + (32 * mem[_95 + _97 + mem[_95 + _97]]) + 384 <= test266151307() and (32 * mem[_95 + _97 + mem[_95 + _97]]) + 384 >= 352
    mem[64] = _95 + ceil32(return_data.size) + (32 * mem[_95 + _97 + mem[_95 + _97]]) + 384
    mem[_95 + ceil32(return_data.size) + 352] = _109
    require _97 + _105 + (32 * _109) + 32 <= return_data.size
    idx = 0
    s = _95 + _97 + _105 + 32
    t = _95 + ceil32(return_data.size) + 384
    while idx < _109:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_95 + ceil32(return_data.size)] = _95 + ceil32(return_data.size) + 352
    require mem[_95 + _97 + 32] == mem[_95 + _97 + 44 len 20]
    mem[_95 + ceil32(return_data.size) + 32] = mem[_95 + _97 + 32]
    _179 = mem[_95 + _97 + 64]
    require mem[_95 + _97 + 64] <= test266151307()
    require _95 + _97 + mem[_95 + _97 + 64] + 31 < _95 + return_data.size
    _181 = mem[_95 + _97 + mem[_95 + _97 + 64]]
    require mem[_95 + _97 + mem[_95 + _97 + 64]] <= test266151307()
    _183 = mem[64]
    require mem[64] + (32 * mem[_95 + _97 + mem[_95 + _97 + 64]]) + 32 <= test266151307() and mem[64] + (32 * mem[_95 + _97 + mem[_95 + _97 + 64]]) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * mem[_95 + _97 + mem[_95 + _97 + 64]]) + 32
    mem[_183] = _181
    require _97 + _179 + (32 * _181) + 32 <= return_data.size
    idx = 0
    s = _95 + _97 + _179 + 32
    t = _183 + 32
    while idx < _181:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_95 + ceil32(return_data.size) + 64] = _183
    _237 = mem[_95 + _97 + 96]
    require mem[_95 + _97 + 96] <= test266151307()
    require _95 + _97 + mem[_95 + _97 + 96] + 31 < _95 + return_data.size
    _239 = mem[_95 + _97 + mem[_95 + _97 + 96]]
    require mem[_95 + _97 + mem[_95 + _97 + 96]] <= test266151307()
    _241 = mem[64]
    require mem[64] + (32 * mem[_95 + _97 + mem[_95 + _97 + 96]]) + 32 <= test266151307() and mem[64] + (32 * mem[_95 + _97 + mem[_95 + _97 + 96]]) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * mem[_95 + _97 + mem[_95 + _97 + 96]]) + 32
    mem[_241] = _239
    require _97 + _237 + (32 * _239) + 32 <= return_data.size
    idx = 0
    s = _95 + _97 + _237 + 32
    t = _241 + 32
    while idx < _239:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_95 + ceil32(return_data.size) + 96] = _241
    require mem[_95 + _97 + 128] == mem[_95 + _97 + 128]
    mem[_95 + ceil32(return_data.size) + 128] = mem[_95 + _97 + 128]
    require mem[_95 + _97 + 160] == mem[_95 + _97 + 160]
    mem[_95 + ceil32(return_data.size) + 160] = mem[_95 + _97 + 160]
    require mem[_95 + _97 + 192] == mem[_95 + _97 + 192]
    mem[_95 + ceil32(return_data.size) + 192] = mem[_95 + _97 + 192]
    require mem[_95 + _97 + 224] == mem[_95 + _97 + 224]
    mem[_95 + ceil32(return_data.size) + 224] = mem[_95 + _97 + 224]
    require mem[_95 + _97 + 256] == mem[_95 + _97 + 256]
    mem[_95 + ceil32(return_data.size) + 256] = mem[_95 + _97 + 256]
    require mem[_95 + _97 + 288] == mem[_95 + _97 + 288]
    mem[_95 + ceil32(return_data.size) + 288] = mem[_95 + _97 + 288]
    require mem[_95 + _97 + 320] == mem[_95 + _97 + 320]
    mem[_95 + ceil32(return_data.size) + 320] = mem[_95 + _97 + 320]
    _307 = mem[_95 + ceil32(return_data.size) + 224]
    _308 = mem[_95 + ceil32(return_data.size) + 288]
    _309 = mem[_95 + ceil32(return_data.size) + 192]
    _310 = mem[_95 + ceil32(return_data.size) + 256]
    require ext_code.size(mem[_95 + ceil32(return_data.size) + 44 len 20])
    staticcall mem[_95 + ceil32(return_data.size) + 44 len 20].0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _315 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _317 = mem[_315]
    require mem[_315] == mem[_315]
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 64] = _308
    mem[mem[64] + 96] = _309
    return 192, _307, _308, _309, _310, _317, mem[mem[64] + 192 len (32 * mem[96]) + 32]
}



}
