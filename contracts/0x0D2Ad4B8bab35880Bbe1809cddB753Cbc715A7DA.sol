contract main {




// =====================  Runtime code  =====================


#
#  - sub_67f786e3(?)
#
function _fallback() payable {
    revert
}

function sub_160e4ca9(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == bool(cd[164])
    mem[96 len 64] = call.data[calldata.size len 64]
    mem[160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[164] = msg.value
    mem[196] = 64
    mem[228] = ('cd', 36).length
    if ('cd', 36).length != 2:
        idx = 0
        s = cd[36] + 36
        t = 260
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value, Array(len=('cd', 36).length, data=mem[260 len 32 * ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 32
        _96 = mem[160 len 4], Mask(224, 32, msg.value) >> 32
        require mem[160 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
        require mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 191 < return_data.size + 160
        _98 = mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160]
        if mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160]) + 161 > test266151307() or floor32(mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160]) + 161
        mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160]
        require _96 + (32 * _98) + 32 <= return_data.size
        idx = 0
        s = _96 + 192
        t = ceil32(return_data.size) + 192
        while idx < _98:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 2 >= _98:
            revert with 'NH{q', 50
        _184 = mem[ceil32(return_data.size) + 256]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _192 = mem[_190]
        require mem[_190] == mem[_190]
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 36).length
        if not cd[164]:
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 164
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = cd[68]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[mem[64] + 164 len 32 * ('cd', 36).length]), address(this.address), cd[68]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_278] == mem[_278]
                if mem[_278] < _192:
                    revert with 'NH{q', 17
                return 0, _184, mem[_278] - _192
            _282 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_282] == mem[_282]
            if mem[_282] < _192:
                revert with 'NH{q', 17
            return 1, _184, mem[_282] - _192
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 164
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = cd[68]
        require ext_code.size(address(cd[100]))
        call address(cd[100]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[mem[64] + 164 len 32 * ('cd', 36).length]), address(this.address), cd[68]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            _279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_279] == mem[_279]
            if mem[_279] < _192:
                revert with 'NH{q', 17
            return 0, _184, mem[_279] - _192
        _283 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_283] == mem[_283]
        if mem[_283] < _192:
            revert with 'NH{q', 17
        return 1, _184, mem[_283] - _192
    idx = 0
    s = cd[36] + 36
    t = 260
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=('cd', 36).length, data=mem[260 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _97 = mem[160 len 4], Mask(224, 32, msg.value) >> 32
    require mem[160 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 191 < return_data.size + 160
    _99 = mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160]
    if mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160]) + 161 > test266151307() or floor32(mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160]) + 161
    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, msg.value) >> 32 + 160]
    require _97 + (32 * _99) + 32 <= return_data.size
    idx = 0
    s = _97 + 192
    t = ceil32(return_data.size) + 192
    while idx < _99:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _99:
        revert with 'NH{q', 50
    _185 = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[132]))
    staticcall address(cd[132]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _191 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _193 = mem[_191]
    require mem[_191] == mem[_191]
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = ('cd', 36).length
    if not cd[164]:
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 164
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = cd[68]
        require ext_code.size(address(cd[100]))
        call address(cd[100]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[mem[64] + 164 len 32 * ('cd', 36).length]), address(this.address), cd[68]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            _280 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_280] == mem[_280]
            if mem[_280] < _193:
                revert with 'NH{q', 17
            return 0, _185, mem[_280] - _193
        _284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_284] == mem[_284]
        if mem[_284] < _193:
            revert with 'NH{q', 17
        return 1, _185, mem[_284] - _193
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 164
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = cd[68]
    require ext_code.size(address(cd[100]))
    call address(cd[100]).swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[mem[64] + 164 len 32 * ('cd', 36).length]), address(this.address), cd[68]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[132]))
    staticcall address(cd[132]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        _281 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_281] == mem[_281]
        if mem[_281] < _193:
            revert with 'NH{q', 17
        return 0, _185, mem[_281] - _193
    _285 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_285] == mem[_285]
    if mem[_285] < _193:
        revert with 'NH{q', 17
    return 1, _185, mem[_285] - _193
}

function sub_919e9153(?) {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == bool(cd[164])
    mem[96 len 64] = call.data[calldata.size len 64]
    mem[160 len 64] = call.data[calldata.size len 64]
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = cd[4]
    mem[260] = 64
    mem[292] = ('cd', 36).length
    if ('cd', 36).length != 2:
        idx = 0
        s = cd[36] + 36
        t = 324
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[4], Array(len=('cd', 36).length, data=mem[324 len 32 * ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _147 = mem[224 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[224 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 255 < return_data.size + 224
        _149 = mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]
        require _147 + (32 * _149) + 32 <= return_data.size
        idx = 0
        s = _147 + 256
        t = ceil32(return_data.size) + 256
        while idx < _149:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 2 >= _149:
            revert with 'NH{q', 50
        _285 = mem[ceil32(return_data.size) + 320]
        _287 = mem[64]
        mem[64] = mem[64] + 64
        mem[_287 len 64] = call.data[calldata.size len 64]
        mem[mem[64] + 4] = address(cd[100])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(cd[132]))
        call address(cd[132]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[100]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            mem[_287] = 0
            if not cd[164]:
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = ('cd', 36).length
                idx = 0
                s = cd[36] + 36
                t = mem[64] + 196
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = cd[68]
                require ext_code.size(address(cd[100]))
                call address(cd[100]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[4], 0, 160, msg.sender, cd[68], ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
                if not ext_call.success:
                    mem[_287 + 32] = 0
                    if eth.balance(msg.sender) < eth.balance(msg.sender):
                        revert with 'NH{q', 17
                    _417 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_417] = bool(mem[_287])
                    mem[_417 + 32] = 0
                    _442 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_442] = _285
                    mem[_442 + 32] = 0
                    _465 = mem[64]
                    idx = 0
                    s = _417
                    t = mem[64]
                    while idx < 2:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_465 + 64 len 64] = mem[_442 len 64]
                    var203001 = 2
                    var203002 = _442 + 64
                    var203006 = _465 + 128
                    return memory
                      from mem[64]
                       len _465 + -mem[64] + 128
                mem[_287 + 32] = 1
                if eth.balance(msg.sender) < eth.balance(msg.sender):
                    revert with 'NH{q', 17
                _426 = mem[64]
                mem[64] = mem[64] + 64
                mem[_426] = bool(mem[_287])
                mem[_426 + 32] = 1
                _467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_467] = _285
                mem[_467 + 32] = 0
                _489 = mem[64]
                idx = 0
                s = _426
                t = mem[64]
                while idx < 2:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_489 + 64 len 64] = mem[_467 len 64]
                var204001 = 2
                var204002 = _467 + 64
                var204006 = _489 + 128
                return memory
                  from mem[64]
                   len _489 + -mem[64] + 128
            mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 196
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = cd[68]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], 0, 160, msg.sender, cd[68], ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
            if not ext_call.success:
                mem[_287 + 32] = 0
                if eth.balance(msg.sender) < eth.balance(msg.sender):
                    revert with 'NH{q', 17
                _418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_418] = bool(mem[_287])
                mem[_418 + 32] = 0
                _445 = mem[64]
                mem[64] = mem[64] + 64
                mem[_445] = _285
                mem[_445 + 32] = 0
                _468 = mem[64]
                idx = 0
                s = _418
                t = mem[64]
                while idx < 2:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_468 + 64 len 64] = mem[_445 len 64]
                var203001 = 2
                var203002 = _445 + 64
                var203006 = _468 + 128
                return memory
                  from mem[64]
                   len _468 + -mem[64] + 128
            mem[_287 + 32] = 1
            if eth.balance(msg.sender) < eth.balance(msg.sender):
                revert with 'NH{q', 17
            _428 = mem[64]
            mem[64] = mem[64] + 64
            mem[_428] = bool(mem[_287])
            mem[_428 + 32] = 1
            _470 = mem[64]
            mem[64] = mem[64] + 64
            mem[_470] = _285
            mem[_470 + 32] = 0
            _490 = mem[64]
            idx = 0
            s = _428
            t = mem[64]
            while idx < 2:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_490 + 64 len 64] = mem[_470 len 64]
            var204001 = 2
            var204002 = _470 + 64
            var204006 = _490 + 128
            return memory
              from mem[64]
               len _490 + -mem[64] + 128
        _293 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_293] == bool(mem[_293])
        mem[_287] = 1
        if not cd[164]:
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 196
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = cd[68]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], 0, 160, msg.sender, cd[68], ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
            if not ext_call.success:
                mem[_287 + 32] = 0
                if eth.balance(msg.sender) < eth.balance(msg.sender):
                    revert with 'NH{q', 17
                _419 = mem[64]
                mem[64] = mem[64] + 64
                mem[_419] = bool(mem[_287])
                mem[_419 + 32] = 0
                _448 = mem[64]
                mem[64] = mem[64] + 64
                mem[_448] = _285
                mem[_448 + 32] = 0
                _471 = mem[64]
                idx = 0
                s = _419
                t = mem[64]
                while idx < 2:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_471 + 64 len 64] = mem[_448 len 64]
                return memory
                  from mem[64]
                   len _471 + -mem[64] + 128
            mem[_287 + 32] = 1
            if eth.balance(msg.sender) < eth.balance(msg.sender):
                revert with 'NH{q', 17
            _430 = mem[64]
            mem[64] = mem[64] + 64
            mem[_430] = bool(mem[_287])
            mem[_430 + 32] = 1
            _473 = mem[64]
            mem[64] = mem[64] + 64
            mem[_473] = _285
            mem[_473 + 32] = 0
            _491 = mem[64]
            idx = 0
            s = _430
            t = mem[64]
            while idx < 2:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_491 + 64 len 64] = mem[_473 len 64]
            return memory
              from mem[64]
               len _491 + -mem[64] + 128
        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 196
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = cd[68]
        require ext_code.size(address(cd[100]))
        call address(cd[100]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], 0, 160, msg.sender, cd[68], ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
        if not ext_call.success:
            mem[_287 + 32] = 0
            if eth.balance(msg.sender) < eth.balance(msg.sender):
                revert with 'NH{q', 17
            _420 = mem[64]
            mem[64] = mem[64] + 64
            mem[_420] = bool(mem[_287])
            mem[_420 + 32] = 0
            _451 = mem[64]
            mem[64] = mem[64] + 64
            mem[_451] = _285
            mem[_451 + 32] = 0
            _474 = mem[64]
            idx = 0
            s = _420
            t = mem[64]
            while idx < 2:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_474 + 64 len 64] = mem[_451 len 64]
            return memory
              from mem[64]
               len _474 + -mem[64] + 128
        mem[_287 + 32] = 1
        if eth.balance(msg.sender) < eth.balance(msg.sender):
            revert with 'NH{q', 17
        _432 = mem[64]
        mem[64] = mem[64] + 64
        mem[_432] = bool(mem[_287])
        mem[_432 + 32] = 1
        _476 = mem[64]
        mem[64] = mem[64] + 64
        mem[_476] = _285
        mem[_476 + 32] = 0
        _492 = mem[64]
        idx = 0
        s = _432
        t = mem[64]
        while idx < 2:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_492 + 64 len 64] = mem[_476 len 64]
        return memory
          from mem[64]
           len _492 + -mem[64] + 128
    idx = 0
    s = cd[36] + 36
    t = 324
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 36).length, data=mem[324 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _148 = mem[224 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[224 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 255 < return_data.size + 224
    _150 = mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]
    if mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, cd[4]) >> 32 + 224]
    require _148 + (32 * _150) + 32 <= return_data.size
    idx = 0
    s = _148 + 256
    t = ceil32(return_data.size) + 256
    while idx < _150:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _150:
        revert with 'NH{q', 50
    _286 = mem[ceil32(return_data.size) + 288]
    _288 = mem[64]
    mem[64] = mem[64] + 64
    mem[_288 len 64] = call.data[calldata.size len 64]
    mem[mem[64] + 4] = address(cd[100])
    mem[mem[64] + 36] = -1
    require ext_code.size(address(cd[132]))
    call address(cd[132]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[100]), -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        mem[_288] = 0
        if not cd[164]:
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 36).length
            idx = 0
            s = cd[36] + 36
            t = mem[64] + 196
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = cd[68]
            require ext_code.size(address(cd[100]))
            call address(cd[100]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], 0, 160, msg.sender, cd[68], ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
            if not ext_call.success:
                mem[_288 + 32] = 0
                if eth.balance(msg.sender) < eth.balance(msg.sender):
                    revert with 'NH{q', 17
                _421 = mem[64]
                mem[64] = mem[64] + 64
                mem[_421] = bool(mem[_288])
                mem[_421 + 32] = 0
                _454 = mem[64]
                mem[64] = mem[64] + 64
                mem[_454] = _286
                mem[_454 + 32] = 0
                _477 = mem[64]
                idx = 0
                s = _421
                t = mem[64]
                while idx < 2:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_477 + 64 len 64] = mem[_454 len 64]
                var203001 = 2
                var203002 = _454 + 64
                var203006 = _477 + 128
                return memory
                  from mem[64]
                   len _477 + -mem[64] + 128
            mem[_288 + 32] = 1
            if eth.balance(msg.sender) < eth.balance(msg.sender):
                revert with 'NH{q', 17
            _434 = mem[64]
            mem[64] = mem[64] + 64
            mem[_434] = bool(mem[_288])
            mem[_434 + 32] = 1
            _479 = mem[64]
            mem[64] = mem[64] + 64
            mem[_479] = _286
            mem[_479 + 32] = 0
            _493 = mem[64]
            idx = 0
            s = _434
            t = mem[64]
            while idx < 2:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_493 + 64 len 64] = mem[_479 len 64]
            var204001 = 2
            var204002 = _479 + 64
            var204006 = _493 + 128
            return memory
              from mem[64]
               len _493 + -mem[64] + 128
        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 196
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = cd[68]
        require ext_code.size(address(cd[100]))
        call address(cd[100]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], 0, 160, msg.sender, cd[68], ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
        if not ext_call.success:
            mem[_288 + 32] = 0
            if eth.balance(msg.sender) < eth.balance(msg.sender):
                revert with 'NH{q', 17
            _422 = mem[64]
            mem[64] = mem[64] + 64
            mem[_422] = bool(mem[_288])
            mem[_422 + 32] = 0
            _457 = mem[64]
            mem[64] = mem[64] + 64
            mem[_457] = _286
            mem[_457 + 32] = 0
            _480 = mem[64]
            idx = 0
            s = _422
            t = mem[64]
            while idx < 2:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_480 + 64 len 64] = mem[_457 len 64]
            var203001 = 2
            var203002 = _457 + 64
            var203006 = _480 + 128
            return memory
              from mem[64]
               len _480 + -mem[64] + 128
        mem[_288 + 32] = 1
        if eth.balance(msg.sender) < eth.balance(msg.sender):
            revert with 'NH{q', 17
        _436 = mem[64]
        mem[64] = mem[64] + 64
        mem[_436] = bool(mem[_288])
        mem[_436 + 32] = 1
        _482 = mem[64]
        mem[64] = mem[64] + 64
        mem[_482] = _286
        mem[_482 + 32] = 0
        _494 = mem[64]
        idx = 0
        s = _436
        t = mem[64]
        while idx < 2:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_494 + 64 len 64] = mem[_482 len 64]
        var204001 = 2
        var204002 = _482 + 64
        var204006 = _494 + 128
        return memory
          from mem[64]
           len _494 + -mem[64] + 128
    _294 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_294] == bool(mem[_294])
    mem[_288] = 1
    if not cd[164]:
        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 196
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = cd[68]
        require ext_code.size(address(cd[100]))
        call address(cd[100]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], 0, 160, msg.sender, cd[68], ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
        if not ext_call.success:
            mem[_288 + 32] = 0
            if eth.balance(msg.sender) < eth.balance(msg.sender):
                revert with 'NH{q', 17
            _423 = mem[64]
            mem[64] = mem[64] + 64
            mem[_423] = bool(mem[_288])
            mem[_423 + 32] = 0
            _460 = mem[64]
            mem[64] = mem[64] + 64
            mem[_460] = _286
            mem[_460 + 32] = 0
            _483 = mem[64]
            idx = 0
            s = _423
            t = mem[64]
            while idx < 2:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_483 + 64 len 64] = mem[_460 len 64]
            return memory
              from mem[64]
               len _483 + -mem[64] + 128
        mem[_288 + 32] = 1
        if eth.balance(msg.sender) < eth.balance(msg.sender):
            revert with 'NH{q', 17
        _438 = mem[64]
        mem[64] = mem[64] + 64
        mem[_438] = bool(mem[_288])
        mem[_438 + 32] = 1
        _485 = mem[64]
        mem[64] = mem[64] + 64
        mem[_485] = _286
        mem[_485 + 32] = 0
        _495 = mem[64]
        idx = 0
        s = _438
        t = mem[64]
        while idx < 2:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_495 + 64 len 64] = mem[_485 len 64]
        return memory
          from mem[64]
           len _495 + -mem[64] + 128
    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = mem[64] + 196
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = cd[68]
    require ext_code.size(address(cd[100]))
    call address(cd[100]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], 0, 160, msg.sender, cd[68], ('cd', 36).length, mem[mem[64] + 196 len 32 * ('cd', 36).length]
    if not ext_call.success:
        mem[_288 + 32] = 0
        if eth.balance(msg.sender) < eth.balance(msg.sender):
            revert with 'NH{q', 17
        _424 = mem[64]
        mem[64] = mem[64] + 64
        mem[_424] = bool(mem[_288])
        mem[_424 + 32] = 0
        _463 = mem[64]
        mem[64] = mem[64] + 64
        mem[_463] = _286
        mem[_463 + 32] = 0
        _486 = mem[64]
        idx = 0
        s = _424
        t = mem[64]
        while idx < 2:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_486 + 64 len 64] = mem[_463 len 64]
        return memory
          from mem[64]
           len _486 + -mem[64] + 128
    mem[_288 + 32] = 1
    if eth.balance(msg.sender) < eth.balance(msg.sender):
        revert with 'NH{q', 17
    _440 = mem[64]
    mem[64] = mem[64] + 64
    mem[_440] = bool(mem[_288])
    mem[_440 + 32] = 1
    _488 = mem[64]
    mem[64] = mem[64] + 64
    mem[_488] = _286
    mem[_488 + 32] = 0
    _496 = mem[64]
    idx = 0
    s = _440
    t = mem[64]
    while idx < 2:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_496 + 64 len 64] = mem[_488 len 64]
    return memory
      from mem[64]
       len _496 + -mem[64] + 128
}



}
