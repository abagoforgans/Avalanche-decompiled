contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;
uint256 stor3;
address stor4;
address stor5;

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

function sub_5afa58a8(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[100] = stor2
    mem[132] = this.address
    mem[164] = arg7
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args stor2, this.address, arg7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).mint(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg5)
    mem[ceil32(return_data.size) + 160] = stor5
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = 1
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 1, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _45 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _46 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _45 + (32 * _46) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _46] = mem[ceil32(return_data.size) + _45 + 224 len 32 * _46]
    mem[ceil32(return_data.size) + 128] = address(arg6)
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _93 = mem[_92]
    require mem[_92] <= test266151307()
    require _92 + mem[_92] + 31 < _92 + return_data.size
    _94 = mem[_92 + mem[_92]]
    if mem[_92 + mem[_92]] > test266151307():
        revert with 0, 65
    if _92 + ceil32(return_data.size) + ceil32(32 * mem[_92 + mem[_92]]) + 1 > test266151307() or ceil32(32 * mem[_92 + mem[_92]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _92 + ceil32(return_data.size) + ceil32(32 * mem[_92 + mem[_92]]) + 1
    mem[_92 + ceil32(return_data.size)] = _94
    require return_data.size >= _93 + (32 * _94) + 32
    mem[_92 + ceil32(return_data.size) + 32 len 32 * _94] = mem[_92 + _93 + 32 len 32 * _94]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _111 = mem[_110]
    require mem[_110] > arg7
    if mem[_110] < arg7:
        revert with 0, 17
    mem[mem[64]] = mem[_110] - arg7
    emit Profit(mem[mem[64]]);
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _111
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _111
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _116 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_116] == bool(mem[_116])
}

function sub_db99d66f(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'not auth'
    mem[100] = stor2
    mem[132] = this.address
    mem[164] = arg7
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args stor2, this.address, arg7
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor5
    mem[ceil32(return_data.size) + 160] = address(arg5)
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = stor3
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, stor3, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _45 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _46 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require return_data.size >= _45 + (32 * _46) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _46] = mem[ceil32(return_data.size) + _45 + 224 len 32 * _46]
    mem[ceil32(return_data.size) + 160] = address(arg6)
    if 2 > !block.timestamp:
        revert with 0, 17
    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = stor3
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 2
    require ext_code.size(stor4)
    call stor4.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, stor3, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _96 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _97 = mem[_96]
    require mem[_96] <= test266151307()
    require _96 + mem[_96] + 31 < _96 + return_data.size
    _98 = mem[_96 + mem[_96]]
    if mem[_96 + mem[_96]] > test266151307():
        revert with 0, 65
    if _96 + ceil32(return_data.size) + ceil32(32 * mem[_96 + mem[_96]]) + 1 > test266151307() or ceil32(32 * mem[_96 + mem[_96]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _96 + ceil32(return_data.size) + ceil32(32 * mem[_96 + mem[_96]]) + 1
    mem[_96 + ceil32(return_data.size)] = _98
    require return_data.size >= _97 + (32 * _98) + 32
    mem[_96 + ceil32(return_data.size) + 32 len 32 * _98] = mem[_96 + _97 + 32 len 32 * _98]
    mem[mem[64] + 36] = arg3
    mem[mem[64] + 68] = arg4
    require ext_code.size(address(arg1))
    call address(arg1).burn(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _118 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _119 = mem[_118]
    require mem[_118] > arg7
    if mem[_118] < arg7:
        revert with 0, 17
    mem[mem[64]] = mem[_118] - arg7
    emit Profit(mem[mem[64]]);
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _119
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _119
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_124] == bool(mem[_124])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8980f11f(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if stor1 != msg.sender:
                    revert with 0, 'not owner'
                stor1 = address(arg1)
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
                else:
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
                    else:
                        require unknown_0x5afa58a8(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 224
                        require arg1 == address(arg1)
                        require arg5 == address(arg5)
                        require arg6 == address(arg6)
                        mem[0] = msg.sender
                        mem[32] = 0
                        if not stor0[msg.sender]:
                            revert with 0, 'not auth'
                        mem[132] = stor2
                        mem[164] = this.address
                        mem[196] = arg7
                        require ext_code.size(stor5)
                        call stor5.0x23b872dd with:
                             gas gas_remaining wei
                            args stor2, this.address, arg7
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(address(arg1))
                        call address(arg1).mint(uint256 arg1, uint256 arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args arg2, arg3, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 128] = 2
                        mem[ceil32(return_data.size) + 160] = address(arg5)
                        mem[ceil32(return_data.size) + 192] = stor5
                        if 2 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg2
                        mem[ceil32(return_data.size) + 260] = 1
                        mem[ceil32(return_data.size) + 292] = 160
                        mem[ceil32(return_data.size) + 388] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 160
                        t = ceil32(return_data.size) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp + 2
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 1, Array(len=2, data=mem[ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _117 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _119 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
                        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                        require return_data.size >= _117 + (32 * _119) + 32
                        mem[(2 * ceil32(return_data.size)) + 256 len 32 * _119] = mem[ceil32(return_data.size) + _117 + 256 len 32 * _119]
                        mem[ceil32(return_data.size) + 160] = address(arg6)
                        if 2 > !block.timestamp:
                            revert with 0, 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = 1
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 160
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 2
                        require ext_code.size(stor4)
                        call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _215 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _217 = mem[_215]
                        require mem[_215] <= test266151307()
                        require _215 + mem[_215] + 31 < _215 + return_data.size
                        _219 = mem[_215 + mem[_215]]
                        if mem[_215 + mem[_215]] > test266151307():
                            revert with 0, 65
                        if _215 + ceil32(return_data.size) + ceil32(32 * mem[_215 + mem[_215]]) + 1 > test266151307() or ceil32(32 * mem[_215 + mem[_215]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _215 + ceil32(return_data.size) + ceil32(32 * mem[_215 + mem[_215]]) + 1
                        mem[_215 + ceil32(return_data.size)] = _219
                        require return_data.size >= _217 + (32 * _219) + 32
                        mem[_215 + ceil32(return_data.size) + 32 len 32 * _219] = mem[_215 + _217 + 32 len 32 * _219]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor5)
                        staticcall stor5.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _256 = mem[_254]
                        require mem[_254] > arg7
                        if mem[_254] < arg7:
                            revert with 0, 17
                        mem[mem[64]] = mem[_254] - arg7
                        emit Profit(mem[mem[64]]);
                        mem[mem[64] + 4] = stor2
                        mem[mem[64] + 36] = _256
                        require ext_code.size(stor5)
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor2, _256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_263] == bool(mem[_263])
        else:
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
            else:
                if unknown_0xb6a5d7de(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if stor1 != msg.sender:
                        revert with 0, 'not owner'
                    stor0[address(arg1)] = 1
                else:
                    if unknown_0xc6843d05(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if stor1 != msg.sender:
                            revert with 0, 'not owner'
                        stor2 = address(arg1)
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xdb99d66f(?????):
                            require unknown_0xf0b37c04(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if stor1 != msg.sender:
                                revert with 0, 'not owner'
                            stor0[address(arg1)] = 0
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 224
                            require arg1 == address(arg1)
                            require arg5 == address(arg5)
                            require arg6 == address(arg6)
                            mem[0] = msg.sender
                            mem[32] = 0
                            if not stor0[msg.sender]:
                                revert with 0, 'not auth'
                            mem[132] = stor2
                            mem[164] = this.address
                            mem[196] = arg7
                            require ext_code.size(stor5)
                            call stor5.0x23b872dd with:
                                 gas gas_remaining wei
                                args stor2, this.address, arg7
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 128] = 2
                            mem[ceil32(return_data.size) + 160] = stor5
                            mem[ceil32(return_data.size) + 192] = address(arg5)
                            if 2 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = arg2
                            mem[ceil32(return_data.size) + 260] = stor3
                            mem[ceil32(return_data.size) + 292] = 160
                            mem[ceil32(return_data.size) + 388] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 160
                            t = ceil32(return_data.size) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 324] = this.address
                            mem[ceil32(return_data.size) + 356] = block.timestamp + 2
                            require ext_code.size(stor4)
                            call stor4.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, stor3, Array(len=2, data=mem[ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _118 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _120 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                            require return_data.size >= _118 + (32 * _120) + 32
                            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _120] = mem[ceil32(return_data.size) + _118 + 256 len 32 * _120]
                            mem[ceil32(return_data.size) + 192] = address(arg6)
                            if 2 > !block.timestamp:
                                revert with 0, 17
                            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg2
                            mem[mem[64] + 36] = stor3
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 160
                            t = mem[64] + 196
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 2
                            require ext_code.size(stor4)
                            call stor4.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, stor3, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp + 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _216 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _218 = mem[_216]
                            require mem[_216] <= test266151307()
                            require _216 + mem[_216] + 31 < _216 + return_data.size
                            _220 = mem[_216 + mem[_216]]
                            if mem[_216 + mem[_216]] > test266151307():
                                revert with 0, 65
                            if _216 + ceil32(return_data.size) + ceil32(32 * mem[_216 + mem[_216]]) + 1 > test266151307() or ceil32(32 * mem[_216 + mem[_216]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _216 + ceil32(return_data.size) + ceil32(32 * mem[_216 + mem[_216]]) + 1
                            mem[_216 + ceil32(return_data.size)] = _220
                            require return_data.size >= _218 + (32 * _220) + 32
                            mem[_216 + ceil32(return_data.size) + 32 len 32 * _220] = mem[_216 + _218 + 32 len 32 * _220]
                            mem[mem[64] + 36] = arg3
                            mem[mem[64] + 68] = arg4
                            require ext_code.size(address(arg1))
                            call address(arg1).burn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args arg2, arg3, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor5)
                            staticcall stor5.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _257 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _258 = mem[_257]
                            require mem[_257] > arg7
                            if mem[_257] < arg7:
                                revert with 0, 17
                            mem[mem[64]] = mem[_257] - arg7
                            emit Profit(mem[mem[64]]);
                            mem[mem[64] + 4] = stor2
                            mem[mem[64] + 36] = _258
                            require ext_code.size(stor5)
                            call stor5.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor2, _258
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _269 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_269] == bool(mem[_269])
}



}
