contract main {




// =====================  Runtime code  =====================


#
#  - sub_06f48116(?)
#
address stor0;
address stor1;
address stor5;
address stor6;
address stor7;
address OWNER;

function OWNER() {
    return OWNER
}

function _fallback() payable {
    revert
}

function sub_f7f43181(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    if OWNER != msg.sender:
        revert with 0, 'You are not the owner'
    if arg1 - 1:
        call address(arg4) with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args OWNER, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1a487b43(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == cd[68]
    require cd[100] == uint16(cd[100])
    require cd[132] == cd[132]
    require cd[164] == cd[164]
    require cd[196] == address(cd[196])
    require cd[228] == cd[228]
    if cd[4] <= 0:
        revert with 0, 'Amount must be higher than 0'
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if mem[(32 * ('cd', 36).length - 1) + 140 len 20] == stor5:
        if block.timestamp > -16:
            revert with 'NH{q', 17
        mem[floor32(('cd', 36).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[68]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = this.address
        mem[floor32(('cd', 36).length) + 197] = block.timestamp + 15
        call stor0.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value cd[4] wei
             gas gas_remaining wei
            args cd[68], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _136 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
        _139 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
        if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = _139
        require _136 + (32 * _139) + 32 <= return_data.size
        idx = floor32(('cd', 36).length) + _136 + 129
        s = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
        while idx < floor32(('cd', 36).length) + _136 + (32 * _139) + 129:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _139 < 1:
            revert with 'NH{q', 17
        if _139 - 1 >= _139:
            revert with 'NH{q', 50
        _259 = mem[(32 * _139 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129]
        if mem[(32 * _139 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] / 100 and cd[228] > -1 / mem[(32 * _139 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] / 100:
            revert with 'NH{q', 17
        if mem[(32 * _139 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] < mem[(32 * _139 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] / 100 * cd[228]:
            revert with 'NH{q', 17
        if msg.value < cd[4]:
            revert with 'NH{q', 17
        _262 = mem[64]
        mem[64] = mem[64] + 96
        mem[_262] = 0
        mem[_262 + 32] = 0
        _263 = mem[64]
        mem[64] = mem[64] + 64
        mem[_263] = 2
        mem[_263 + 32] = '0x'
        mem[_262 + 64] = _263
        _264 = mem[64]
        mem[mem[64] + 32] = address(cd[196])
        _271 = mem[64]
        _272 = mem[64] + 52
        mem[64] = mem[64] + 84
        mem[_272] = 0
        mem[_264 + 84] = 0x9fbf10fc00000000000000000000000000000000000000000000000000000000
        mem[_264 + 88] = uint16(cd[100])
        mem[_264 + 120] = cd[132]
        mem[_264 + 152] = cd[164]
        mem[_264 + 184] = msg.sender
        mem[_264 + 216] = _259
        mem[_264 + 248] = _259 - (_259 / 100 * cd[228])
        mem[_264 + 280] = 288
        mem[_264 + 376] = 0
        mem[_264 + 408] = 0
        mem[_264 + 440] = 96
        mem[_264 + 472] = 2
        mem[_264 + 504] = '0x'
        mem[_264 + 506] = 0
        mem[_264 + 312] = 448
        _361 = mem[_271]
        mem[_264 + 536] = mem[_271]
        mem[_264 + 568 len ceil32(_361)] = mem[_271 + 32 len ceil32(_361)]
        if ceil32(_361) <= _361:
            require ext_code.size(stor1)
            call stor1.0x9fbf10fc with:
               value msg.value - cd[4] wei
                 gas gas_remaining wei
                args cd[100] << 240, cd[132], cd[164], msg.sender, _259, _259 - (_259 / 100 * cd[228]), 288, 448, ceil32(_361) + 480, 0, 0, 96, 2, '0x', 0, mem[_264 + 536 len ceil32(_361) + 32], 0, None
        else:
            mem[_264 + ceil32(_361) + 568] = 0
            mem[_264 + ceil32(_361) + 600 len 0] = None
            require ext_code.size(stor1)
            call stor1.0x9fbf10fc with:
               value msg.value - cd[4] wei
                 gas gas_remaining wei
                args cd[100] << 240, cd[132], cd[164], msg.sender, _259, _259 - (_259 / 100 * cd[228]), 288, 448, ceil32(_361) + 480, 0, 0, 96, 2, '0x', 0, mem[_264 + 536 len _361 + 32], 0, mem[_264 + _361 + 600 len ceil32(_361) - _361]
    else:
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 36).length - 1) + 140 len 20] == stor6:
            if block.timestamp > -16:
                revert with 'NH{q', 17
            mem[floor32(('cd', 36).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[68]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = this.address
            mem[floor32(('cd', 36).length) + 197] = block.timestamp + 15
            call stor0.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[4] wei
                 gas gas_remaining wei
                args cd[68], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
            require return_data.size >= 32
            _137 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32
            require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
            require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
            _140 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
            if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98
            mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = _140
            require _137 + (32 * _140) + 32 <= return_data.size
            idx = floor32(('cd', 36).length) + _137 + 129
            s = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
            while idx < floor32(('cd', 36).length) + _137 + (32 * _140) + 129:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _140 < 1:
                revert with 'NH{q', 17
            if _140 - 1 >= _140:
                revert with 'NH{q', 50
            _260 = mem[(32 * _140 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129]
            if mem[(32 * _140 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] / 100 and cd[228] > -1 / mem[(32 * _140 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] / 100:
                revert with 'NH{q', 17
            if mem[(32 * _140 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] < mem[(32 * _140 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] / 100 * cd[228]:
                revert with 'NH{q', 17
            if msg.value < cd[4]:
                revert with 'NH{q', 17
            _265 = mem[64]
            mem[64] = mem[64] + 96
            mem[_265] = 0
            mem[_265 + 32] = 0
            _266 = mem[64]
            mem[64] = mem[64] + 64
            mem[_266] = 2
            mem[_266 + 32] = '0x'
            mem[_265 + 64] = _266
            _267 = mem[64]
            mem[mem[64] + 32] = address(cd[196])
            _274 = mem[64]
            _275 = mem[64] + 52
            mem[64] = mem[64] + 84
            mem[_275] = 0
            mem[_267 + 84] = 0x9fbf10fc00000000000000000000000000000000000000000000000000000000
            mem[_267 + 88] = uint16(cd[100])
            mem[_267 + 120] = cd[132]
            mem[_267 + 152] = cd[164]
            mem[_267 + 184] = msg.sender
            mem[_267 + 216] = _260
            mem[_267 + 248] = _260 - (_260 / 100 * cd[228])
            mem[_267 + 280] = 288
            mem[_267 + 376] = 0
            mem[_267 + 408] = 0
            mem[_267 + 440] = 96
            mem[_267 + 472] = 2
            mem[_267 + 504] = '0x'
            mem[_267 + 506] = 0
            mem[_267 + 312] = 448
            _362 = mem[_274]
            mem[_267 + 536] = mem[_274]
            mem[_267 + 568 len ceil32(_362)] = mem[_274 + 32 len ceil32(_362)]
            if ceil32(_362) <= _362:
                require ext_code.size(stor1)
                call stor1.0x9fbf10fc with:
                   value msg.value - cd[4] wei
                     gas gas_remaining wei
                    args cd[100] << 240, cd[132], cd[164], msg.sender, _260, _260 - (_260 / 100 * cd[228]), 288, 448, ceil32(_362) + 480, 0, 0, 96, 2, '0x', 0, mem[_267 + 536 len ceil32(_362) + 32], 0, None
            else:
                mem[_267 + ceil32(_362) + 568] = 0
                mem[_267 + ceil32(_362) + 600 len 0] = None
                require ext_code.size(stor1)
                call stor1.0x9fbf10fc with:
                   value msg.value - cd[4] wei
                     gas gas_remaining wei
                    args cd[100] << 240, cd[132], cd[164], msg.sender, _260, _260 - (_260 / 100 * cd[228]), 288, 448, ceil32(_362) + 480, 0, 0, 96, 2, '0x', 0, mem[_267 + 536 len _362 + 32], 0, mem[_267 + _362 + 600 len ceil32(_362) - _362]
        else:
            if ('cd', 36).length < 1:
                revert with 'NH{q', 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 36).length - 1) + 140 len 20] != stor7:
                revert with 0, 'The token wanted must be USDC, USDT or STG'
            if block.timestamp > -16:
                revert with 'NH{q', 17
            mem[floor32(('cd', 36).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[68]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = this.address
            mem[floor32(('cd', 36).length) + 197] = block.timestamp + 15
            call stor0.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[4] wei
                 gas gas_remaining wei
                args cd[68], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
            require return_data.size >= 32
            _138 = mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32
            require mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
            require floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128 < floor32(('cd', 36).length) + return_data.size + 97
            _141 = mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
            if mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + mem[floor32(('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98
            mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = _141
            require _138 + (32 * _141) + 32 <= return_data.size
            idx = floor32(('cd', 36).length) + _138 + 129
            s = floor32(('cd', 36).length) + ceil32(return_data.size) + 129
            while idx < floor32(('cd', 36).length) + _138 + (32 * _141) + 129:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _141 < 1:
                revert with 'NH{q', 17
            if _141 - 1 >= _141:
                revert with 'NH{q', 50
            _261 = mem[(32 * _141 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129]
            if mem[(32 * _141 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] / 100 and cd[228] > -1 / mem[(32 * _141 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] / 100:
                revert with 'NH{q', 17
            if mem[(32 * _141 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] < mem[(32 * _141 - 1) + floor32(('cd', 36).length) + ceil32(return_data.size) + 129] / 100 * cd[228]:
                revert with 'NH{q', 17
            if msg.value < cd[4]:
                revert with 'NH{q', 17
            _268 = mem[64]
            mem[64] = mem[64] + 96
            mem[_268] = 0
            mem[_268 + 32] = 0
            _269 = mem[64]
            mem[64] = mem[64] + 64
            mem[_269] = 2
            mem[_269 + 32] = '0x'
            mem[_268 + 64] = _269
            _270 = mem[64]
            mem[mem[64] + 32] = address(cd[196])
            _277 = mem[64]
            _278 = mem[64] + 52
            mem[64] = mem[64] + 84
            mem[_278] = 0
            mem[_270 + 84] = 0x9fbf10fc00000000000000000000000000000000000000000000000000000000
            mem[_270 + 88] = uint16(cd[100])
            mem[_270 + 120] = cd[132]
            mem[_270 + 152] = cd[164]
            mem[_270 + 184] = msg.sender
            mem[_270 + 216] = _261
            mem[_270 + 248] = _261 - (_261 / 100 * cd[228])
            mem[_270 + 280] = 288
            mem[_270 + 376] = 0
            mem[_270 + 408] = 0
            mem[_270 + 440] = 96
            mem[_270 + 472] = 2
            mem[_270 + 504] = '0x'
            mem[_270 + 506] = 0
            mem[_270 + 312] = 448
            _363 = mem[_277]
            mem[_270 + 536] = mem[_277]
            mem[_270 + 568 len ceil32(_363)] = mem[_277 + 32 len ceil32(_363)]
            if ceil32(_363) <= _363:
                require ext_code.size(stor1)
                call stor1.0x9fbf10fc with:
                   value msg.value - cd[4] wei
                     gas gas_remaining wei
                    args cd[100] << 240, cd[132], cd[164], msg.sender, _261, _261 - (_261 / 100 * cd[228]), 288, 448, ceil32(_363) + 480, 0, 0, 96, 2, '0x', 0, mem[_270 + 536 len ceil32(_363) + 32], 0, None
            else:
                mem[_270 + ceil32(_363) + 568] = 0
                mem[_270 + ceil32(_363) + 600 len 0] = None
                require ext_code.size(stor1)
                call stor1.0x9fbf10fc with:
                   value msg.value - cd[4] wei
                     gas gas_remaining wei
                    args cd[100] << 240, cd[132], cd[164], msg.sender, _261, _261 - (_261 / 100 * cd[228]), 288, 448, ceil32(_363) + 480, 0, 0, 96, 2, '0x', 0, mem[_270 + 536 len _363 + 32], 0, mem[_270 + _363 + 600 len ceil32(_363) - _363]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
