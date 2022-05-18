contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_46cc7e00(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == bool(arg4)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg3
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[ceil32(return_data.size) + 132] = arg3
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _88 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _91 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _91
        require _88 + (32 * _91) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _88 + 224
        s = (4 * ceil32(return_data.size)) + 224
        while idx < (2 * ceil32(return_data.size)) + _88 + (32 * _91) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
            revert with 'NH{q', 17
        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _91:
            revert with 'NH{q', 50
        _346 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _352 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _352:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _352) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _628 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _631 = mem[_628]
        require mem[_628] == mem[_628]
        if arg4:
            return _346, mem[_628], 0, 0
        if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            _637 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_637]:
                revert with 'NH{q', 50
            mem[_637 + 32] = address(arg2)
            if 1 >= mem[_637]:
                revert with 'NH{q', 50
            mem[_637 + 64] = address(arg1)
            mem[_637 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_637 + 100] = _631
            mem[_637 + 132] = 64
            mem[_637 + 164] = mem[_637]
            idx = 0
            s = _637 + 32
            t = _637 + 196
            while idx < mem[_637]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _637 + (32 * mem[_637]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _922 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _931 = mem[_922]
            require mem[_922] <= test266151307()
            require _922 + mem[_922] + 31 < _922 + return_data.size
            _940 = mem[_922 + mem[_922]]
            if mem[_922 + mem[_922]] > test266151307():
                revert with 'NH{q', 65
            if _922 + ceil32(return_data.size) + floor32(mem[_922 + mem[_922]]) + 1 > test266151307() or floor32(mem[_922 + mem[_922]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _922 + ceil32(return_data.size) + floor32(mem[_922 + mem[_922]]) + 1
            mem[_922 + ceil32(return_data.size)] = _940
            require _931 + (32 * _940) + 32 <= return_data.size
            idx = _922 + _931 + 32
            s = _922 + ceil32(return_data.size) + 32
            while idx < _922 + _931 + (32 * _940) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_637] < 1:
                revert with 'NH{q', 17
            if mem[_637] - 1 >= _940:
                revert with 'NH{q', 50
            _1147 = mem[(32 * mem[_637] - 1) + _922 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            mem[mem[64] + 36] = _631
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _631
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1174 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1174] == bool(mem[_1174])
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _631
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1201 = mem[_637]
            mem[mem[64] + 164] = mem[_637]
            idx = 0
            s = _637 + 32
            t = mem[64] + 196
            while idx < _1201:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _631, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1201) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _1318 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1318] == mem[_1318]
            return _346, _631, _1147, mem[_1318]
        if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            _641 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_641]:
                revert with 'NH{q', 50
            mem[_641 + 32] = address(arg2)
            if 1 >= mem[_641]:
                revert with 'NH{q', 50
            mem[_641 + 64] = address(arg1)
            mem[_641 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_641 + 100] = _631
            mem[_641 + 132] = 64
            mem[_641 + 164] = mem[_641]
            idx = 0
            s = _641 + 32
            t = _641 + 196
            while idx < mem[_641]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _641 + (32 * mem[_641]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _924 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _933 = mem[_924]
            require mem[_924] <= test266151307()
            require _924 + mem[_924] + 31 < _924 + return_data.size
            _942 = mem[_924 + mem[_924]]
            if mem[_924 + mem[_924]] > test266151307():
                revert with 'NH{q', 65
            if _924 + ceil32(return_data.size) + floor32(mem[_924 + mem[_924]]) + 1 > test266151307() or floor32(mem[_924 + mem[_924]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _924 + ceil32(return_data.size) + floor32(mem[_924 + mem[_924]]) + 1
            mem[_924 + ceil32(return_data.size)] = _942
            require _933 + (32 * _942) + 32 <= return_data.size
            idx = _924 + _933 + 32
            s = _924 + ceil32(return_data.size) + 32
            while idx < _924 + _933 + (32 * _942) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_641] < 1:
                revert with 'NH{q', 17
            if mem[_641] - 1 >= _942:
                revert with 'NH{q', 50
            _1151 = mem[(32 * mem[_641] - 1) + _924 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            mem[mem[64] + 36] = _631
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _631
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1176] == bool(mem[_1176])
            _1194 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _631
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1203 = mem[_641]
            mem[mem[64] + 164] = mem[_641]
            idx = 0
            s = _641 + 32
            t = mem[64] + 196
            while idx < _1203:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1194 + 100] = this.address
            mem[_1194 + 132] = block.timestamp
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1194 + (32 * _1203) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _1320 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1320] == mem[_1320]
            return _346, _631, _1151, mem[_1320]
        _640 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_640]:
            revert with 'NH{q', 50
        mem[_640 + 32] = address(arg2)
        if 1 >= mem[_640]:
            revert with 'NH{q', 50
        mem[_640 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 2 >= mem[_640]:
            revert with 'NH{q', 50
        mem[_640 + 96] = address(arg1)
        mem[_640 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_640 + 132] = _631
        mem[_640 + 164] = 64
        mem[_640 + 196] = mem[_640]
        idx = 0
        s = _640 + 32
        t = _640 + 228
        while idx < mem[_640]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _640 + (32 * mem[_640]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _923 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _932 = mem[_923]
        require mem[_923] <= test266151307()
        require _923 + mem[_923] + 31 < _923 + return_data.size
        _941 = mem[_923 + mem[_923]]
        if mem[_923 + mem[_923]] > test266151307():
            revert with 'NH{q', 65
        if _923 + ceil32(return_data.size) + floor32(mem[_923 + mem[_923]]) + 1 > test266151307() or floor32(mem[_923 + mem[_923]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _923 + ceil32(return_data.size) + floor32(mem[_923 + mem[_923]]) + 1
        mem[_923 + ceil32(return_data.size)] = _941
        require _932 + (32 * _941) + 32 <= return_data.size
        idx = _923 + _932 + 32
        s = _923 + ceil32(return_data.size) + 32
        while idx < _923 + _932 + (32 * _941) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[_640] < 1:
            revert with 'NH{q', 17
        if mem[_640] - 1 >= _941:
            revert with 'NH{q', 50
        _1149 = mem[(32 * mem[_640] - 1) + _923 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
        mem[mem[64] + 36] = _631
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _631
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1175] == bool(mem[_1175])
        _1193 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _631
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1202 = mem[_640]
        mem[mem[64] + 164] = mem[_640]
        idx = 0
        s = _640 + 32
        t = mem[64] + 196
        while idx < _1202:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1193 + 100] = this.address
        mem[_1193 + 132] = block.timestamp
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1193 + (32 * _1202) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _1319 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1319] == mem[_1319]
        return _346, _631, _1149, mem[_1319]
    if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _90 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _93 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _93
        require _90 + (32 * _93) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _90 + 224
        s = (4 * ceil32(return_data.size)) + 224
        while idx < (2 * ceil32(return_data.size)) + _90 + (32 * _93) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
            revert with 'NH{q', 17
        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _93:
            revert with 'NH{q', 50
        _350 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 224]
        _351 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _354 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _354:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_351 + 100] = this.address
        mem[_351 + 132] = block.timestamp
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _351 + (32 * _354) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _630 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _633 = mem[_630]
        require mem[_630] == mem[_630]
        if arg4:
            return _350, mem[_630], 0, 0
        if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            _639 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_639]:
                revert with 'NH{q', 50
            mem[_639 + 32] = address(arg2)
            if 1 >= mem[_639]:
                revert with 'NH{q', 50
            mem[_639 + 64] = address(arg1)
            mem[_639 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_639 + 100] = _633
            mem[_639 + 132] = 64
            mem[_639 + 164] = mem[_639]
            idx = 0
            s = _639 + 32
            t = _639 + 196
            while idx < mem[_639]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _639 + (32 * mem[_639]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _928 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _937 = mem[_928]
            require mem[_928] <= test266151307()
            require _928 + mem[_928] + 31 < _928 + return_data.size
            _946 = mem[_928 + mem[_928]]
            if mem[_928 + mem[_928]] > test266151307():
                revert with 'NH{q', 65
            if _928 + ceil32(return_data.size) + floor32(mem[_928 + mem[_928]]) + 1 > test266151307() or floor32(mem[_928 + mem[_928]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _928 + ceil32(return_data.size) + floor32(mem[_928 + mem[_928]]) + 1
            mem[_928 + ceil32(return_data.size)] = _946
            require _937 + (32 * _946) + 32 <= return_data.size
            idx = _928 + _937 + 32
            s = _928 + ceil32(return_data.size) + 32
            while idx < _928 + _937 + (32 * _946) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_639] < 1:
                revert with 'NH{q', 17
            if mem[_639] - 1 >= _946:
                revert with 'NH{q', 50
            _1159 = mem[(32 * mem[_639] - 1) + _928 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            mem[mem[64] + 36] = _633
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _633
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1180 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1180] == bool(mem[_1180])
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _633
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1207 = mem[_639]
            mem[mem[64] + 164] = mem[_639]
            idx = 0
            s = _639 + 32
            t = mem[64] + 196
            while idx < _1207:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _633, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1207) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _1324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1324] == mem[_1324]
            return _350, _633, _1159, mem[_1324]
        if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            _645 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_645]:
                revert with 'NH{q', 50
            mem[_645 + 32] = address(arg2)
            if 1 >= mem[_645]:
                revert with 'NH{q', 50
            mem[_645 + 64] = address(arg1)
            mem[_645 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_645 + 100] = _633
            mem[_645 + 132] = 64
            mem[_645 + 164] = mem[_645]
            idx = 0
            s = _645 + 32
            t = _645 + 196
            while idx < mem[_645]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _645 + (32 * mem[_645]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _930 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _939 = mem[_930]
            require mem[_930] <= test266151307()
            require _930 + mem[_930] + 31 < _930 + return_data.size
            _948 = mem[_930 + mem[_930]]
            if mem[_930 + mem[_930]] > test266151307():
                revert with 'NH{q', 65
            if _930 + ceil32(return_data.size) + floor32(mem[_930 + mem[_930]]) + 1 > test266151307() or floor32(mem[_930 + mem[_930]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _930 + ceil32(return_data.size) + floor32(mem[_930 + mem[_930]]) + 1
            mem[_930 + ceil32(return_data.size)] = _948
            require _939 + (32 * _948) + 32 <= return_data.size
            idx = _930 + _939 + 32
            s = _930 + ceil32(return_data.size) + 32
            while idx < _930 + _939 + (32 * _948) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_645] < 1:
                revert with 'NH{q', 17
            if mem[_645] - 1 >= _948:
                revert with 'NH{q', 50
            _1163 = mem[(32 * mem[_645] - 1) + _930 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            mem[mem[64] + 36] = _633
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _633
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1182] == bool(mem[_1182])
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _633
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1209 = mem[_645]
            mem[mem[64] + 164] = mem[_645]
            idx = 0
            s = _645 + 32
            t = mem[64] + 196
            while idx < _1209:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _633, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1209) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _1326 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1326] == mem[_1326]
            return _350, _633, _1163, mem[_1326]
        _644 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_644]:
            revert with 'NH{q', 50
        mem[_644 + 32] = address(arg2)
        if 1 >= mem[_644]:
            revert with 'NH{q', 50
        mem[_644 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 2 >= mem[_644]:
            revert with 'NH{q', 50
        mem[_644 + 96] = address(arg1)
        mem[_644 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_644 + 132] = _633
        mem[_644 + 164] = 64
        mem[_644 + 196] = mem[_644]
        idx = 0
        s = _644 + 32
        t = _644 + 228
        while idx < mem[_644]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _644 + (32 * mem[_644]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _929 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _938 = mem[_929]
        require mem[_929] <= test266151307()
        require _929 + mem[_929] + 31 < _929 + return_data.size
        _947 = mem[_929 + mem[_929]]
        if mem[_929 + mem[_929]] > test266151307():
            revert with 'NH{q', 65
        if _929 + ceil32(return_data.size) + floor32(mem[_929 + mem[_929]]) + 1 > test266151307() or floor32(mem[_929 + mem[_929]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _929 + ceil32(return_data.size) + floor32(mem[_929 + mem[_929]]) + 1
        mem[_929 + ceil32(return_data.size)] = _947
        require _938 + (32 * _947) + 32 <= return_data.size
        idx = _929 + _938 + 32
        s = _929 + ceil32(return_data.size) + 32
        while idx < _929 + _938 + (32 * _947) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[_644] < 1:
            revert with 'NH{q', 17
        if mem[_644] - 1 >= _947:
            revert with 'NH{q', 50
        _1161 = mem[(32 * mem[_644] - 1) + _929 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
        mem[mem[64] + 36] = _633
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _633
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1181] == bool(mem[_1181])
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _633
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1208 = mem[_644]
        mem[mem[64] + 164] = mem[_644]
        idx = 0
        s = _644 + 32
        t = mem[64] + 196
        while idx < _1208:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _633, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1208) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _1325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1325] == mem[_1325]
        return _350, _633, _1161, mem[_1325]
    mem[(2 * ceil32(return_data.size)) + 96] = 3
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(2 * ceil32(return_data.size)) + 192] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg3
    mem[(2 * ceil32(return_data.size)) + 260] = 64
    mem[(2 * ceil32(return_data.size)) + 292] = 3
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _89 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    _92 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    require _89 + (32 * _92) + 32 <= return_data.size
    idx = (2 * ceil32(return_data.size)) + _89 + 256
    s = (4 * ceil32(return_data.size)) + 256
    while idx < (2 * ceil32(return_data.size)) + _89 + (32 * _92) + 256:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if mem[(2 * ceil32(return_data.size)) + 96] < 1:
        revert with 'NH{q', 17
    if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _92:
        revert with 'NH{q', 50
    _348 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 256]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _353 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _353:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _353) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _629 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _632 = mem[_629]
    require mem[_629] == mem[_629]
    if arg4:
        return _348, mem[_629], 0, 0
    if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        _638 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_638]:
            revert with 'NH{q', 50
        mem[_638 + 32] = address(arg2)
        if 1 >= mem[_638]:
            revert with 'NH{q', 50
        mem[_638 + 64] = address(arg1)
        mem[_638 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_638 + 100] = _632
        mem[_638 + 132] = 64
        mem[_638 + 164] = mem[_638]
        idx = 0
        s = _638 + 32
        t = _638 + 196
        while idx < mem[_638]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _638 + (32 * mem[_638]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _925 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _934 = mem[_925]
        require mem[_925] <= test266151307()
        require _925 + mem[_925] + 31 < _925 + return_data.size
        _943 = mem[_925 + mem[_925]]
        if mem[_925 + mem[_925]] > test266151307():
            revert with 'NH{q', 65
        if _925 + ceil32(return_data.size) + floor32(mem[_925 + mem[_925]]) + 1 > test266151307() or floor32(mem[_925 + mem[_925]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _925 + ceil32(return_data.size) + floor32(mem[_925 + mem[_925]]) + 1
        mem[_925 + ceil32(return_data.size)] = _943
        require _934 + (32 * _943) + 32 <= return_data.size
        idx = _925 + _934 + 32
        s = _925 + ceil32(return_data.size) + 32
        while idx < _925 + _934 + (32 * _943) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[_638] < 1:
            revert with 'NH{q', 17
        if mem[_638] - 1 >= _943:
            revert with 'NH{q', 50
        _1153 = mem[(32 * mem[_638] - 1) + _925 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
        mem[mem[64] + 36] = _632
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _632
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1177] == bool(mem[_1177])
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _632
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1204 = mem[_638]
        mem[mem[64] + 164] = mem[_638]
        idx = 0
        s = _638 + 32
        t = mem[64] + 196
        while idx < _1204:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _632, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1204) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _1321 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1321] == mem[_1321]
        return _348, _632, _1153, mem[_1321]
    if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        _643 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_643]:
            revert with 'NH{q', 50
        mem[_643 + 32] = address(arg2)
        if 1 >= mem[_643]:
            revert with 'NH{q', 50
        mem[_643 + 64] = address(arg1)
        mem[_643 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_643 + 100] = _632
        mem[_643 + 132] = 64
        mem[_643 + 164] = mem[_643]
        idx = 0
        s = _643 + 32
        t = _643 + 196
        while idx < mem[_643]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _643 + (32 * mem[_643]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _927 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _936 = mem[_927]
        require mem[_927] <= test266151307()
        require _927 + mem[_927] + 31 < _927 + return_data.size
        _945 = mem[_927 + mem[_927]]
        if mem[_927 + mem[_927]] > test266151307():
            revert with 'NH{q', 65
        if _927 + ceil32(return_data.size) + floor32(mem[_927 + mem[_927]]) + 1 > test266151307() or floor32(mem[_927 + mem[_927]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _927 + ceil32(return_data.size) + floor32(mem[_927 + mem[_927]]) + 1
        mem[_927 + ceil32(return_data.size)] = _945
        require _936 + (32 * _945) + 32 <= return_data.size
        idx = _927 + _936 + 32
        s = _927 + ceil32(return_data.size) + 32
        while idx < _927 + _936 + (32 * _945) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[_643] < 1:
            revert with 'NH{q', 17
        if mem[_643] - 1 >= _945:
            revert with 'NH{q', 50
        _1157 = mem[(32 * mem[_643] - 1) + _927 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
        mem[mem[64] + 36] = _632
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _632
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1179] == bool(mem[_1179])
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _632
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1206 = mem[_643]
        mem[mem[64] + 164] = mem[_643]
        idx = 0
        s = _643 + 32
        t = mem[64] + 196
        while idx < _1206:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _632, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1206) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _1323 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1323] == mem[_1323]
        return _348, _632, _1157, mem[_1323]
    _642 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if 0 >= mem[_642]:
        revert with 'NH{q', 50
    mem[_642 + 32] = address(arg2)
    if 1 >= mem[_642]:
        revert with 'NH{q', 50
    mem[_642 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if 2 >= mem[_642]:
        revert with 'NH{q', 50
    mem[_642 + 96] = address(arg1)
    mem[_642 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_642 + 132] = _632
    mem[_642 + 164] = 64
    mem[_642 + 196] = mem[_642]
    idx = 0
    s = _642 + 32
    t = _642 + 228
    while idx < mem[_642]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _642 + (32 * mem[_642]) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _926 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _935 = mem[_926]
    require mem[_926] <= test266151307()
    require _926 + mem[_926] + 31 < _926 + return_data.size
    _944 = mem[_926 + mem[_926]]
    if mem[_926 + mem[_926]] > test266151307():
        revert with 'NH{q', 65
    if _926 + ceil32(return_data.size) + floor32(mem[_926 + mem[_926]]) + 1 > test266151307() or floor32(mem[_926 + mem[_926]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _926 + ceil32(return_data.size) + floor32(mem[_926 + mem[_926]]) + 1
    mem[_926 + ceil32(return_data.size)] = _944
    require _935 + (32 * _944) + 32 <= return_data.size
    idx = _926 + _935 + 32
    s = _926 + ceil32(return_data.size) + 32
    while idx < _926 + _935 + (32 * _944) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if mem[_642] < 1:
        revert with 'NH{q', 17
    if mem[_642] - 1 >= _944:
        revert with 'NH{q', 50
    _1155 = mem[(32 * mem[_642] - 1) + _926 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    mem[mem[64] + 36] = _632
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, _632
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1178 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1178] == bool(mem[_1178])
    _1196 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _632
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _1205 = mem[_642]
    mem[mem[64] + 164] = mem[_642]
    idx = 0
    s = _642 + 32
    t = mem[64] + 196
    while idx < _1205:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1196 + 100] = this.address
    mem[_1196 + 132] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _1196 + (32 * _1205) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _1322 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1322] == mem[_1322]
    return _348, _632, _1155, mem[_1322]
}

function sub_6d2353e1(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == bool(arg4)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg3
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[ceil32(return_data.size) + 132] = arg3
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _88 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _91 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _91
        require _88 + (32 * _91) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _88 + 224
        s = (4 * ceil32(return_data.size)) + 224
        while idx < (2 * ceil32(return_data.size)) + _88 + (32 * _91) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
            revert with 'NH{q', 17
        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _91:
            revert with 'NH{q', 50
        _346 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _352 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _352:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _352) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _628 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _631 = mem[_628]
        require mem[_628] == mem[_628]
        if arg4:
            return _346, mem[_628], 0, 0
        if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            _637 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_637]:
                revert with 'NH{q', 50
            mem[_637 + 32] = address(arg2)
            if 1 >= mem[_637]:
                revert with 'NH{q', 50
            mem[_637 + 64] = address(arg1)
            mem[_637 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_637 + 100] = _631
            mem[_637 + 132] = 64
            mem[_637 + 164] = mem[_637]
            idx = 0
            s = _637 + 32
            t = _637 + 196
            while idx < mem[_637]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _637 + (32 * mem[_637]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _922 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _931 = mem[_922]
            require mem[_922] <= test266151307()
            require _922 + mem[_922] + 31 < _922 + return_data.size
            _940 = mem[_922 + mem[_922]]
            if mem[_922 + mem[_922]] > test266151307():
                revert with 'NH{q', 65
            if _922 + ceil32(return_data.size) + floor32(mem[_922 + mem[_922]]) + 1 > test266151307() or floor32(mem[_922 + mem[_922]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _922 + ceil32(return_data.size) + floor32(mem[_922 + mem[_922]]) + 1
            mem[_922 + ceil32(return_data.size)] = _940
            require _931 + (32 * _940) + 32 <= return_data.size
            idx = _922 + _931 + 32
            s = _922 + ceil32(return_data.size) + 32
            while idx < _922 + _931 + (32 * _940) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_637] < 1:
                revert with 'NH{q', 17
            if mem[_637] - 1 >= _940:
                revert with 'NH{q', 50
            _1147 = mem[(32 * mem[_637] - 1) + _922 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _631
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _631
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1174 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1174] == bool(mem[_1174])
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _631
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1201 = mem[_637]
            mem[mem[64] + 164] = mem[_637]
            idx = 0
            s = _637 + 32
            t = mem[64] + 196
            while idx < _1201:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _631, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1201) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _1318 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1318] == mem[_1318]
            return _346, _631, _1147, mem[_1318]
        if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            _641 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_641]:
                revert with 'NH{q', 50
            mem[_641 + 32] = address(arg2)
            if 1 >= mem[_641]:
                revert with 'NH{q', 50
            mem[_641 + 64] = address(arg1)
            mem[_641 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_641 + 100] = _631
            mem[_641 + 132] = 64
            mem[_641 + 164] = mem[_641]
            idx = 0
            s = _641 + 32
            t = _641 + 196
            while idx < mem[_641]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _641 + (32 * mem[_641]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _924 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _933 = mem[_924]
            require mem[_924] <= test266151307()
            require _924 + mem[_924] + 31 < _924 + return_data.size
            _942 = mem[_924 + mem[_924]]
            if mem[_924 + mem[_924]] > test266151307():
                revert with 'NH{q', 65
            if _924 + ceil32(return_data.size) + floor32(mem[_924 + mem[_924]]) + 1 > test266151307() or floor32(mem[_924 + mem[_924]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _924 + ceil32(return_data.size) + floor32(mem[_924 + mem[_924]]) + 1
            mem[_924 + ceil32(return_data.size)] = _942
            require _933 + (32 * _942) + 32 <= return_data.size
            idx = _924 + _933 + 32
            s = _924 + ceil32(return_data.size) + 32
            while idx < _924 + _933 + (32 * _942) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_641] < 1:
                revert with 'NH{q', 17
            if mem[_641] - 1 >= _942:
                revert with 'NH{q', 50
            _1151 = mem[(32 * mem[_641] - 1) + _924 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _631
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _631
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1176] == bool(mem[_1176])
            _1194 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _631
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1203 = mem[_641]
            mem[mem[64] + 164] = mem[_641]
            idx = 0
            s = _641 + 32
            t = mem[64] + 196
            while idx < _1203:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1194 + 100] = this.address
            mem[_1194 + 132] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1194 + (32 * _1203) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _1320 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1320] == mem[_1320]
            return _346, _631, _1151, mem[_1320]
        _640 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_640]:
            revert with 'NH{q', 50
        mem[_640 + 32] = address(arg2)
        if 1 >= mem[_640]:
            revert with 'NH{q', 50
        mem[_640 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 2 >= mem[_640]:
            revert with 'NH{q', 50
        mem[_640 + 96] = address(arg1)
        mem[_640 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_640 + 132] = _631
        mem[_640 + 164] = 64
        mem[_640 + 196] = mem[_640]
        idx = 0
        s = _640 + 32
        t = _640 + 228
        while idx < mem[_640]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _640 + (32 * mem[_640]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _923 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _932 = mem[_923]
        require mem[_923] <= test266151307()
        require _923 + mem[_923] + 31 < _923 + return_data.size
        _941 = mem[_923 + mem[_923]]
        if mem[_923 + mem[_923]] > test266151307():
            revert with 'NH{q', 65
        if _923 + ceil32(return_data.size) + floor32(mem[_923 + mem[_923]]) + 1 > test266151307() or floor32(mem[_923 + mem[_923]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _923 + ceil32(return_data.size) + floor32(mem[_923 + mem[_923]]) + 1
        mem[_923 + ceil32(return_data.size)] = _941
        require _932 + (32 * _941) + 32 <= return_data.size
        idx = _923 + _932 + 32
        s = _923 + ceil32(return_data.size) + 32
        while idx < _923 + _932 + (32 * _941) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[_640] < 1:
            revert with 'NH{q', 17
        if mem[_640] - 1 >= _941:
            revert with 'NH{q', 50
        _1149 = mem[(32 * mem[_640] - 1) + _923 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64] + 36] = _631
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _631
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1175] == bool(mem[_1175])
        _1193 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _631
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1202 = mem[_640]
        mem[mem[64] + 164] = mem[_640]
        idx = 0
        s = _640 + 32
        t = mem[64] + 196
        while idx < _1202:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1193 + 100] = this.address
        mem[_1193 + 132] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1193 + (32 * _1202) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _1319 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1319] == mem[_1319]
        return _346, _631, _1149, mem[_1319]
    if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _90 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _93 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _93
        require _90 + (32 * _93) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _90 + 224
        s = (4 * ceil32(return_data.size)) + 224
        while idx < (2 * ceil32(return_data.size)) + _90 + (32 * _93) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[(2 * ceil32(return_data.size)) + 96] < 1:
            revert with 'NH{q', 17
        if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _93:
            revert with 'NH{q', 50
        _350 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 224]
        _351 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _354 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _354:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_351 + 100] = this.address
        mem[_351 + 132] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _351 + (32 * _354) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _630 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _633 = mem[_630]
        require mem[_630] == mem[_630]
        if arg4:
            return _350, mem[_630], 0, 0
        if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            _639 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_639]:
                revert with 'NH{q', 50
            mem[_639 + 32] = address(arg2)
            if 1 >= mem[_639]:
                revert with 'NH{q', 50
            mem[_639 + 64] = address(arg1)
            mem[_639 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_639 + 100] = _633
            mem[_639 + 132] = 64
            mem[_639 + 164] = mem[_639]
            idx = 0
            s = _639 + 32
            t = _639 + 196
            while idx < mem[_639]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _639 + (32 * mem[_639]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _928 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _937 = mem[_928]
            require mem[_928] <= test266151307()
            require _928 + mem[_928] + 31 < _928 + return_data.size
            _946 = mem[_928 + mem[_928]]
            if mem[_928 + mem[_928]] > test266151307():
                revert with 'NH{q', 65
            if _928 + ceil32(return_data.size) + floor32(mem[_928 + mem[_928]]) + 1 > test266151307() or floor32(mem[_928 + mem[_928]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _928 + ceil32(return_data.size) + floor32(mem[_928 + mem[_928]]) + 1
            mem[_928 + ceil32(return_data.size)] = _946
            require _937 + (32 * _946) + 32 <= return_data.size
            idx = _928 + _937 + 32
            s = _928 + ceil32(return_data.size) + 32
            while idx < _928 + _937 + (32 * _946) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_639] < 1:
                revert with 'NH{q', 17
            if mem[_639] - 1 >= _946:
                revert with 'NH{q', 50
            _1159 = mem[(32 * mem[_639] - 1) + _928 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _633
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _633
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1180 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1180] == bool(mem[_1180])
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _633
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1207 = mem[_639]
            mem[mem[64] + 164] = mem[_639]
            idx = 0
            s = _639 + 32
            t = mem[64] + 196
            while idx < _1207:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _633, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1207) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _1324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1324] == mem[_1324]
            return _350, _633, _1159, mem[_1324]
        if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            _645 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_645]:
                revert with 'NH{q', 50
            mem[_645 + 32] = address(arg2)
            if 1 >= mem[_645]:
                revert with 'NH{q', 50
            mem[_645 + 64] = address(arg1)
            mem[_645 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_645 + 100] = _633
            mem[_645 + 132] = 64
            mem[_645 + 164] = mem[_645]
            idx = 0
            s = _645 + 32
            t = _645 + 196
            while idx < mem[_645]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _645 + (32 * mem[_645]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _930 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _939 = mem[_930]
            require mem[_930] <= test266151307()
            require _930 + mem[_930] + 31 < _930 + return_data.size
            _948 = mem[_930 + mem[_930]]
            if mem[_930 + mem[_930]] > test266151307():
                revert with 'NH{q', 65
            if _930 + ceil32(return_data.size) + floor32(mem[_930 + mem[_930]]) + 1 > test266151307() or floor32(mem[_930 + mem[_930]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _930 + ceil32(return_data.size) + floor32(mem[_930 + mem[_930]]) + 1
            mem[_930 + ceil32(return_data.size)] = _948
            require _939 + (32 * _948) + 32 <= return_data.size
            idx = _930 + _939 + 32
            s = _930 + ceil32(return_data.size) + 32
            while idx < _930 + _939 + (32 * _948) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if mem[_645] < 1:
                revert with 'NH{q', 17
            if mem[_645] - 1 >= _948:
                revert with 'NH{q', 50
            _1163 = mem[(32 * mem[_645] - 1) + _930 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _633
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _633
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1182] == bool(mem[_1182])
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _633
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _1209 = mem[_645]
            mem[mem[64] + 164] = mem[_645]
            idx = 0
            s = _645 + 32
            t = mem[64] + 196
            while idx < _1209:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _633, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1209) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            _1326 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1326] == mem[_1326]
            return _350, _633, _1163, mem[_1326]
        _644 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_644]:
            revert with 'NH{q', 50
        mem[_644 + 32] = address(arg2)
        if 1 >= mem[_644]:
            revert with 'NH{q', 50
        mem[_644 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 2 >= mem[_644]:
            revert with 'NH{q', 50
        mem[_644 + 96] = address(arg1)
        mem[_644 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_644 + 132] = _633
        mem[_644 + 164] = 64
        mem[_644 + 196] = mem[_644]
        idx = 0
        s = _644 + 32
        t = _644 + 228
        while idx < mem[_644]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _644 + (32 * mem[_644]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _929 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _938 = mem[_929]
        require mem[_929] <= test266151307()
        require _929 + mem[_929] + 31 < _929 + return_data.size
        _947 = mem[_929 + mem[_929]]
        if mem[_929 + mem[_929]] > test266151307():
            revert with 'NH{q', 65
        if _929 + ceil32(return_data.size) + floor32(mem[_929 + mem[_929]]) + 1 > test266151307() or floor32(mem[_929 + mem[_929]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _929 + ceil32(return_data.size) + floor32(mem[_929 + mem[_929]]) + 1
        mem[_929 + ceil32(return_data.size)] = _947
        require _938 + (32 * _947) + 32 <= return_data.size
        idx = _929 + _938 + 32
        s = _929 + ceil32(return_data.size) + 32
        while idx < _929 + _938 + (32 * _947) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[_644] < 1:
            revert with 'NH{q', 17
        if mem[_644] - 1 >= _947:
            revert with 'NH{q', 50
        _1161 = mem[(32 * mem[_644] - 1) + _929 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64] + 36] = _633
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _633
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1181] == bool(mem[_1181])
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _633
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1208 = mem[_644]
        mem[mem[64] + 164] = mem[_644]
        idx = 0
        s = _644 + 32
        t = mem[64] + 196
        while idx < _1208:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _633, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1208) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _1325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1325] == mem[_1325]
        return _350, _633, _1161, mem[_1325]
    mem[(2 * ceil32(return_data.size)) + 96] = 3
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(2 * ceil32(return_data.size)) + 192] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg3
    mem[(2 * ceil32(return_data.size)) + 260] = 64
    mem[(2 * ceil32(return_data.size)) + 292] = 3
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _89 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    _92 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
    mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    require _89 + (32 * _92) + 32 <= return_data.size
    idx = (2 * ceil32(return_data.size)) + _89 + 256
    s = (4 * ceil32(return_data.size)) + 256
    while idx < (2 * ceil32(return_data.size)) + _89 + (32 * _92) + 256:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if mem[(2 * ceil32(return_data.size)) + 96] < 1:
        revert with 'NH{q', 17
    if mem[(2 * ceil32(return_data.size)) + 96] - 1 >= _92:
        revert with 'NH{q', 50
    _348 = mem[(32 * mem[(2 * ceil32(return_data.size)) + 96] - 1) + (4 * ceil32(return_data.size)) + 256]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _353 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _353:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _353) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _629 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _632 = mem[_629]
    require mem[_629] == mem[_629]
    if arg4:
        return _348, mem[_629], 0, 0
    if address(arg1) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        _638 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_638]:
            revert with 'NH{q', 50
        mem[_638 + 32] = address(arg2)
        if 1 >= mem[_638]:
            revert with 'NH{q', 50
        mem[_638 + 64] = address(arg1)
        mem[_638 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_638 + 100] = _632
        mem[_638 + 132] = 64
        mem[_638 + 164] = mem[_638]
        idx = 0
        s = _638 + 32
        t = _638 + 196
        while idx < mem[_638]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _638 + (32 * mem[_638]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _925 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _934 = mem[_925]
        require mem[_925] <= test266151307()
        require _925 + mem[_925] + 31 < _925 + return_data.size
        _943 = mem[_925 + mem[_925]]
        if mem[_925 + mem[_925]] > test266151307():
            revert with 'NH{q', 65
        if _925 + ceil32(return_data.size) + floor32(mem[_925 + mem[_925]]) + 1 > test266151307() or floor32(mem[_925 + mem[_925]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _925 + ceil32(return_data.size) + floor32(mem[_925 + mem[_925]]) + 1
        mem[_925 + ceil32(return_data.size)] = _943
        require _934 + (32 * _943) + 32 <= return_data.size
        idx = _925 + _934 + 32
        s = _925 + ceil32(return_data.size) + 32
        while idx < _925 + _934 + (32 * _943) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[_638] < 1:
            revert with 'NH{q', 17
        if mem[_638] - 1 >= _943:
            revert with 'NH{q', 50
        _1153 = mem[(32 * mem[_638] - 1) + _925 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64] + 36] = _632
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _632
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1177] == bool(mem[_1177])
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _632
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1204 = mem[_638]
        mem[mem[64] + 164] = mem[_638]
        idx = 0
        s = _638 + 32
        t = mem[64] + 196
        while idx < _1204:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _632, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1204) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _1321 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1321] == mem[_1321]
        return _348, _632, _1153, mem[_1321]
    if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        _643 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_643]:
            revert with 'NH{q', 50
        mem[_643 + 32] = address(arg2)
        if 1 >= mem[_643]:
            revert with 'NH{q', 50
        mem[_643 + 64] = address(arg1)
        mem[_643 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_643 + 100] = _632
        mem[_643 + 132] = 64
        mem[_643 + 164] = mem[_643]
        idx = 0
        s = _643 + 32
        t = _643 + 196
        while idx < mem[_643]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _643 + (32 * mem[_643]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _927 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _936 = mem[_927]
        require mem[_927] <= test266151307()
        require _927 + mem[_927] + 31 < _927 + return_data.size
        _945 = mem[_927 + mem[_927]]
        if mem[_927 + mem[_927]] > test266151307():
            revert with 'NH{q', 65
        if _927 + ceil32(return_data.size) + floor32(mem[_927 + mem[_927]]) + 1 > test266151307() or floor32(mem[_927 + mem[_927]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _927 + ceil32(return_data.size) + floor32(mem[_927 + mem[_927]]) + 1
        mem[_927 + ceil32(return_data.size)] = _945
        require _936 + (32 * _945) + 32 <= return_data.size
        idx = _927 + _936 + 32
        s = _927 + ceil32(return_data.size) + 32
        while idx < _927 + _936 + (32 * _945) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if mem[_643] < 1:
            revert with 'NH{q', 17
        if mem[_643] - 1 >= _945:
            revert with 'NH{q', 50
        _1157 = mem[(32 * mem[_643] - 1) + _927 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64] + 36] = _632
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _632
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1179] == bool(mem[_1179])
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _632
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1206 = mem[_643]
        mem[mem[64] + 164] = mem[_643]
        idx = 0
        s = _643 + 32
        t = mem[64] + 196
        while idx < _1206:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _632, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _1206) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        _1323 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1323] == mem[_1323]
        return _348, _632, _1157, mem[_1323]
    _642 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if 0 >= mem[_642]:
        revert with 'NH{q', 50
    mem[_642 + 32] = address(arg2)
    if 1 >= mem[_642]:
        revert with 'NH{q', 50
    mem[_642 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if 2 >= mem[_642]:
        revert with 'NH{q', 50
    mem[_642 + 96] = address(arg1)
    mem[_642 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_642 + 132] = _632
    mem[_642 + 164] = 64
    mem[_642 + 196] = mem[_642]
    idx = 0
    s = _642 + 32
    t = _642 + 228
    while idx < mem[_642]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _642 + (32 * mem[_642]) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _926 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _935 = mem[_926]
    require mem[_926] <= test266151307()
    require _926 + mem[_926] + 31 < _926 + return_data.size
    _944 = mem[_926 + mem[_926]]
    if mem[_926 + mem[_926]] > test266151307():
        revert with 'NH{q', 65
    if _926 + ceil32(return_data.size) + floor32(mem[_926 + mem[_926]]) + 1 > test266151307() or floor32(mem[_926 + mem[_926]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _926 + ceil32(return_data.size) + floor32(mem[_926 + mem[_926]]) + 1
    mem[_926 + ceil32(return_data.size)] = _944
    require _935 + (32 * _944) + 32 <= return_data.size
    idx = _926 + _935 + 32
    s = _926 + ceil32(return_data.size) + 32
    while idx < _926 + _935 + (32 * _944) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if mem[_642] < 1:
        revert with 'NH{q', 17
    if mem[_642] - 1 >= _944:
        revert with 'NH{q', 50
    _1155 = mem[(32 * mem[_642] - 1) + _926 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64] + 36] = _632
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _632
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1178 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1178] == bool(mem[_1178])
    _1196 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _632
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _1205 = mem[_642]
    mem[mem[64] + 164] = mem[_642]
    idx = 0
    s = _642 + 32
    t = mem[64] + 196
    while idx < _1205:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1196 + 100] = this.address
    mem[_1196 + 132] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _1196 + (32 * _1205) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _1322 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1322] == mem[_1322]
    return _348, _632, _1155, mem[_1322]
}



}
