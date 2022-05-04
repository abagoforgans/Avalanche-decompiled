contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;
uint256 stor3;
address stor4;
address stor5;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor1 = arg1
}

function sub_c6843d05(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor2 = address(arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor0[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'not owner'
    stor0[address(arg1)] = 0
}

function withdrawETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveFor(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2516d6e4(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg7 == bool(arg7)
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[96] = 2
    mem[128] = stor6
    mem[160] = address(arg1)
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg6
    mem[228] = 1
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = this.address
    mem[324] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg6, 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _101 = mem[192 len 4], Mask(224, 32, arg6) >> 32
    require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg6) >> 32 + 223 < return_data.size + 192
    _102 = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
    require return_data.size >= _101 + (32 * _102) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _102] = mem[_101 + 224 len 32 * _102]
    if 1 >= _102:
        revert with 0, 50
    _189 = mem[ceil32(return_data.size) + 256]
    if arg5 < arg6:
        revert with 0, 17
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = address(arg2)
    mem[mem[64] + 68] = arg5 - arg6
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor10
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args stor6, address(arg2), arg5 - arg6, 1, stor10
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _192 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _193 = mem[_192]
    mem[mem[64] + 36] = address(arg4)
    mem[mem[64] + 68] = stor8
    if _189 > mem[_192]:
        mem[mem[64] + 100] = _193
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor9, address(arg4), stor8, _193
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = stor3
        require ext_code.size(address(arg3))
        call address(arg3).redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not arg7:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_220] <= arg5:
                revert with 0, 'no profit'
            mem[mem[64]] = mem[_220]
        else:
            require ext_code.size(stor7)
            call stor7.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_218]:
                revert with 0, 50
            mem[_218 + 32] = stor7
            if 1 >= mem[_218]:
                revert with 0, 50
            mem[_218 + 64] = stor6
            if 2 > !block.timestamp:
                revert with 0, 17
            mem[_218 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_218 + 100] = eth.balance(this.address)
            mem[_218 + 132] = 1
            mem[_218 + 164] = 160
            mem[_218 + 260] = mem[_218]
            idx = 0
            s = _218 + 292
            t = _218 + 32
            while idx < mem[_218]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_218 + 196] = this.address
            mem[_218 + 228] = block.timestamp + 2
            require ext_code.size(stor4)
            call stor4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _218 + (32 * mem[_218]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _276 = mem[_274]
            require mem[_274] <= test266151307()
            require _274 + mem[_274] + 31 < _274 + return_data.size
            _278 = mem[_274 + mem[_274]]
            if mem[_274 + mem[_274]] > test266151307():
                revert with 0, 65
            if _274 + ceil32(return_data.size) + ceil32(32 * mem[_274 + mem[_274]]) + 1 > test266151307() or ceil32(32 * mem[_274 + mem[_274]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _274 + ceil32(return_data.size) + ceil32(32 * mem[_274 + mem[_274]]) + 1
            mem[_274 + ceil32(return_data.size)] = _278
            require return_data.size >= _276 + (32 * _278) + 32
            mem[_274 + ceil32(return_data.size) + 32 len 32 * _278] = mem[_274 + _276 + 32 len 32 * _278]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _306 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_306] <= arg5:
                revert with 0, 'no profit'
            mem[mem[64]] = mem[_306]
    else:
        mem[mem[64] + 100] = _189
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor9, address(arg4), stor8, _189
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = stor3
        require ext_code.size(address(arg3))
        call address(arg3).redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not arg7:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_221] <= arg5:
                revert with 0, 'no profit'
            mem[mem[64]] = mem[_221]
        else:
            require ext_code.size(stor7)
            call stor7.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _219 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_219]:
                revert with 0, 50
            mem[_219 + 32] = stor7
            if 1 >= mem[_219]:
                revert with 0, 50
            mem[_219 + 64] = stor6
            if 2 > !block.timestamp:
                revert with 0, 17
            mem[_219 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_219 + 100] = eth.balance(this.address)
            mem[_219 + 132] = 1
            mem[_219 + 164] = 160
            mem[_219 + 260] = mem[_219]
            idx = 0
            s = _219 + 292
            t = _219 + 32
            while idx < mem[_219]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_219 + 196] = this.address
            mem[_219 + 228] = block.timestamp + 2
            require ext_code.size(stor4)
            call stor4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _219 + (32 * mem[_219]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _277 = mem[_275]
            require mem[_275] <= test266151307()
            require _275 + mem[_275] + 31 < _275 + return_data.size
            _279 = mem[_275 + mem[_275]]
            if mem[_275 + mem[_275]] > test266151307():
                revert with 0, 65
            if _275 + ceil32(return_data.size) + ceil32(32 * mem[_275 + mem[_275]]) + 1 > test266151307() or ceil32(32 * mem[_275 + mem[_275]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _275 + ceil32(return_data.size) + ceil32(32 * mem[_275 + mem[_275]]) + 1
            mem[_275 + ceil32(return_data.size)] = _279
            require return_data.size >= _277 + (32 * _279) + 32
            mem[_275 + ceil32(return_data.size) + 32 len 32 * _279] = mem[_275 + _277 + 32 len 32 * _279]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_307] <= arg5:
                revert with 0, 'no profit'
            mem[mem[64]] = mem[_307]
    return memory
      from mem[64]
       len 32
}

function sub_952acb25(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg7 == bool(arg7)
    mem[100] = stor2
    mem[132] = this.address
    mem[164] = arg5
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args stor2, address(this.address), arg5
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor6
    mem[ceil32(return_data.size) + 160] = address(arg1)
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg6
    mem[ceil32(return_data.size) + 228] = 1
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg6, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _121 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _122 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _122
    require return_data.size >= _121 + (32 * _122) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _122] = mem[ceil32(return_data.size) + _121 + 224 len 32 * _122]
    if 1 >= _122:
        revert with 0, 50
    _225 = mem[(2 * ceil32(return_data.size)) + 256]
    if arg5 < arg6:
        revert with 0, 17
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = address(arg2)
    mem[mem[64] + 68] = arg5 - arg6
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor10
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args stor6, address(arg2), arg5 - arg6, 1, stor10
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _228 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _229 = mem[_228]
    mem[mem[64] + 36] = address(arg4)
    mem[mem[64] + 68] = stor8
    if _225 > mem[_228]:
        mem[mem[64] + 100] = _229
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor9, address(arg4), stor8, _229
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = stor3
        require ext_code.size(address(arg3))
        call address(arg3).redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not arg7:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _256 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _260 = mem[_256]
            if mem[_256] <= arg5:
                revert with 0, 'no profit'
            mem[mem[64] + 4] = stor2
            mem[mem[64] + 36] = _260
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, _260
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_276] == bool(mem[_276])
            return _260
        require ext_code.size(stor7)
        call stor7.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _254 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not mem[_254]:
            revert with 0, 50
        mem[_254 + 32] = stor7
        if 1 >= mem[_254]:
            revert with 0, 50
        mem[_254 + 64] = stor6
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[_254 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_254 + 100] = eth.balance(this.address)
        mem[_254 + 132] = 1
        mem[_254 + 164] = 160
        mem[_254 + 260] = mem[_254]
        idx = 0
        s = _254 + 292
        t = _254 + 32
        while idx < mem[_254]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_254 + 196] = this.address
        mem[_254 + 228] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _254 + (32 * mem[_254]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _328 = mem[_326]
        require mem[_326] <= test266151307()
        require _326 + mem[_326] + 31 < _326 + return_data.size
        _330 = mem[_326 + mem[_326]]
        if mem[_326 + mem[_326]] > test266151307():
            revert with 0, 65
        if _326 + ceil32(return_data.size) + ceil32(32 * mem[_326 + mem[_326]]) + 1 > test266151307() or ceil32(32 * mem[_326 + mem[_326]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _326 + ceil32(return_data.size) + ceil32(32 * mem[_326 + mem[_326]]) + 1
        mem[_326 + ceil32(return_data.size)] = _330
        require return_data.size >= _328 + (32 * _330) + 32
        mem[_326 + ceil32(return_data.size) + 32 len 32 * _330] = mem[_326 + _328 + 32 len 32 * _330]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _368 = mem[_366]
        if mem[_366] <= arg5:
            revert with 0, 'no profit'
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _368
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _368
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _378 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_378] == bool(mem[_378])
        return _368
    mem[mem[64] + 100] = _225
    require ext_code.size(stor5)
    call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args stor9, address(arg4), stor8, _225
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = stor3
    require ext_code.size(address(arg3))
    call address(arg3).redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if not arg7:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _262 = mem[_257]
        if mem[_257] <= arg5:
            revert with 0, 'no profit'
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _262
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _262
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _278 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_278] == bool(mem[_278])
        return _262
    require ext_code.size(stor7)
    call stor7.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _255 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if not mem[_255]:
        revert with 0, 50
    mem[_255 + 32] = stor7
    if 1 >= mem[_255]:
        revert with 0, 50
    mem[_255 + 64] = stor6
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[_255 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_255 + 100] = eth.balance(this.address)
    mem[_255 + 132] = 1
    mem[_255 + 164] = 160
    mem[_255 + 260] = mem[_255]
    idx = 0
    s = _255 + 292
    t = _255 + 32
    while idx < mem[_255]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_255 + 196] = this.address
    mem[_255 + 228] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _255 + (32 * mem[_255]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _327 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _329 = mem[_327]
    require mem[_327] <= test266151307()
    require _327 + mem[_327] + 31 < _327 + return_data.size
    _331 = mem[_327 + mem[_327]]
    if mem[_327 + mem[_327]] > test266151307():
        revert with 0, 65
    if _327 + ceil32(return_data.size) + ceil32(32 * mem[_327 + mem[_327]]) + 1 > test266151307() or ceil32(32 * mem[_327 + mem[_327]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _327 + ceil32(return_data.size) + ceil32(32 * mem[_327 + mem[_327]]) + 1
    mem[_327 + ceil32(return_data.size)] = _331
    require return_data.size >= _329 + (32 * _331) + 32
    mem[_327 + ceil32(return_data.size) + 32 len 32 * _331] = mem[_327 + _329 + 32 len 32 * _331]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _367 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _369 = mem[_367]
    if mem[_367] <= arg5:
        revert with 0, 'no profit'
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _369
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _369
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _379 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_379] == bool(mem[_379])
    return _369
}

function sub_83df14f2(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg6 == bool(arg6)
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    if not arg6:
        mem[100] = arg5
        require ext_code.size(address(arg3))
        call address(arg3).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg5
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 164] = stor8
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(stor5)
        call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
             gas gas_remaining wei
            args stor9, address(arg4), stor8, ext_call.return_data[0], this.address
        mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(4 * ceil32(return_data.size)) + 160] = stor6
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 228] = 1
        mem[(6 * ceil32(return_data.size)) + 260] = 160
        mem[(6 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 388
        t = (4 * ceil32(return_data.size)) + 128
        while idx < mem[(4 * ceil32(return_data.size)) + 96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = this.address
        mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _120 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _122 = mem[_120]
        require mem[_120] <= test266151307()
        require _120 + mem[_120] + 31 < _120 + return_data.size
        _124 = mem[_120 + mem[_120]]
        if mem[_120 + mem[_120]] > test266151307():
            revert with 0, 65
        if _120 + ceil32(return_data.size) + ceil32(32 * mem[_120 + mem[_120]]) + 1 > test266151307() or ceil32(32 * mem[_120 + mem[_120]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _120 + ceil32(return_data.size) + ceil32(32 * mem[_120 + mem[_120]]) + 1
        mem[_120 + ceil32(return_data.size)] = _124
        require return_data.size >= _122 + (32 * _124) + 32
        mem[_120 + ceil32(return_data.size) + 32 len 32 * _124] = mem[_120 + _122 + 32 len 32 * _124]
        if 1 >= _124:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _215 = mem[_211]
        mem[mem[64] + 36] = stor6
        mem[mem[64] + 68] = _215
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = stor10
        require ext_code.size(stor5)
        call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
             gas gas_remaining wei
            args address(arg2), stor6, _215, 1, stor10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _229 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_229] <= arg5:
            revert with 0, 'no profit'
        mem[mem[64]] = mem[_229]
    else:
        mem[96] = 2
        mem[128] = stor6
        mem[160] = stor7
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg5
        mem[228] = 1
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg5, 1, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp + 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _123 = mem[192 len 4], Mask(224, 32, arg5) >> 32
        require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg5) >> 32 + 223 < return_data.size + 192
        _125 = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
        require return_data.size >= _123 + (32 * _125) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _125] = mem[_123 + 224 len 32 * _125]
        if 1 >= _125:
            revert with 0, 50
        require ext_code.size(stor7)
        call stor7.0x2e1a7d4d with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 1 >= _125:
            revert with 0, 50
        require ext_code.size(address(arg3))
        call address(arg3).mint() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _221 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _223 = mem[_221]
        mem[mem[64] + 68] = stor8
        mem[mem[64] + 100] = _223
        mem[mem[64] + 132] = this.address
        require ext_code.size(stor5)
        call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
             gas gas_remaining wei
            args stor9, address(arg4), stor8, _223, this.address
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _228 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_228] == mem[_228 + 12 len 20]
        require mem[_228 + 32] == mem[_228 + 44 len 20]
        _238 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_238]:
            revert with 0, 50
        mem[_238 + 32] = address(arg1)
        if 1 >= mem[_238]:
            revert with 0, 50
        mem[_238 + 64] = stor6
        mem[_238 + 100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_238 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _238 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[_238 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_238 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
        mem[_238 + ceil32(return_data.size) + 132] = 1
        mem[_238 + ceil32(return_data.size) + 164] = 160
        mem[_238 + ceil32(return_data.size) + 260] = mem[_238]
        idx = 0
        s = _238 + ceil32(return_data.size) + 292
        t = _238 + 32
        while idx < mem[_238]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_238 + ceil32(return_data.size) + 196] = this.address
        mem[_238 + ceil32(return_data.size) + 228] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _238 + ceil32(return_data.size) + (32 * mem[_238]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _274 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _275 = mem[_274]
        require mem[_274] <= test266151307()
        require _274 + mem[_274] + 31 < _274 + return_data.size
        _276 = mem[_274 + mem[_274]]
        if mem[_274 + mem[_274]] > test266151307():
            revert with 0, 65
        if _274 + ceil32(return_data.size) + ceil32(32 * mem[_274 + mem[_274]]) + 1 > test266151307() or ceil32(32 * mem[_274 + mem[_274]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _274 + ceil32(return_data.size) + ceil32(32 * mem[_274 + mem[_274]]) + 1
        mem[_274 + ceil32(return_data.size)] = _276
        require return_data.size >= _275 + (32 * _276) + 32
        mem[_274 + ceil32(return_data.size) + 32 len 32 * _276] = mem[_274 + _275 + 32 len 32 * _276]
        if 1 >= _276:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _303 = mem[_302]
        mem[mem[64] + 36] = stor6
        mem[mem[64] + 68] = _303
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = stor10
        require ext_code.size(stor5)
        call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
             gas gas_remaining wei
            args address(arg2), stor6, _303, 1, stor10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _310 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_310] <= arg5:
            revert with 0, 'no profit'
        mem[mem[64]] = mem[_310]
    return memory
      from mem[64]
       len 32
}

function sub_f70dd318(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg6 == bool(arg6)
    mem[100] = stor2
    mem[132] = this.address
    mem[164] = arg5
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args stor2, address(this.address), arg5
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    if not arg6:
        mem[ceil32(return_data.size) + 100] = arg5
        require ext_code.size(address(arg3))
        call address(arg3).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg5
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 164] = stor8
        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(stor5)
        call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
             gas gas_remaining wei
            args stor9, address(arg4), stor8, ext_call.return_data[0], this.address
        mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 160] = stor6
        mem[(6 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 228] = 1
        mem[(7 * ceil32(return_data.size)) + 260] = 160
        mem[(7 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 388
        t = (6 * ceil32(return_data.size)) + 128
        while idx < mem[(6 * ceil32(return_data.size)) + 96]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 292] = this.address
        mem[(7 * ceil32(return_data.size)) + 324] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _134 = mem[_132]
        require mem[_132] <= test266151307()
        require _132 + mem[_132] + 31 < _132 + return_data.size
        _136 = mem[_132 + mem[_132]]
        if mem[_132 + mem[_132]] > test266151307():
            revert with 0, 65
        if _132 + ceil32(return_data.size) + ceil32(32 * mem[_132 + mem[_132]]) + 1 > test266151307() or ceil32(32 * mem[_132 + mem[_132]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _132 + ceil32(return_data.size) + ceil32(32 * mem[_132 + mem[_132]]) + 1
        mem[_132 + ceil32(return_data.size)] = _136
        require return_data.size >= _134 + (32 * _136) + 32
        mem[_132 + ceil32(return_data.size) + 32 len 32 * _136] = mem[_132 + _134 + 32 len 32 * _136]
        if 1 >= _136:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _235 = mem[_231]
        mem[mem[64] + 36] = stor6
        mem[mem[64] + 68] = _235
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = stor10
        require ext_code.size(stor5)
        call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
             gas gas_remaining wei
            args address(arg2), stor6, _235, 1, stor10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _249 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _251 = mem[_249]
        if mem[_249] <= arg5:
            revert with 0, 'no profit'
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _251
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _251
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _261 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_261] == bool(mem[_261])
        return _251
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor6
    mem[ceil32(return_data.size) + 160] = stor7
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg5
    mem[ceil32(return_data.size) + 228] = 1
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg5, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _135 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _137 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _137
    require return_data.size >= _135 + (32 * _137) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _137] = mem[ceil32(return_data.size) + _135 + 224 len 32 * _137]
    if 1 >= _137:
        revert with 0, 50
    require ext_code.size(stor7)
    call stor7.0x2e1a7d4d with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 >= _137:
        revert with 0, 50
    require ext_code.size(address(arg3))
    call address(arg3).mint() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _241 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _243 = mem[_241]
    mem[mem[64] + 68] = stor8
    mem[mem[64] + 100] = _243
    mem[mem[64] + 132] = this.address
    require ext_code.size(stor5)
    call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args stor9, address(arg4), stor8, _243, this.address
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _248 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_248] == mem[_248 + 12 len 20]
    require mem[_248 + 32] == mem[_248 + 44 len 20]
    _258 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_258]:
        revert with 0, 50
    mem[_258 + 32] = address(arg1)
    if 1 >= mem[_258]:
        revert with 0, 50
    mem[_258 + 64] = stor6
    mem[_258 + 100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[_258 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _258 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[_258 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_258 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[_258 + ceil32(return_data.size) + 132] = 1
    mem[_258 + ceil32(return_data.size) + 164] = 160
    mem[_258 + ceil32(return_data.size) + 260] = mem[_258]
    idx = 0
    s = _258 + ceil32(return_data.size) + 292
    t = _258 + 32
    while idx < mem[_258]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_258 + ceil32(return_data.size) + 196] = this.address
    mem[_258 + ceil32(return_data.size) + 228] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 2, mem[_258 + ceil32(return_data.size) + 260 len (32 * mem[_258]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_258 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _258 + (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _303 = mem[_258 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[_258 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require _258 + ceil32(return_data.size) + mem[_258 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < _258 + ceil32(return_data.size) + return_data.size + 96
    _304 = mem[_258 + ceil32(return_data.size) + mem[_258 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[_258 + ceil32(return_data.size) + mem[_258 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 0, 65
    if _258 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_258 + ceil32(return_data.size) + mem[_258 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or ceil32(32 * mem[_258 + ceil32(return_data.size) + mem[_258 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = _258 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_258 + ceil32(return_data.size) + mem[_258 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[_258 + (2 * ceil32(return_data.size)) + 96] = _304
    require return_data.size >= _303 + (32 * _304) + 32
    mem[_258 + (2 * ceil32(return_data.size)) + 128 len 32 * _304] = mem[_258 + ceil32(return_data.size) + _303 + 128 len 32 * _304]
    if 1 >= _304:
        revert with 0, 50
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _334 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _335 = mem[_334]
    mem[mem[64] + 36] = stor6
    mem[mem[64] + 68] = _335
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor10
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args address(arg2), stor6, _335, 1, stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _342 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _343 = mem[_342]
    if mem[_342] <= arg5:
        revert with 0, 'no profit'
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _343
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _343
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _348 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_348] == bool(mem[_348])
    return _343
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8980f11f(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor1 != msg.sender:
                revert with 0, 'not owner'
            stor1 = address(arg1)
        if unknown_0x2516d6e4(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 224
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require arg3 == address(arg3)
            require arg4 == address(arg4)
            require arg7 == bool(arg7)
            mem[0] = msg.sender
            mem[32] = 0
            if not stor0[msg.sender]:
                revert with 0, 'not auth'
            mem[128] = 2
            mem[160] = stor6
            mem[192] = address(arg1)
            if 2 > !block.timestamp:
                revert with 0, 17
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg6
            mem[260] = 1
            mem[292] = 160
            mem[388] = 2
            idx = 0
            s = 420
            t = 160
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[324] = this.address
            mem[356] = block.timestamp + 2
            require ext_code.size(stor4)
            call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg6, 1, Array(len=2, data=mem[420 len 64]), address(this.address), block.timestamp + 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _503 = mem[224 len 4], Mask(224, 32, arg6) >> 32
            require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
            require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
            _509 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
            if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
            require return_data.size >= _503 + (32 * _509) + 32
            mem[ceil32(return_data.size) + 256 len 32 * _509] = mem[_503 + 256 len 32 * _509]
            if 1 >= _509:
                revert with 0, 50
            _867 = mem[ceil32(return_data.size) + 288]
            if arg5 < arg6:
                revert with 0, 17
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = address(arg2)
            mem[mem[64] + 68] = arg5 - arg6
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = stor10
            require ext_code.size(stor5)
            call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
                 gas gas_remaining wei
                args stor6, address(arg2), arg5 - arg6, 1, stor10
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _901 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _907 = mem[_901]
            mem[mem[64] + 36] = address(arg4)
            mem[mem[64] + 68] = stor8
            if _867 > mem[_901]:
                mem[mem[64] + 100] = _907
                require ext_code.size(stor5)
                call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args stor9, address(arg4), stor8, _907
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = stor3
                require ext_code.size(address(arg3))
                call address(arg3).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg7:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1009 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1009] <= arg5:
                        revert with 0, 'no profit'
                    mem[mem[64]] = mem[_1009]
                else:
                    require ext_code.size(stor7)
                    call stor7.0xd0e30db0 with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1002 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if not mem[_1002]:
                        revert with 0, 50
                    mem[_1002 + 32] = stor7
                    if 1 >= mem[_1002]:
                        revert with 0, 50
                    mem[_1002 + 64] = stor6
                    if 2 > !block.timestamp:
                        revert with 0, 17
                    mem[_1002 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1002 + 100] = eth.balance(this.address)
                    mem[_1002 + 132] = 1
                    mem[_1002 + 164] = 160
                    mem[_1002 + 260] = mem[_1002]
                    idx = 0
                    s = _1002 + 292
                    t = _1002 + 32
                    while idx < mem[_1002]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1002 + 196] = this.address
                    mem[_1002 + 228] = block.timestamp + 2
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1002 + (32 * mem[_1002]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1201 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1207 = mem[_1201]
                    require mem[_1201] <= test266151307()
                    require _1201 + mem[_1201] + 31 < _1201 + return_data.size
                    _1213 = mem[_1201 + mem[_1201]]
                    if mem[_1201 + mem[_1201]] > test266151307():
                        revert with 0, 65
                    if _1201 + ceil32(return_data.size) + ceil32(32 * mem[_1201 + mem[_1201]]) + 1 > test266151307() or ceil32(32 * mem[_1201 + mem[_1201]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1201 + ceil32(return_data.size) + ceil32(32 * mem[_1201 + mem[_1201]]) + 1
                    mem[_1201 + ceil32(return_data.size)] = _1213
                    require return_data.size >= _1207 + (32 * _1213) + 32
                    mem[_1201 + ceil32(return_data.size) + 32 len 32 * _1213] = mem[_1201 + _1207 + 32 len 32 * _1213]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1333 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1333] <= arg5:
                        revert with 0, 'no profit'
                    mem[mem[64]] = mem[_1333]
            else:
                mem[mem[64] + 100] = _867
                require ext_code.size(stor5)
                call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args stor9, address(arg4), stor8, _867
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = stor3
                require ext_code.size(address(arg3))
                call address(arg3).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not arg7:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1010 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1010] <= arg5:
                        revert with 0, 'no profit'
                    mem[mem[64]] = mem[_1010]
                else:
                    require ext_code.size(stor7)
                    call stor7.0xd0e30db0 with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1003 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if not mem[_1003]:
                        revert with 0, 50
                    mem[_1003 + 32] = stor7
                    if 1 >= mem[_1003]:
                        revert with 0, 50
                    mem[_1003 + 64] = stor6
                    if 2 > !block.timestamp:
                        revert with 0, 17
                    mem[_1003 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1003 + 100] = eth.balance(this.address)
                    mem[_1003 + 132] = 1
                    mem[_1003 + 164] = 160
                    mem[_1003 + 260] = mem[_1003]
                    idx = 0
                    s = _1003 + 292
                    t = _1003 + 32
                    while idx < mem[_1003]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1003 + 196] = this.address
                    mem[_1003 + 228] = block.timestamp + 2
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1003 + (32 * mem[_1003]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1202 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1208 = mem[_1202]
                    require mem[_1202] <= test266151307()
                    require _1202 + mem[_1202] + 31 < _1202 + return_data.size
                    _1214 = mem[_1202 + mem[_1202]]
                    if mem[_1202 + mem[_1202]] > test266151307():
                        revert with 0, 65
                    if _1202 + ceil32(return_data.size) + ceil32(32 * mem[_1202 + mem[_1202]]) + 1 > test266151307() or ceil32(32 * mem[_1202 + mem[_1202]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _1202 + ceil32(return_data.size) + ceil32(32 * mem[_1202 + mem[_1202]]) + 1
                    mem[_1202 + ceil32(return_data.size)] = _1214
                    require return_data.size >= _1208 + (32 * _1214) + 32
                    mem[_1202 + ceil32(return_data.size) + 32 len 32 * _1214] = mem[_1202 + _1208 + 32 len 32 * _1214]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1334 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1334] <= arg5:
                        revert with 0, 'no profit'
                    mem[mem[64]] = mem[_1334]
        else:
            if unknown_0x2b991746(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if not stor0[msg.sender]:
                    revert with 0, 'not auth'
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if unknown_0x4782f779(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if not stor0[msg.sender]:
                    revert with 0, 'not auth'
                call address(arg1) with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require unknown_0x83df14f2(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 192
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require arg3 == address(arg3)
            require arg4 == address(arg4)
            require arg6 == bool(arg6)
            mem[0] = msg.sender
            mem[32] = 0
            if not stor0[msg.sender]:
                revert with 0, 'not auth'
            if not arg6:
                mem[132] = arg5
                require ext_code.size(address(arg3))
                call address(arg3).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg5
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 132] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 196] = stor8
                mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 260] = this.address
                require ext_code.size(stor5)
                call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
                     gas gas_remaining wei
                    args stor9, address(arg4), stor8, ext_call.return_data[0], this.address
                mem[(2 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                mem[(4 * ceil32(return_data.size)) + 128] = 2
                mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                mem[(4 * ceil32(return_data.size)) + 192] = stor6
                mem[(4 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                if 2 > !block.timestamp:
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 260] = 1
                mem[(6 * ceil32(return_data.size)) + 292] = 160
                mem[(6 * ceil32(return_data.size)) + 388] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 420
                t = (4 * ceil32(return_data.size)) + 160
                while idx < mem[(4 * ceil32(return_data.size)) + 128]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 324] = this.address
                mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp + 2
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 480]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _498 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _504 = mem[_498]
                require mem[_498] <= test266151307()
                require _498 + mem[_498] + 31 < _498 + return_data.size
                _510 = mem[_498 + mem[_498]]
                if mem[_498 + mem[_498]] > test266151307():
                    revert with 0, 65
                if _498 + ceil32(return_data.size) + ceil32(32 * mem[_498 + mem[_498]]) + 1 > test266151307() or ceil32(32 * mem[_498 + mem[_498]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _498 + ceil32(return_data.size) + ceil32(32 * mem[_498 + mem[_498]]) + 1
                mem[_498 + ceil32(return_data.size)] = _510
                require return_data.size >= _504 + (32 * _510) + 32
                mem[_498 + ceil32(return_data.size) + 32 len 32 * _510] = mem[_498 + _504 + 32 len 32 * _510]
                if 1 >= _510:
                    revert with 0, 50
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _883 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _893 = mem[_883]
                mem[mem[64] + 36] = stor6
                mem[mem[64] + 68] = _893
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = stor10
                require ext_code.size(stor5)
                call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
                     gas gas_remaining wei
                    args address(arg2), stor6, _893, 1, stor10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _941 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_941] <= arg5:
                    revert with 0, 'no profit'
                mem[mem[64]] = mem[_941]
            else:
                mem[128] = 2
                mem[160] = stor6
                mem[192] = stor7
                if 2 > !block.timestamp:
                    revert with 0, 17
                mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[228] = arg5
                mem[260] = 1
                mem[292] = 160
                mem[388] = 2
                idx = 0
                s = 420
                t = 160
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[324] = this.address
                mem[356] = block.timestamp + 2
                require ext_code.size(stor4)
                call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, 1, Array(len=2, data=mem[420 len 64]), address(this.address), block.timestamp + 2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _505 = mem[224 len 4], Mask(224, 32, arg5) >> 32
                require mem[224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require mem[224 len 4], Mask(224, 32, arg5) >> 32 + 255 < return_data.size + 224
                _511 = mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                if mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                require return_data.size >= _505 + (32 * _511) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _511] = mem[_505 + 256 len 32 * _511]
                if 1 >= _511:
                    revert with 0, 50
                require ext_code.size(stor7)
                call stor7.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 1 >= _511:
                    revert with 0, 50
                require ext_code.size(address(arg3))
                call address(arg3).mint() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _909 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _914 = mem[_909]
                mem[mem[64] + 68] = stor8
                mem[mem[64] + 100] = _914
                mem[mem[64] + 132] = this.address
                require ext_code.size(stor5)
                call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
                     gas gas_remaining wei
                    args stor9, address(arg4), stor8, _914, this.address
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _934 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_934] == mem[_934 + 12 len 20]
                require mem[_934 + 32] == mem[_934 + 44 len 20]
                _976 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_976]:
                    revert with 0, 50
                mem[_976 + 32] = address(arg1)
                if 1 >= mem[_976]:
                    revert with 0, 50
                mem[_976 + 64] = stor6
                mem[_976 + 100] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_976 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _976 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                if 2 > !block.timestamp:
                    revert with 0, 17
                mem[_976 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_976 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                mem[_976 + ceil32(return_data.size) + 132] = 1
                mem[_976 + ceil32(return_data.size) + 164] = 160
                mem[_976 + ceil32(return_data.size) + 260] = mem[_976]
                idx = 0
                s = _976 + ceil32(return_data.size) + 292
                t = _976 + 32
                while idx < mem[_976]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_976 + ceil32(return_data.size) + 196] = this.address
                mem[_976 + ceil32(return_data.size) + 228] = block.timestamp + 2
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _976 + ceil32(return_data.size) + (32 * mem[_976]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1203 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1209 = mem[_1203]
                require mem[_1203] <= test266151307()
                require _1203 + mem[_1203] + 31 < _1203 + return_data.size
                _1215 = mem[_1203 + mem[_1203]]
                if mem[_1203 + mem[_1203]] > test266151307():
                    revert with 0, 65
                if _1203 + ceil32(return_data.size) + ceil32(32 * mem[_1203 + mem[_1203]]) + 1 > test266151307() or ceil32(32 * mem[_1203 + mem[_1203]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1203 + ceil32(return_data.size) + ceil32(32 * mem[_1203 + mem[_1203]]) + 1
                mem[_1203 + ceil32(return_data.size)] = _1215
                require return_data.size >= _1209 + (32 * _1215) + 32
                mem[_1203 + ceil32(return_data.size) + 32 len 32 * _1215] = mem[_1203 + _1209 + 32 len 32 * _1215]
                if 1 >= _1215:
                    revert with 0, 50
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1335 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1341 = mem[_1335]
                mem[mem[64] + 36] = stor6
                mem[mem[64] + 68] = _1341
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = stor10
                require ext_code.size(stor5)
                call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
                     gas gas_remaining wei
                    args address(arg2), stor6, _1341, 1, stor10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1377] <= arg5:
                    revert with 0, 'no profit'
                mem[mem[64]] = mem[_1377]
        return memory
          from mem[64]
           len 32
    if unknown_0x8980f11f(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if not stor0[msg.sender]:
            revert with 0, 'not auth'
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if unknown_0x952acb25(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 224
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        require arg3 == address(arg3)
        require arg4 == address(arg4)
        require arg7 == bool(arg7)
        mem[132] = stor2
        mem[164] = this.address
        mem[196] = arg5
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining wei
            args stor2, address(this.address), arg5
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[0] = msg.sender
        mem[32] = 0
        if not stor0[msg.sender]:
            revert with 0, 'not auth'
        mem[ceil32(return_data.size) + 128] = 2
        mem[ceil32(return_data.size) + 160] = stor6
        mem[ceil32(return_data.size) + 192] = address(arg1)
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = arg6
        mem[ceil32(return_data.size) + 260] = 1
        mem[ceil32(return_data.size) + 292] = 160
        mem[ceil32(return_data.size) + 388] = 2
        idx = 0
        s = ceil32(return_data.size) + 420
        t = ceil32(return_data.size) + 160
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 324] = this.address
        mem[ceil32(return_data.size) + 356] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, 1, Array(len=2, data=mem[ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _506 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg6) >> 32
        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg6) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
        _512 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225
        mem[(2 * ceil32(return_data.size)) + 224] = _512
        require return_data.size >= _506 + (32 * _512) + 32
        mem[(2 * ceil32(return_data.size)) + 256 len 32 * _512] = mem[ceil32(return_data.size) + _506 + 256 len 32 * _512]
        if 1 >= _512:
            revert with 0, 50
        _872 = mem[(2 * ceil32(return_data.size)) + 288]
        if arg5 < arg6:
            revert with 0, 17
        mem[mem[64] + 4] = stor6
        mem[mem[64] + 36] = address(arg2)
        mem[mem[64] + 68] = arg5 - arg6
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = stor10
        require ext_code.size(stor5)
        call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
             gas gas_remaining wei
            args stor6, address(arg2), arg5 - arg6, 1, stor10
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _904 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _910 = mem[_904]
        mem[mem[64] + 36] = address(arg4)
        mem[mem[64] + 68] = stor8
        if _872 > mem[_904]:
            mem[mem[64] + 100] = _910
            require ext_code.size(stor5)
            call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args stor9, address(arg4), stor8, _910
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = stor3
            require ext_code.size(address(arg3))
            call address(arg3).redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not arg7:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1011 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1023 = mem[_1011]
                if mem[_1011] <= arg5:
                    revert with 0, 'no profit'
                mem[mem[64] + 4] = stor2
                mem[mem[64] + 36] = _1023
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor2, _1023
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1061 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1061] == bool(mem[_1061])
                return _1023
            require ext_code.size(stor7)
            call stor7.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1005 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_1005]:
                revert with 0, 50
            mem[_1005 + 32] = stor7
            if 1 >= mem[_1005]:
                revert with 0, 50
            mem[_1005 + 64] = stor6
            if 2 > !block.timestamp:
                revert with 0, 17
            mem[_1005 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1005 + 100] = eth.balance(this.address)
            mem[_1005 + 132] = 1
            mem[_1005 + 164] = 160
            mem[_1005 + 260] = mem[_1005]
            idx = 0
            s = _1005 + 292
            t = _1005 + 32
            while idx < mem[_1005]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1005 + 196] = this.address
            mem[_1005 + 228] = block.timestamp + 2
            require ext_code.size(stor4)
            call stor4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1005 + (32 * mem[_1005]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1204 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1210 = mem[_1204]
            require mem[_1204] <= test266151307()
            require _1204 + mem[_1204] + 31 < _1204 + return_data.size
            _1216 = mem[_1204 + mem[_1204]]
            if mem[_1204 + mem[_1204]] > test266151307():
                revert with 0, 65
            if _1204 + ceil32(return_data.size) + ceil32(32 * mem[_1204 + mem[_1204]]) + 1 > test266151307() or ceil32(32 * mem[_1204 + mem[_1204]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _1204 + ceil32(return_data.size) + ceil32(32 * mem[_1204 + mem[_1204]]) + 1
            mem[_1204 + ceil32(return_data.size)] = _1216
            require return_data.size >= _1210 + (32 * _1216) + 32
            mem[_1204 + ceil32(return_data.size) + 32 len 32 * _1216] = mem[_1204 + _1210 + 32 len 32 * _1216]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1336 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1342 = mem[_1336]
            if mem[_1336] <= arg5:
                revert with 0, 'no profit'
            mem[mem[64] + 4] = stor2
            mem[mem[64] + 36] = _1342
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, _1342
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1368] == bool(mem[_1368])
            return _1342
        mem[mem[64] + 100] = _872
        require ext_code.size(stor5)
        call stor5.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args stor9, address(arg4), stor8, _872
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = stor3
        require ext_code.size(address(arg3))
        call address(arg3).redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not arg7:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1012 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1025 = mem[_1012]
            if mem[_1012] <= arg5:
                revert with 0, 'no profit'
            mem[mem[64] + 4] = stor2
            mem[mem[64] + 36] = _1025
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, _1025
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1063 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1063] == bool(mem[_1063])
            return _1025
        require ext_code.size(stor7)
        call stor7.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1006 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not mem[_1006]:
            revert with 0, 50
        mem[_1006 + 32] = stor7
        if 1 >= mem[_1006]:
            revert with 0, 50
        mem[_1006 + 64] = stor6
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[_1006 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1006 + 100] = eth.balance(this.address)
        mem[_1006 + 132] = 1
        mem[_1006 + 164] = 160
        mem[_1006 + 260] = mem[_1006]
        idx = 0
        s = _1006 + 292
        t = _1006 + 32
        while idx < mem[_1006]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1006 + 196] = this.address
        mem[_1006 + 228] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1006 + (32 * mem[_1006]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1205 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1211 = mem[_1205]
        require mem[_1205] <= test266151307()
        require _1205 + mem[_1205] + 31 < _1205 + return_data.size
        _1217 = mem[_1205 + mem[_1205]]
        if mem[_1205 + mem[_1205]] > test266151307():
            revert with 0, 65
        if _1205 + ceil32(return_data.size) + ceil32(32 * mem[_1205 + mem[_1205]]) + 1 > test266151307() or ceil32(32 * mem[_1205 + mem[_1205]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _1205 + ceil32(return_data.size) + ceil32(32 * mem[_1205 + mem[_1205]]) + 1
        mem[_1205 + ceil32(return_data.size)] = _1217
        require return_data.size >= _1211 + (32 * _1217) + 32
        mem[_1205 + ceil32(return_data.size) + 32 len 32 * _1217] = mem[_1205 + _1211 + 32 len 32 * _1217]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1337 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1343 = mem[_1337]
        if mem[_1337] <= arg5:
            revert with 0, 'no profit'
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _1343
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _1343
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1369 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1369] == bool(mem[_1369])
        return _1343
    if unknown_0xb6a5d7de(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if stor1 != msg.sender:
            revert with 0, 'not owner'
        stor0[address(arg1)] = 1
    if unknown_0xc6843d05(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if stor1 != msg.sender:
            revert with 0, 'not owner'
        stor2 = address(arg1)
    if unknown_0xf0b37c04(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if stor1 != msg.sender:
            revert with 0, 'not owner'
        stor0[address(arg1)] = 0
    require unknown_0xf70dd318(?????) == uint32(call.func_hash) >> 224
    require not msg.value
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg6 == bool(arg6)
    mem[132] = stor2
    mem[164] = this.address
    mem[196] = arg5
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining wei
        args stor2, address(this.address), arg5
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    if not arg6:
        mem[ceil32(return_data.size) + 132] = arg5
        require ext_code.size(address(arg3))
        call address(arg3).mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg5
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 196] = stor8
        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 260] = this.address
        require ext_code.size(stor5)
        call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
             gas gas_remaining wei
            args stor9, address(arg4), stor8, ext_call.return_data[0], this.address
        mem[(4 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        mem[(6 * ceil32(return_data.size)) + 128] = 2
        mem[(6 * ceil32(return_data.size)) + 160] = address(arg1)
        mem[(6 * ceil32(return_data.size)) + 192] = stor6
        mem[(6 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        if 2 > !block.timestamp:
            revert with 0, 17
        mem[(7 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 260] = 1
        mem[(7 * ceil32(return_data.size)) + 292] = 160
        mem[(7 * ceil32(return_data.size)) + 388] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 420
        t = (6 * ceil32(return_data.size)) + 160
        while idx < mem[(6 * ceil32(return_data.size)) + 128]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 324] = this.address
        mem[(7 * ceil32(return_data.size)) + 356] = block.timestamp + 2
        require ext_code.size(stor4)
        call stor4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 480]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _501 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _507 = mem[_501]
        require mem[_501] <= test266151307()
        require _501 + mem[_501] + 31 < _501 + return_data.size
        _513 = mem[_501 + mem[_501]]
        if mem[_501 + mem[_501]] > test266151307():
            revert with 0, 65
        if _501 + ceil32(return_data.size) + ceil32(32 * mem[_501 + mem[_501]]) + 1 > test266151307() or ceil32(32 * mem[_501 + mem[_501]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _501 + ceil32(return_data.size) + ceil32(32 * mem[_501 + mem[_501]]) + 1
        mem[_501 + ceil32(return_data.size)] = _513
        require return_data.size >= _507 + (32 * _513) + 32
        mem[_501 + ceil32(return_data.size) + 32 len 32 * _513] = mem[_501 + _507 + 32 len 32 * _513]
        if 1 >= _513:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _887 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _894 = mem[_887]
        mem[mem[64] + 36] = stor6
        mem[mem[64] + 68] = _894
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = stor10
        require ext_code.size(stor5)
        call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
             gas gas_remaining wei
            args address(arg2), stor6, _894, 1, stor10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _945 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _956 = mem[_945]
        if mem[_945] <= arg5:
            revert with 0, 'no profit'
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = _956
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args stor2, _956
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _996 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_996] == bool(mem[_996])
        return _956
    mem[ceil32(return_data.size) + 128] = 2
    mem[ceil32(return_data.size) + 160] = stor6
    mem[ceil32(return_data.size) + 192] = stor7
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg5
    mem[ceil32(return_data.size) + 260] = 1
    mem[ceil32(return_data.size) + 292] = 160
    mem[ceil32(return_data.size) + 388] = 2
    idx = 0
    s = ceil32(return_data.size) + 420
    t = ceil32(return_data.size) + 160
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 324] = this.address
    mem[ceil32(return_data.size) + 356] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg5, 1, Array(len=2, data=mem[ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _508 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
    _514 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = _514
    require return_data.size >= _508 + (32 * _514) + 32
    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _514] = mem[ceil32(return_data.size) + _508 + 256 len 32 * _514]
    if 1 >= _514:
        revert with 0, 50
    require ext_code.size(stor7)
    call stor7.0x2e1a7d4d with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 >= _514:
        revert with 0, 50
    require ext_code.size(address(arg3))
    call address(arg3).mint() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _912 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _916 = mem[_912]
    mem[mem[64] + 68] = stor8
    mem[mem[64] + 100] = _916
    mem[mem[64] + 132] = this.address
    require ext_code.size(stor5)
    call stor5.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args stor9, address(arg4), stor8, _916, this.address
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _938 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_938] == mem[_938 + 12 len 20]
    require mem[_938 + 32] == mem[_938 + 44 len 20]
    _979 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_979]:
        revert with 0, 50
    mem[_979 + 32] = address(arg1)
    if 1 >= mem[_979]:
        revert with 0, 50
    mem[_979 + 64] = stor6
    mem[_979 + 100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[_979 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _979 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[_979 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_979 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[_979 + ceil32(return_data.size) + 132] = 1
    mem[_979 + ceil32(return_data.size) + 164] = 160
    mem[_979 + ceil32(return_data.size) + 260] = mem[_979]
    idx = 0
    s = _979 + ceil32(return_data.size) + 292
    t = _979 + 32
    while idx < mem[_979]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_979 + ceil32(return_data.size) + 196] = this.address
    mem[_979 + ceil32(return_data.size) + 228] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _979 + ceil32(return_data.size) + (32 * mem[_979]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1206 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1212 = mem[_1206]
    require mem[_1206] <= test266151307()
    require _1206 + mem[_1206] + 31 < _1206 + return_data.size
    _1218 = mem[_1206 + mem[_1206]]
    if mem[_1206 + mem[_1206]] > test266151307():
        revert with 0, 65
    if _1206 + ceil32(return_data.size) + ceil32(32 * mem[_1206 + mem[_1206]]) + 1 > test266151307() or ceil32(32 * mem[_1206 + mem[_1206]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _1206 + ceil32(return_data.size) + ceil32(32 * mem[_1206 + mem[_1206]]) + 1
    mem[_1206 + ceil32(return_data.size)] = _1218
    require return_data.size >= _1212 + (32 * _1218) + 32
    mem[_1206 + ceil32(return_data.size) + 32 len 32 * _1218] = mem[_1206 + _1212 + 32 len 32 * _1218]
    if 1 >= _1218:
        revert with 0, 50
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1338 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1344 = mem[_1338]
    mem[mem[64] + 36] = stor6
    mem[mem[64] + 68] = _1344
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = stor10
    require ext_code.size(stor5)
    call stor5.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args address(arg2), stor6, _1344, 1, stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1378 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1384 = mem[_1378]
    if mem[_1378] <= arg5:
        revert with 0, 'no profit'
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _1384
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _1384
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1393 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1393] == bool(mem[_1393])
    return _1384
}



}
