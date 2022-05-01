contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function iserc20(address arg1, address arg2, bytes4 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == Mask(32, 224, arg3)
    staticcall arg1 with:
         funct arg3
            gas 30000 wei
           args arg2
    return ext_call.return_data[0]
}

function Read_pair(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 0
    mem[ceil32(return_data.size) + 160] = 0
    mem[ceil32(return_data.size) + 192] = 0
    mem[ceil32(return_data.size) + 224] = 0
    mem[ceil32(return_data.size) + 256] = 0
    mem[ceil32(return_data.size) + 288] = 0
    require arg3 <= test266151307()
    mem[ceil32(return_data.size) + 320] = arg3
    mem[64] = ceil32(return_data.size) + (32 * arg3) + 352
    if not arg3:
        idx = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx + arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (idx + arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _162 = mem[_159]
            require mem[_159] == mem[_159 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 320]
            mem[mem[(32 * idx) + ceil32(return_data.size) + 352]] = mem[_159 + 12 len 20]
            require ext_code.size(address(_162))
            staticcall address(_162).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _181 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_181] == mem[_181 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 320]
            mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 32] = mem[_181 + 12 len 20]
            require ext_code.size(address(_162))
            staticcall address(_162).0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_193] == mem[_193 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 320]
            mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 64] = mem[_193 + 12 len 20]
            require idx < mem[ceil32(return_data.size) + 320]
            _205 = mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 32]
            _206 = mem[64]
            mem[64] = mem[64] + 64
            mem[_206] = 18
            mem[_206 + 32] = 'balanceOf(address)' << 112
            mem[mem[64] + 4] = _162
            staticcall _205 with:
                 funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                    gas 30000 wei
                   args _162
            mem[mem[64]] = ext_call.return_data[0]
            require idx < mem[ceil32(return_data.size) + 320]
            mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 96] = ext_call.return_data[0]
            require idx < mem[ceil32(return_data.size) + 320]
            _216 = mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 64]
            _217 = mem[64]
            mem[64] = mem[64] + 64
            mem[_217] = 18
            mem[_217 + 32] = 'balanceOf(address)' << 112
            mem[mem[64] + 4] = _162
            staticcall _216 with:
                 funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                    gas 30000 wei
                   args _162
            mem[mem[64]] = ext_call.return_data[0]
            require idx < mem[ceil32(return_data.size) + 320]
            mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 128] = ext_call.return_data[0]
            require idx < mem[ceil32(return_data.size) + 320]
            _236 = mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 32]
            _237 = mem[64]
            mem[64] = mem[64] + 64
            mem[_237] = 10
            mem[_237 + 32] = 'decimals()' << 176
            mem[mem[64] + 4] = _162
            staticcall _236 with:
                 funct Mask(32, 224, sha3('decimals()')) >> 224
                    gas 30000 wei
                   args _162
            mem[mem[64]] = ext_call.return_data[0]
            require idx < mem[ceil32(return_data.size) + 320]
            mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 160] = ext_call.return_data[0]
            require idx < mem[ceil32(return_data.size) + 320]
            _256 = mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 64]
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 10
            mem[_257 + 32] = 'decimals()' << 176
            mem[mem[64] + 4] = _162
            staticcall _256 with:
                 funct Mask(32, 224, sha3('decimals()')) >> 224
                    gas 30000 wei
                   args _162
            mem[mem[64]] = ext_call.return_data[0]
            require idx < mem[ceil32(return_data.size) + 320]
            mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 192] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        _148 = mem[64]
        mem[mem[64]] = 32
        _149 = mem[ceil32(return_data.size) + 320]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 320]
        idx = 0
        s = ceil32(return_data.size) + 352
        t = mem[64] + 64
        while idx < _149:
            _286 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_286 + 44 len 20]
            mem[t + 64] = mem[_286 + 76 len 20]
            mem[t + 96] = mem[_286 + 96]
            mem[t + 128] = mem[_286 + 128]
            mem[t + 160] = mem[_286 + 160]
            mem[t + 192] = mem[_286 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _148 + (224 * _149) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg3) + 576
    mem[ceil32(return_data.size) + (32 * arg3) + 352] = 0
    mem[ceil32(return_data.size) + (32 * arg3) + 384] = 0
    mem[ceil32(return_data.size) + (32 * arg3) + 416] = 0
    mem[ceil32(return_data.size) + (32 * arg3) + 448] = 0
    mem[ceil32(return_data.size) + (32 * arg3) + 480] = 0
    mem[ceil32(return_data.size) + (32 * arg3) + 512] = 0
    mem[ceil32(return_data.size) + (32 * arg3) + 544] = 0
    mem[var25001] = ceil32(return_data.size) + (32 * arg3) + 352
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[ceil32(return_data.size) + (32 * arg3) + 352] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 384] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 416] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 448] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 480] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 512] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 544] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * arg3) + 352
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg3:
        mem[mem[64] + 4] = idx + arg2
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (idx + arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _376 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _378 = mem[_376]
        require mem[_376] == mem[_376 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + 320]
        mem[mem[(32 * idx) + ceil32(return_data.size) + 352]] = mem[_376 + 12 len 20]
        require ext_code.size(address(_378))
        staticcall address(_378).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _383 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_383] == mem[_383 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + 320]
        mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 32] = mem[_383 + 12 len 20]
        require ext_code.size(address(_378))
        staticcall address(_378).0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _389 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_389] == mem[_389 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + 320]
        mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 64] = mem[_389 + 12 len 20]
        require idx < mem[ceil32(return_data.size) + 320]
        _395 = mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 32]
        _396 = mem[64]
        mem[64] = mem[64] + 64
        mem[_396] = 18
        mem[_396 + 32] = 'balanceOf(address)' << 112
        mem[mem[64] + 4] = _378
        staticcall _395 with:
             funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                gas 30000 wei
               args _378
        mem[mem[64]] = ext_call.return_data[0]
        require idx < mem[ceil32(return_data.size) + 320]
        mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 96] = ext_call.return_data[0]
        require idx < mem[ceil32(return_data.size) + 320]
        _405 = mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 64]
        _406 = mem[64]
        mem[64] = mem[64] + 64
        mem[_406] = 18
        mem[_406 + 32] = 'balanceOf(address)' << 112
        mem[mem[64] + 4] = _378
        staticcall _405 with:
             funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                gas 30000 wei
               args _378
        mem[mem[64]] = ext_call.return_data[0]
        require idx < mem[ceil32(return_data.size) + 320]
        mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 128] = ext_call.return_data[0]
        require idx < mem[ceil32(return_data.size) + 320]
        _415 = mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 32]
        _416 = mem[64]
        mem[64] = mem[64] + 64
        mem[_416] = 10
        mem[_416 + 32] = 'decimals()' << 176
        mem[mem[64] + 4] = _378
        staticcall _415 with:
             funct Mask(32, 224, sha3('decimals()')) >> 224
                gas 30000 wei
               args _378
        mem[mem[64]] = ext_call.return_data[0]
        require idx < mem[ceil32(return_data.size) + 320]
        mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 160] = ext_call.return_data[0]
        require idx < mem[ceil32(return_data.size) + 320]
        _425 = mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 64]
        _426 = mem[64]
        mem[64] = mem[64] + 64
        mem[_426] = 10
        mem[_426 + 32] = 'decimals()' << 176
        mem[mem[64] + 4] = _378
        staticcall _425 with:
             funct Mask(32, 224, sha3('decimals()')) >> 224
                gas 30000 wei
               args _378
        mem[mem[64]] = ext_call.return_data[0]
        require idx < mem[ceil32(return_data.size) + 320]
        mem[mem[(32 * idx) + ceil32(return_data.size) + 352] + 192] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    _365 = mem[64]
    mem[mem[64]] = 32
    _366 = mem[ceil32(return_data.size) + 320]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 320]
    idx = 0
    s = ceil32(return_data.size) + 352
    t = mem[64] + 64
    while idx < _366:
        _433 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_433 + 44 len 20]
        mem[t + 64] = mem[_433 + 76 len 20]
        mem[t + 96] = mem[_433 + 96]
        mem[t + 128] = mem[_433 + 128]
        mem[t + 160] = mem[_433 + 160]
        mem[t + 192] = mem[_433 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _365 + (224 * _366) + -mem[64] + 64
}



}
