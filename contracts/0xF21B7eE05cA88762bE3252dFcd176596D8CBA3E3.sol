contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0x2a8e3d6331d5e7bd15e4fbac18215ea48c2153b != msg.sender:
        if 0xdaac1dabc098ca1d5eded342d23f505f64321bfe != msg.sender:
            require msg.sender == 0x79954883524cbaff4716e101106e4fac7835be88
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144, uint32(ext_call.return_data[64])
}

function sub_892e20f4(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    if msg.sender == 0x2a8e3d6331d5e7bd15e4fbac18215ea48c2153b:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[36]
        mem[132] = cd[68]
        mem[164] = 160
        mem[260] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = 292
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = address(cd[132])
        mem[228] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _28 = mem[96 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
        _31 = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _31
        require _28 + (32 * _31) + 32 <= return_data.size
        idx = 0
        s = _28 + 128
        t = ceil32(return_data.size) + 128
        while idx < _31:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if msg.sender == 0xdaac1dabc098ca1d5eded342d23f505f64321bfe:
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = cd[36]
            mem[132] = cd[68]
            mem[164] = 160
            mem[260] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = 292
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[196] = address(cd[132])
            mem[228] = cd[164]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _29 = mem[96 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
            _32 = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
            if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _32
            require _29 + (32 * _32) + 32 <= return_data.size
            idx = 0
            s = _29 + 128
            t = ceil32(return_data.size) + 128
            while idx < _32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            require msg.sender == 0x79954883524cbaff4716e101106e4fac7835be88
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = cd[36]
            mem[132] = cd[68]
            mem[164] = 160
            mem[260] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = 292
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[196] = address(cd[132])
            mem[228] = cd[164]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _30 = mem[96 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
            _33 = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
            if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _33
            require _30 + (32 * _33) + 32 <= return_data.size
            idx = 0
            s = _30 + 128
            t = ceil32(return_data.size) + 128
            while idx < _33:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}

function sub_f1b3c712(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    require cd[164] == cd[164]
    if msg.sender == 0x2a8e3d6331d5e7bd15e4fbac18215ea48c2153b:
        mem[96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[100] = cd[36]
        mem[132] = cd[68]
        mem[164] = 160
        mem[260] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = 292
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = address(cd[132])
        mem[228] = cd[164]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _28 = mem[96 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
        _31 = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _31
        require _28 + (32 * _31) + 32 <= return_data.size
        idx = 0
        s = _28 + 128
        t = ceil32(return_data.size) + 128
        while idx < _31:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if msg.sender == 0xdaac1dabc098ca1d5eded342d23f505f64321bfe:
            mem[96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[100] = cd[36]
            mem[132] = cd[68]
            mem[164] = 160
            mem[260] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = 292
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[196] = address(cd[132])
            mem[228] = cd[164]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _29 = mem[96 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
            _32 = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
            if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _32
            require _29 + (32 * _32) + 32 <= return_data.size
            idx = 0
            s = _29 + 128
            t = ceil32(return_data.size) + 128
            while idx < _32:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            require msg.sender == 0x79954883524cbaff4716e101106e4fac7835be88
            mem[96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[100] = cd[36]
            mem[132] = cd[68]
            mem[164] = 160
            mem[260] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = 292
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[196] = address(cd[132])
            mem[228] = cd[164]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _30 = mem[96 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
            _33 = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
            if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _33
            require _30 + (32 * _33) + 32 <= return_data.size
            idx = 0
            s = _30 + 128
            t = ceil32(return_data.size) + 128
            while idx < _33:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}

function sub_23963d34(?) payable {
    require calldata.size - 4 >= 320
    require cd[4] == address(cd[4])
    require 67 < calldata.size
    require 100 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 2:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    require 195 < calldata.size
    mem[64] = 224
    require 228 <= calldata.size
    idx = 0
    s = 164
    t = 160
    while idx < 2:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    require ('cd', 228).length <= test266151307()
    require cd[228] + (32 * ('cd', 228).length) + 36 <= calldata.size
    require cd[260] == address(cd[260])
    require cd[292] == cd[292]
    if msg.sender == 0x2a8e3d6331d5e7bd15e4fbac18215ea48c2153b:
        mem[224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[228] = mem[96]
        mem[260] = mem[128]
        mem[292] = 160
        mem[388] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = mem[64] + 196
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = address(cd[260])
        mem[356] = cd[292]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (32 * ('cd', 100).length) + -mem[64] + 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _63 = mem[_60]
        require mem[_60] <= test266151307()
        require _60 + mem[_60] + 31 < _60 + return_data.size
        _66 = mem[_60 + mem[_60]]
        if mem[_60 + mem[_60]] > test266151307():
            revert with 'NH{q', 65
        if _60 + ceil32(return_data.size) + floor32(mem[_60 + mem[_60]]) + 1 > test266151307() or floor32(mem[_60 + mem[_60]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _60 + ceil32(return_data.size) + floor32(mem[_60 + mem[_60]]) + 1
        mem[_60 + ceil32(return_data.size)] = _66
        require _63 + (32 * _66) + 32 <= return_data.size
        idx = 0
        s = _60 + _63 + 32
        t = _60 + ceil32(return_data.size) + 32
        while idx < _66:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _105 = mem[160]
        _108 = mem[192]
        _109 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _105
        mem[mem[64] + 36] = _108
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 228).length
        idx = 0
        s = cd[228] + 36
        t = mem[64] + 196
        while idx < ('cd', 228).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_109 + 100] = address(cd[260])
        mem[_109 + 132] = cd[292]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _109 + (32 * ('cd', 228).length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _135 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _138 = mem[_135]
        require mem[_135] <= test266151307()
        require _135 + mem[_135] + 31 < _135 + return_data.size
        _141 = mem[_135 + mem[_135]]
        if mem[_135 + mem[_135]] > test266151307():
            revert with 'NH{q', 65
        if _135 + ceil32(return_data.size) + floor32(mem[_135 + mem[_135]]) + 1 > test266151307() or floor32(mem[_135 + mem[_135]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _135 + ceil32(return_data.size) + floor32(mem[_135 + mem[_135]]) + 1
        mem[_135 + ceil32(return_data.size)] = _141
        require _138 + (32 * _141) + 32 <= return_data.size
        idx = 0
        s = _135 + _138 + 32
        t = _135 + ceil32(return_data.size) + 32
        while idx < _141:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if msg.sender == 0xdaac1dabc098ca1d5eded342d23f505f64321bfe:
            mem[224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[228] = mem[96]
            mem[260] = mem[128]
            mem[292] = 160
            mem[388] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = mem[64] + 196
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[324] = address(cd[260])
            mem[356] = cd[292]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * ('cd', 100).length) + -mem[64] + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _61 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _64 = mem[_61]
            require mem[_61] <= test266151307()
            require _61 + mem[_61] + 31 < _61 + return_data.size
            _67 = mem[_61 + mem[_61]]
            if mem[_61 + mem[_61]] > test266151307():
                revert with 'NH{q', 65
            if _61 + ceil32(return_data.size) + floor32(mem[_61 + mem[_61]]) + 1 > test266151307() or floor32(mem[_61 + mem[_61]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _61 + ceil32(return_data.size) + floor32(mem[_61 + mem[_61]]) + 1
            mem[_61 + ceil32(return_data.size)] = _67
            require _64 + (32 * _67) + 32 <= return_data.size
            idx = 0
            s = _61 + _64 + 32
            t = _61 + ceil32(return_data.size) + 32
            while idx < _67:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _106 = mem[160]
            _110 = mem[192]
            _111 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _106
            mem[mem[64] + 36] = _110
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 228).length
            idx = 0
            s = cd[228] + 36
            t = mem[64] + 196
            while idx < ('cd', 228).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_111 + 100] = address(cd[260])
            mem[_111 + 132] = cd[292]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _111 + (32 * ('cd', 228).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _136 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _139 = mem[_136]
            require mem[_136] <= test266151307()
            require _136 + mem[_136] + 31 < _136 + return_data.size
            _142 = mem[_136 + mem[_136]]
            if mem[_136 + mem[_136]] > test266151307():
                revert with 'NH{q', 65
            if _136 + ceil32(return_data.size) + floor32(mem[_136 + mem[_136]]) + 1 > test266151307() or floor32(mem[_136 + mem[_136]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _136 + ceil32(return_data.size) + floor32(mem[_136 + mem[_136]]) + 1
            mem[_136 + ceil32(return_data.size)] = _142
            require _139 + (32 * _142) + 32 <= return_data.size
            idx = 0
            s = _136 + _139 + 32
            t = _136 + ceil32(return_data.size) + 32
            while idx < _142:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            require msg.sender == 0x79954883524cbaff4716e101106e4fac7835be88
            mem[224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[228] = mem[96]
            mem[260] = mem[128]
            mem[292] = 160
            mem[388] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = mem[64] + 196
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[324] = address(cd[260])
            mem[356] = cd[292]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * ('cd', 100).length) + -mem[64] + 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _62 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _65 = mem[_62]
            require mem[_62] <= test266151307()
            require _62 + mem[_62] + 31 < _62 + return_data.size
            _68 = mem[_62 + mem[_62]]
            if mem[_62 + mem[_62]] > test266151307():
                revert with 'NH{q', 65
            if _62 + ceil32(return_data.size) + floor32(mem[_62 + mem[_62]]) + 1 > test266151307() or floor32(mem[_62 + mem[_62]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _62 + ceil32(return_data.size) + floor32(mem[_62 + mem[_62]]) + 1
            mem[_62 + ceil32(return_data.size)] = _68
            require _65 + (32 * _68) + 32 <= return_data.size
            idx = 0
            s = _62 + _65 + 32
            t = _62 + ceil32(return_data.size) + 32
            while idx < _68:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _107 = mem[160]
            _112 = mem[192]
            _113 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _107
            mem[mem[64] + 36] = _112
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 228).length
            idx = 0
            s = cd[228] + 36
            t = mem[64] + 196
            while idx < ('cd', 228).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_113 + 100] = address(cd[260])
            mem[_113 + 132] = cd[292]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _113 + (32 * ('cd', 228).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _137 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _140 = mem[_137]
            require mem[_137] <= test266151307()
            require _137 + mem[_137] + 31 < _137 + return_data.size
            _143 = mem[_137 + mem[_137]]
            if mem[_137 + mem[_137]] > test266151307():
                revert with 'NH{q', 65
            if _137 + ceil32(return_data.size) + floor32(mem[_137 + mem[_137]]) + 1 > test266151307() or floor32(mem[_137 + mem[_137]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _137 + ceil32(return_data.size) + floor32(mem[_137 + mem[_137]]) + 1
            mem[_137 + ceil32(return_data.size)] = _143
            require _140 + (32 * _143) + 32 <= return_data.size
            idx = 0
            s = _137 + _140 + 32
            t = _137 + ceil32(return_data.size) + 32
            while idx < _143:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == 0x2a8e3d6331d5e7bd15e4fbac18215ea48c2153b:
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + 97] = arg1.length
        if not arg1.length:
            if arg1.length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(arg1.length) + (32 * arg1.length) + 129] = arg1.length
            if not arg1.length:
                if arg1.length > test266151307():
                    revert with 'NH{q', 65
                mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
                mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
                if not arg1.length:
                    idx = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1190] == mem[_1190 + 18 len 14]
                        _1286 = mem[_1190 + 32]
                        require mem[_1190 + 32] == mem[_1190 + 50 len 14]
                        _1334 = mem[_1190 + 64]
                        require mem[_1190 + 64] == mem[_1190 + 92 len 4]
                        if idx >= mem[floor32(arg1.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1190 + 18 len 14]
                        if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1286)
                        if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1334)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _1094 = mem[64]
                    mem[mem[64]] = 96
                    _1214 = mem[floor32(arg1.length) + 97]
                    mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                    idx = 0
                    s = floor32(arg1.length) + 129
                    t = mem[64] + 128
                    while idx < _1214:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _1214) + 128
                    _1550 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                    mem[_1094 + (32 * _1214) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                    idx = 0
                    s = floor32(arg1.length) + (32 * arg1.length) + 161
                    t = _1094 + (32 * _1214) + 160
                    while idx < _1550:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1094 + 64] = (32 * _1214) + (32 * _1550) + 160
                    _1694 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                    mem[_1094 + (32 * _1214) + (32 * _1550) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                    idx = 0
                    s = floor32(arg1.length) + (64 * arg1.length) + 193
                    t = _1094 + (32 * _1214) + (32 * _1550) + 192
                    while idx < _1694:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1094 + (32 * _1214) + (32 * _1550) + (32 * _1694) + -mem[64] + 192
                mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1191 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1191] == mem[_1191 + 18 len 14]
                    _1287 = mem[_1191 + 32]
                    require mem[_1191 + 32] == mem[_1191 + 50 len 14]
                    _1335 = mem[_1191 + 64]
                    require mem[_1191 + 64] == mem[_1191 + 92 len 4]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1191 + 18 len 14]
                    if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1287)
                    if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1335)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1098 = mem[64]
                mem[mem[64]] = 96
                _1215 = mem[floor32(arg1.length) + 97]
                mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                idx = 0
                s = floor32(arg1.length) + 129
                t = mem[64] + 128
                while idx < _1215:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1098 + 32] = (32 * _1215) + 128
                _1551 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                mem[_1098 + (32 * _1215) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                idx = 0
                s = floor32(arg1.length) + (32 * arg1.length) + 161
                t = _1098 + (32 * _1215) + 160
                while idx < _1551:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1098 + 64] = (32 * _1215) + (32 * _1551) + 160
                _1695 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                mem[_1098 + (32 * _1215) + (32 * _1551) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                idx = 0
                s = floor32(arg1.length) + (64 * arg1.length) + 193
                t = _1098 + (32 * _1215) + (32 * _1551) + 192
                while idx < _1695:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1098 + (32 * _1215) + (32 * _1551) + (32 * _1695) + -mem[64] + 192
            mem[floor32(arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            if arg1.length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
            mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1192 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1192] == mem[_1192 + 18 len 14]
                    _1288 = mem[_1192 + 32]
                    require mem[_1192 + 32] == mem[_1192 + 50 len 14]
                    _1336 = mem[_1192 + 64]
                    require mem[_1192 + 64] == mem[_1192 + 92 len 4]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1192 + 18 len 14]
                    if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1288)
                    if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1336)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1102 = mem[64]
                mem[mem[64]] = 96
                _1216 = mem[floor32(arg1.length) + 97]
                mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                idx = 0
                s = floor32(arg1.length) + 129
                t = mem[64] + 128
                while idx < _1216:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1102 + 32] = (32 * _1216) + 128
                _1552 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                mem[_1102 + (32 * _1216) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                idx = 0
                s = floor32(arg1.length) + (32 * arg1.length) + 161
                t = _1102 + (32 * _1216) + 160
                while idx < _1552:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1102 + 64] = (32 * _1216) + (32 * _1552) + 160
                _1696 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                mem[_1102 + (32 * _1216) + (32 * _1552) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                idx = 0
                s = floor32(arg1.length) + (64 * arg1.length) + 193
                t = _1102 + (32 * _1216) + (32 * _1552) + 192
                while idx < _1696:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1102 + (32 * _1216) + (32 * _1552) + (32 * _1696) + -mem[64] + 192
            mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1193 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1193] == mem[_1193 + 18 len 14]
                _1289 = mem[_1193 + 32]
                require mem[_1193 + 32] == mem[_1193 + 50 len 14]
                _1337 = mem[_1193 + 64]
                require mem[_1193 + 64] == mem[_1193 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1193 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1289)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1337)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1106 = mem[64]
            mem[mem[64]] = 96
            _1217 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _1217:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1106 + 32] = (32 * _1217) + 128
            _1553 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_1106 + (32 * _1217) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _1106 + (32 * _1217) + 160
            while idx < _1553:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1106 + 64] = (32 * _1217) + (32 * _1553) + 160
            _1697 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_1106 + (32 * _1217) + (32 * _1553) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _1106 + (32 * _1217) + (32 * _1553) + 192
            while idx < _1697:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1106 + (32 * _1217) + (32 * _1553) + (32 * _1697) + -mem[64] + 192
        mem[floor32(arg1.length) + 129 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = arg1.length
        if not arg1.length:
            if arg1.length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
            mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1194 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1194] == mem[_1194 + 18 len 14]
                    _1290 = mem[_1194 + 32]
                    require mem[_1194 + 32] == mem[_1194 + 50 len 14]
                    _1338 = mem[_1194 + 64]
                    require mem[_1194 + 64] == mem[_1194 + 92 len 4]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1194 + 18 len 14]
                    if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1290)
                    if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1338)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1110 = mem[64]
                mem[mem[64]] = 96
                _1218 = mem[floor32(arg1.length) + 97]
                mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                idx = 0
                s = floor32(arg1.length) + 129
                t = mem[64] + 128
                while idx < _1218:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1110 + 32] = (32 * _1218) + 128
                _1554 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                mem[_1110 + (32 * _1218) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                idx = 0
                s = floor32(arg1.length) + (32 * arg1.length) + 161
                t = _1110 + (32 * _1218) + 160
                while idx < _1554:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1110 + 64] = (32 * _1218) + (32 * _1554) + 160
                _1698 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                mem[_1110 + (32 * _1218) + (32 * _1554) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                idx = 0
                s = floor32(arg1.length) + (64 * arg1.length) + 193
                t = _1110 + (32 * _1218) + (32 * _1554) + 192
                while idx < _1698:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1110 + (32 * _1218) + (32 * _1554) + (32 * _1698) + -mem[64] + 192
            mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1195 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1195] == mem[_1195 + 18 len 14]
                _1291 = mem[_1195 + 32]
                require mem[_1195 + 32] == mem[_1195 + 50 len 14]
                _1339 = mem[_1195 + 64]
                require mem[_1195 + 64] == mem[_1195 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1195 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1291)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1339)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1114 = mem[64]
            mem[mem[64]] = 96
            _1219 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _1219:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1219) + 128
            _1555 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_1114 + (32 * _1219) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _1114 + (32 * _1219) + 160
            while idx < _1555:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1114 + 64] = (32 * _1219) + (32 * _1555) + 160
            _1699 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_1114 + (32 * _1219) + (32 * _1555) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _1114 + (32 * _1219) + (32 * _1555) + 192
            while idx < _1699:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1114 + (32 * _1219) + (32 * _1555) + (32 * _1699) + -mem[64] + 192
        mem[floor32(arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
        mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1196 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1196] == mem[_1196 + 18 len 14]
                _1292 = mem[_1196 + 32]
                require mem[_1196 + 32] == mem[_1196 + 50 len 14]
                _1340 = mem[_1196 + 64]
                require mem[_1196 + 64] == mem[_1196 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1196 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1292)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1340)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1118 = mem[64]
            mem[mem[64]] = 96
            _1220 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _1220:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1118 + 32] = (32 * _1220) + 128
            _1556 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_1118 + (32 * _1220) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _1118 + (32 * _1220) + 160
            while idx < _1556:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1118 + 64] = (32 * _1220) + (32 * _1556) + 160
            _1700 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_1118 + (32 * _1220) + (32 * _1556) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _1118 + (32 * _1220) + (32 * _1556) + 192
            while idx < _1700:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1118 + (32 * _1220) + (32 * _1556) + (32 * _1700) + -mem[64] + 192
        mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1197] == mem[_1197 + 18 len 14]
            _1293 = mem[_1197 + 32]
            require mem[_1197 + 32] == mem[_1197 + 50 len 14]
            _1341 = mem[_1197 + 64]
            require mem[_1197 + 64] == mem[_1197 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1197 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1293)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1341)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1122 = mem[64]
        mem[mem[64]] = 96
        _1221 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _1221:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1122 + 32] = (32 * _1221) + 128
        _1557 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_1122 + (32 * _1221) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _1122 + (32 * _1221) + 160
        while idx < _1557:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1122 + 64] = (32 * _1221) + (32 * _1557) + 160
        _1701 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_1122 + (32 * _1221) + (32 * _1557) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _1122 + (32 * _1221) + (32 * _1557) + 192
        while idx < _1701:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1122 + (32 * _1221) + (32 * _1557) + (32 * _1701) + -mem[64] + 192
    if msg.sender == 0xdaac1dabc098ca1d5eded342d23f505f64321bfe:
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + 97] = arg1.length
        if not arg1.length:
            if arg1.length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(arg1.length) + (32 * arg1.length) + 129] = arg1.length
            if not arg1.length:
                if arg1.length > test266151307():
                    revert with 'NH{q', 65
                mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
                mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
                if not arg1.length:
                    idx = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1198 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_1198] == mem[_1198 + 18 len 14]
                        _1294 = mem[_1198 + 32]
                        require mem[_1198 + 32] == mem[_1198 + 50 len 14]
                        _1342 = mem[_1198 + 64]
                        require mem[_1198 + 64] == mem[_1198 + 92 len 4]
                        if idx >= mem[floor32(arg1.length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1198 + 18 len 14]
                        if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1294)
                        if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1342)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _1126 = mem[64]
                    mem[mem[64]] = 96
                    _1222 = mem[floor32(arg1.length) + 97]
                    mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                    idx = 0
                    s = floor32(arg1.length) + 129
                    t = mem[64] + 128
                    while idx < _1222:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _1222) + 128
                    _1558 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                    mem[_1126 + (32 * _1222) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                    idx = 0
                    s = floor32(arg1.length) + (32 * arg1.length) + 161
                    t = _1126 + (32 * _1222) + 160
                    while idx < _1558:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1126 + 64] = (32 * _1222) + (32 * _1558) + 160
                    _1702 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                    mem[_1126 + (32 * _1222) + (32 * _1558) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                    idx = 0
                    s = floor32(arg1.length) + (64 * arg1.length) + 193
                    t = _1126 + (32 * _1222) + (32 * _1558) + 192
                    while idx < _1702:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1126 + (32 * _1222) + (32 * _1558) + (32 * _1702) + -mem[64] + 192
                mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1199] == mem[_1199 + 18 len 14]
                    _1295 = mem[_1199 + 32]
                    require mem[_1199 + 32] == mem[_1199 + 50 len 14]
                    _1343 = mem[_1199 + 64]
                    require mem[_1199 + 64] == mem[_1199 + 92 len 4]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1199 + 18 len 14]
                    if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1295)
                    if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1343)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1130 = mem[64]
                mem[mem[64]] = 96
                _1223 = mem[floor32(arg1.length) + 97]
                mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                idx = 0
                s = floor32(arg1.length) + 129
                t = mem[64] + 128
                while idx < _1223:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1130 + 32] = (32 * _1223) + 128
                _1559 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                mem[_1130 + (32 * _1223) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                idx = 0
                s = floor32(arg1.length) + (32 * arg1.length) + 161
                t = _1130 + (32 * _1223) + 160
                while idx < _1559:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1130 + 64] = (32 * _1223) + (32 * _1559) + 160
                _1703 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                mem[_1130 + (32 * _1223) + (32 * _1559) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                idx = 0
                s = floor32(arg1.length) + (64 * arg1.length) + 193
                t = _1130 + (32 * _1223) + (32 * _1559) + 192
                while idx < _1703:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1130 + (32 * _1223) + (32 * _1559) + (32 * _1703) + -mem[64] + 192
            mem[floor32(arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            if arg1.length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
            mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1200] == mem[_1200 + 18 len 14]
                    _1296 = mem[_1200 + 32]
                    require mem[_1200 + 32] == mem[_1200 + 50 len 14]
                    _1344 = mem[_1200 + 64]
                    require mem[_1200 + 64] == mem[_1200 + 92 len 4]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1200 + 18 len 14]
                    if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1296)
                    if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1344)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1134 = mem[64]
                mem[mem[64]] = 96
                _1224 = mem[floor32(arg1.length) + 97]
                mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                idx = 0
                s = floor32(arg1.length) + 129
                t = mem[64] + 128
                while idx < _1224:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1134 + 32] = (32 * _1224) + 128
                _1560 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                mem[_1134 + (32 * _1224) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                idx = 0
                s = floor32(arg1.length) + (32 * arg1.length) + 161
                t = _1134 + (32 * _1224) + 160
                while idx < _1560:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1134 + 64] = (32 * _1224) + (32 * _1560) + 160
                _1704 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                mem[_1134 + (32 * _1224) + (32 * _1560) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                idx = 0
                s = floor32(arg1.length) + (64 * arg1.length) + 193
                t = _1134 + (32 * _1224) + (32 * _1560) + 192
                while idx < _1704:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1134 + (32 * _1224) + (32 * _1560) + (32 * _1704) + -mem[64] + 192
            mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1201] == mem[_1201 + 18 len 14]
                _1297 = mem[_1201 + 32]
                require mem[_1201 + 32] == mem[_1201 + 50 len 14]
                _1345 = mem[_1201 + 64]
                require mem[_1201 + 64] == mem[_1201 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1201 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1297)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1345)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1138 = mem[64]
            mem[mem[64]] = 96
            _1225 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _1225:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1138 + 32] = (32 * _1225) + 128
            _1561 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_1138 + (32 * _1225) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _1138 + (32 * _1225) + 160
            while idx < _1561:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1138 + 64] = (32 * _1225) + (32 * _1561) + 160
            _1705 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_1138 + (32 * _1225) + (32 * _1561) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _1138 + (32 * _1225) + (32 * _1561) + 192
            while idx < _1705:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1138 + (32 * _1225) + (32 * _1561) + (32 * _1705) + -mem[64] + 192
        mem[floor32(arg1.length) + 129 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = arg1.length
        if not arg1.length:
            if arg1.length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
            mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1202 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1202] == mem[_1202 + 18 len 14]
                    _1298 = mem[_1202 + 32]
                    require mem[_1202 + 32] == mem[_1202 + 50 len 14]
                    _1346 = mem[_1202 + 64]
                    require mem[_1202 + 64] == mem[_1202 + 92 len 4]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1202 + 18 len 14]
                    if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1298)
                    if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1346)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1142 = mem[64]
                mem[mem[64]] = 96
                _1226 = mem[floor32(arg1.length) + 97]
                mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                idx = 0
                s = floor32(arg1.length) + 129
                t = mem[64] + 128
                while idx < _1226:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1142 + 32] = (32 * _1226) + 128
                _1562 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                mem[_1142 + (32 * _1226) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                idx = 0
                s = floor32(arg1.length) + (32 * arg1.length) + 161
                t = _1142 + (32 * _1226) + 160
                while idx < _1562:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1142 + 64] = (32 * _1226) + (32 * _1562) + 160
                _1706 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                mem[_1142 + (32 * _1226) + (32 * _1562) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                idx = 0
                s = floor32(arg1.length) + (64 * arg1.length) + 193
                t = _1142 + (32 * _1226) + (32 * _1562) + 192
                while idx < _1706:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1142 + (32 * _1226) + (32 * _1562) + (32 * _1706) + -mem[64] + 192
            mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1203] == mem[_1203 + 18 len 14]
                _1299 = mem[_1203 + 32]
                require mem[_1203 + 32] == mem[_1203 + 50 len 14]
                _1347 = mem[_1203 + 64]
                require mem[_1203 + 64] == mem[_1203 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1203 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1299)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1347)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1146 = mem[64]
            mem[mem[64]] = 96
            _1227 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _1227:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1227) + 128
            _1563 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_1146 + (32 * _1227) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _1146 + (32 * _1227) + 160
            while idx < _1563:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1146 + 64] = (32 * _1227) + (32 * _1563) + 160
            _1707 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_1146 + (32 * _1227) + (32 * _1563) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _1146 + (32 * _1227) + (32 * _1563) + 192
            while idx < _1707:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1146 + (32 * _1227) + (32 * _1563) + (32 * _1707) + -mem[64] + 192
        mem[floor32(arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
        mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1204] == mem[_1204 + 18 len 14]
                _1300 = mem[_1204 + 32]
                require mem[_1204 + 32] == mem[_1204 + 50 len 14]
                _1348 = mem[_1204 + 64]
                require mem[_1204 + 64] == mem[_1204 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1204 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1300)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1348)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1150 = mem[64]
            mem[mem[64]] = 96
            _1228 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _1228:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1150 + 32] = (32 * _1228) + 128
            _1564 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_1150 + (32 * _1228) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _1150 + (32 * _1228) + 160
            while idx < _1564:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1150 + 64] = (32 * _1228) + (32 * _1564) + 160
            _1708 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_1150 + (32 * _1228) + (32 * _1564) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _1150 + (32 * _1228) + (32 * _1564) + 192
            while idx < _1708:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1150 + (32 * _1228) + (32 * _1564) + (32 * _1708) + -mem[64] + 192
        mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1205] == mem[_1205 + 18 len 14]
            _1301 = mem[_1205 + 32]
            require mem[_1205 + 32] == mem[_1205 + 50 len 14]
            _1349 = mem[_1205 + 64]
            require mem[_1205 + 64] == mem[_1205 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1205 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1301)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1349)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1154 = mem[64]
        mem[mem[64]] = 96
        _1229 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _1229:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1154 + 32] = (32 * _1229) + 128
        _1565 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_1154 + (32 * _1229) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _1154 + (32 * _1229) + 160
        while idx < _1565:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1154 + 64] = (32 * _1229) + (32 * _1565) + 160
        _1709 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_1154 + (32 * _1229) + (32 * _1565) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _1154 + (32 * _1229) + (32 * _1565) + 192
        while idx < _1709:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1154 + (32 * _1229) + (32 * _1565) + (32 * _1709) + -mem[64] + 192
    require msg.sender == 0x79954883524cbaff4716e101106e4fac7835be88
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = arg1.length
        if not arg1.length:
            if arg1.length > test266151307():
                revert with 'NH{q', 65
            mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
            mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1206 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1206] == mem[_1206 + 18 len 14]
                    _1302 = mem[_1206 + 32]
                    require mem[_1206 + 32] == mem[_1206 + 50 len 14]
                    _1350 = mem[_1206 + 64]
                    require mem[_1206 + 64] == mem[_1206 + 92 len 4]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1206 + 18 len 14]
                    if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1302)
                    if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1350)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1158 = mem[64]
                mem[mem[64]] = 96
                _1230 = mem[floor32(arg1.length) + 97]
                mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
                idx = 0
                s = floor32(arg1.length) + 129
                t = mem[64] + 128
                while idx < _1230:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1158 + 32] = (32 * _1230) + 128
                _1566 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                mem[_1158 + (32 * _1230) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
                idx = 0
                s = floor32(arg1.length) + (32 * arg1.length) + 161
                t = _1158 + (32 * _1230) + 160
                while idx < _1566:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1158 + 64] = (32 * _1230) + (32 * _1566) + 160
                _1710 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                mem[_1158 + (32 * _1230) + (32 * _1566) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
                idx = 0
                s = floor32(arg1.length) + (64 * arg1.length) + 193
                t = _1158 + (32 * _1230) + (32 * _1566) + 192
                while idx < _1710:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1158 + (32 * _1230) + (32 * _1566) + (32 * _1710) + -mem[64] + 192
            mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1207] == mem[_1207 + 18 len 14]
                _1303 = mem[_1207 + 32]
                require mem[_1207 + 32] == mem[_1207 + 50 len 14]
                _1351 = mem[_1207 + 64]
                require mem[_1207 + 64] == mem[_1207 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1207 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1303)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1351)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1162 = mem[64]
            mem[mem[64]] = 96
            _1231 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _1231:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1162 + 32] = (32 * _1231) + 128
            _1567 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_1162 + (32 * _1231) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _1162 + (32 * _1231) + 160
            while idx < _1567:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1162 + 64] = (32 * _1231) + (32 * _1567) + 160
            _1711 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_1162 + (32 * _1231) + (32 * _1567) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _1162 + (32 * _1231) + (32 * _1567) + 192
            while idx < _1711:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1162 + (32 * _1231) + (32 * _1567) + (32 * _1711) + -mem[64] + 192
        mem[floor32(arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
        mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1208] == mem[_1208 + 18 len 14]
                _1304 = mem[_1208 + 32]
                require mem[_1208 + 32] == mem[_1208 + 50 len 14]
                _1352 = mem[_1208 + 64]
                require mem[_1208 + 64] == mem[_1208 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1208 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1304)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1352)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1166 = mem[64]
            mem[mem[64]] = 96
            _1232 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _1232:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1166 + 32] = (32 * _1232) + 128
            _1568 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_1166 + (32 * _1232) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _1166 + (32 * _1232) + 160
            while idx < _1568:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1166 + 64] = (32 * _1232) + (32 * _1568) + 160
            _1712 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_1166 + (32 * _1232) + (32 * _1568) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _1166 + (32 * _1232) + (32 * _1568) + 192
            while idx < _1712:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1166 + (32 * _1232) + (32 * _1568) + (32 * _1712) + -mem[64] + 192
        mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1209] == mem[_1209 + 18 len 14]
            _1305 = mem[_1209 + 32]
            require mem[_1209 + 32] == mem[_1209 + 50 len 14]
            _1353 = mem[_1209 + 64]
            require mem[_1209 + 64] == mem[_1209 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1209 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1305)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1353)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1170 = mem[64]
        mem[mem[64]] = 96
        _1233 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _1233:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1170 + 32] = (32 * _1233) + 128
        _1569 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_1170 + (32 * _1233) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _1170 + (32 * _1233) + 160
        while idx < _1569:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1170 + 64] = (32 * _1233) + (32 * _1569) + 160
        _1713 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_1170 + (32 * _1233) + (32 * _1569) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _1170 + (32 * _1233) + (32 * _1569) + 192
        while idx < _1713:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1170 + (32 * _1233) + (32 * _1569) + (32 * _1713) + -mem[64] + 192
    mem[floor32(arg1.length) + 129 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + (32 * arg1.length) + 129] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
        mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1210 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1210] == mem[_1210 + 18 len 14]
                _1306 = mem[_1210 + 32]
                require mem[_1210 + 32] == mem[_1210 + 50 len 14]
                _1354 = mem[_1210 + 64]
                require mem[_1210 + 64] == mem[_1210 + 92 len 4]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1210 + 18 len 14]
                if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1306)
                if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1354)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1174 = mem[64]
            mem[mem[64]] = 96
            _1234 = mem[floor32(arg1.length) + 97]
            mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
            idx = 0
            s = floor32(arg1.length) + 129
            t = mem[64] + 128
            while idx < _1234:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1174 + 32] = (32 * _1234) + 128
            _1570 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            mem[_1174 + (32 * _1234) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = floor32(arg1.length) + (32 * arg1.length) + 161
            t = _1174 + (32 * _1234) + 160
            while idx < _1570:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1174 + 64] = (32 * _1234) + (32 * _1570) + 160
            _1714 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            mem[_1174 + (32 * _1234) + (32 * _1570) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
            idx = 0
            s = floor32(arg1.length) + (64 * arg1.length) + 193
            t = _1174 + (32 * _1234) + (32 * _1570) + 192
            while idx < _1714:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1174 + (32 * _1234) + (32 * _1570) + (32 * _1714) + -mem[64] + 192
        mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1211 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1211] == mem[_1211 + 18 len 14]
            _1307 = mem[_1211 + 32]
            require mem[_1211 + 32] == mem[_1211 + 50 len 14]
            _1355 = mem[_1211 + 64]
            require mem[_1211 + 64] == mem[_1211 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1211 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1307)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1355)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1178 = mem[64]
        mem[mem[64]] = 96
        _1235 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _1235:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1235) + 128
        _1571 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_1178 + (32 * _1235) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _1178 + (32 * _1235) + 160
        while idx < _1571:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1178 + 64] = (32 * _1235) + (32 * _1571) + 160
        _1715 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_1178 + (32 * _1235) + (32 * _1571) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _1178 + (32 * _1235) + (32 * _1571) + 192
        while idx < _1715:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1178 + (32 * _1235) + (32 * _1571) + (32 * _1715) + -mem[64] + 192
    mem[floor32(arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + (64 * arg1.length) + 161] = arg1.length
    mem[64] = floor32(arg1.length) + (98 * arg1.length) + 193
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1212 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1212] == mem[_1212 + 18 len 14]
            _1308 = mem[_1212 + 32]
            require mem[_1212 + 32] == mem[_1212 + 50 len 14]
            _1356 = mem[_1212 + 64]
            require mem[_1212 + 64] == mem[_1212 + 92 len 4]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1212 + 18 len 14]
            if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1308)
            if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1356)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1182 = mem[64]
        mem[mem[64]] = 96
        _1236 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 128
        while idx < _1236:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1182 + 32] = (32 * _1236) + 128
        _1572 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        mem[_1182 + (32 * _1236) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = floor32(arg1.length) + (32 * arg1.length) + 161
        t = _1182 + (32 * _1236) + 160
        while idx < _1572:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1182 + 64] = (32 * _1236) + (32 * _1572) + 160
        _1716 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        mem[_1182 + (32 * _1236) + (32 * _1572) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
        idx = 0
        s = floor32(arg1.length) + (64 * arg1.length) + 193
        t = _1182 + (32 * _1236) + (32 * _1572) + 192
        while idx < _1716:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1182 + (32 * _1236) + (32 * _1572) + (32 * _1716) + -mem[64] + 192
    mem[floor32(arg1.length) + (64 * arg1.length) + 193 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1213 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_1213] == mem[_1213 + 18 len 14]
        _1309 = mem[_1213 + 32]
        require mem[_1213 + 32] == mem[_1213 + 50 len 14]
        _1357 = mem[_1213 + 64]
        require mem[_1213 + 64] == mem[_1213 + 92 len 4]
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + 129] = mem[_1213 + 18 len 14]
        if idx >= mem[floor32(arg1.length) + (32 * arg1.length) + 129]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + (32 * arg1.length) + 161] = Mask(112, 0, _1309)
        if idx >= mem[floor32(arg1.length) + (64 * arg1.length) + 161]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + (64 * arg1.length) + 193] = uint32(_1357)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _1186 = mem[64]
    mem[mem[64]] = 96
    _1237 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 96] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 128
    while idx < _1237:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1186 + 32] = (32 * _1237) + 128
    _1573 = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
    mem[_1186 + (32 * _1237) + 128] = mem[floor32(arg1.length) + (32 * arg1.length) + 129]
    idx = 0
    s = floor32(arg1.length) + (32 * arg1.length) + 161
    t = _1186 + (32 * _1237) + 160
    while idx < _1573:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1186 + 64] = (32 * _1237) + (32 * _1573) + 160
    _1717 = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
    mem[_1186 + (32 * _1237) + (32 * _1573) + 160] = mem[floor32(arg1.length) + (64 * arg1.length) + 161]
    idx = 0
    s = floor32(arg1.length) + (64 * arg1.length) + 193
    t = _1186 + (32 * _1237) + (32 * _1573) + 192
    while idx < _1717:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _1186 + (32 * _1237) + (32 * _1573) + (32 * _1717) + -mem[64] + 192
}



}
