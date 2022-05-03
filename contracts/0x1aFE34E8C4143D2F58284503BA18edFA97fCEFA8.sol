contract main {




// =====================  Runtime code  =====================


const MAX_INT = -1


uint8 stor0;
uint256 stor1; offset 32
uint256 stor1;

function _fallback() payable {
    revert
}

function isHoneypotETH(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    uint256(stor1.field_0) = msg.value
    mem[96] = 2
    require ext_code.size(arg2)
    staticcall arg2.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = arg1
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = uint256(stor1.field_0)
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor1.field_0), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _53 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32)
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 223 < ceil32(return_data.size) + return_data.size + 192
    _54 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192]
    require _53 + (32 * _54) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _53 + 224
    s = (2 * ceil32(return_data.size)) + 224
    while idx < ceil32(return_data.size) + _53 + (32 * _54) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _54:
        revert with 'NH{q', 50
    _116 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = 2
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = block.timestamp
    require ext_code.size(arg2)
    call arg2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value uint256(stor1.field_0) wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[mem[64] + 164 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _181 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _182 = mem[_181]
    require mem[_181] == mem[_181]
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = -1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_185] == bool(mem[_185])
        _190 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_190 + 32 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[_190]:
            revert with 'NH{q', 50
        mem[_190 + 32] = arg1
        require ext_code.size(arg2)
        staticcall arg2.WETH() with:
                gas gas_remaining wei
        mem[_190 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _190 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_190]:
            revert with 'NH{q', 50
        mem[_190 + 64] = ext_call.return_data[12 len 20]
        mem[_190 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_190 + ceil32(return_data.size) + 100] = _182
        mem[_190 + ceil32(return_data.size) + 132] = 64
        mem[_190 + ceil32(return_data.size) + 164] = mem[_190]
        idx = 0
        s = _190 + 32
        t = _190 + ceil32(return_data.size) + 196
        while idx < mem[_190]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _182, 64, mem[_190 + ceil32(return_data.size) + 164 len (32 * mem[_190]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_190 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _190 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _245 = mem[_190 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _182) >> 32
        require mem[_190 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _182) >> 32 <= test266151307()
        require _190 + ceil32(return_data.size) + mem[_190 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _182) >> 32 + 127 < _190 + ceil32(return_data.size) + return_data.size + 96
        _247 = mem[_190 + ceil32(return_data.size) + mem[_190 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _182) >> 32 + 96]
        if mem[_190 + ceil32(return_data.size) + mem[_190 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _182) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if _190 + (2 * ceil32(return_data.size)) + floor32(mem[_190 + ceil32(return_data.size) + mem[_190 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _182) >> 32 + 96]) + 97 > test266151307() or floor32(mem[_190 + ceil32(return_data.size) + mem[_190 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _182) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _190 + (2 * ceil32(return_data.size)) + floor32(mem[_190 + ceil32(return_data.size) + mem[_190 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _182) >> 32 + 96]) + 97
        mem[_190 + (2 * ceil32(return_data.size)) + 96] = mem[_190 + ceil32(return_data.size) + mem[_190 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _182) >> 32 + 96]
        require _245 + (32 * _247) + 32 <= return_data.size
        idx = _190 + ceil32(return_data.size) + _245 + 128
        s = _190 + (2 * ceil32(return_data.size)) + 128
        while idx < _190 + ceil32(return_data.size) + _245 + (32 * _247) + 128:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _247:
            revert with 'NH{q', 50
        _274 = mem[_190 + (2 * ceil32(return_data.size)) + 160]
        stor0 = 1
        mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _182
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _277 = mem[_190]
        mem[mem[64] + 164] = mem[_190]
        idx = 0
        s = _190 + 32
        t = mem[64] + 196
        while idx < _277:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _182, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _277) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        return _116, _182, _274, 0
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = _182
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _182
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == bool(mem[_189])
    _197 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_197 + 32 len 64] = call.data[calldata.size len 64]
    if 0 >= mem[_197]:
        revert with 'NH{q', 50
    mem[_197 + 32] = arg1
    require ext_code.size(arg2)
    staticcall arg2.WETH() with:
            gas gas_remaining wei
    mem[_197 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _197 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 1 >= mem[_197]:
        revert with 'NH{q', 50
    mem[_197 + 64] = ext_call.return_data[12 len 20]
    mem[_197 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_197 + ceil32(return_data.size) + 100] = _182
    mem[_197 + ceil32(return_data.size) + 132] = 64
    mem[_197 + ceil32(return_data.size) + 164] = mem[_197]
    idx = 0
    s = _197 + 32
    t = _197 + ceil32(return_data.size) + 196
    while idx < mem[_197]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg2)
    staticcall arg2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _197 + ceil32(return_data.size) + (32 * mem[_197]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _242 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _244 = mem[_242]
    require mem[_242] <= test266151307()
    require _242 + mem[_242] + 31 < _242 + return_data.size
    _246 = mem[_242 + mem[_242]]
    if mem[_242 + mem[_242]] > test266151307():
        revert with 'NH{q', 65
    if _242 + ceil32(return_data.size) + floor32(mem[_242 + mem[_242]]) + 1 > test266151307() or floor32(mem[_242 + mem[_242]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _242 + ceil32(return_data.size) + floor32(mem[_242 + mem[_242]]) + 1
    mem[_242 + ceil32(return_data.size)] = _246
    require _244 + (32 * _246) + 32 <= return_data.size
    idx = _242 + _244 + 32
    s = _242 + ceil32(return_data.size) + 32
    while idx < _242 + _244 + (32 * _246) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _246:
        revert with 'NH{q', 50
    _272 = mem[_242 + ceil32(return_data.size) + 64]
    stor0 = 1
    mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _182
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _276 = mem[_197]
    mem[mem[64] + 164] = mem[_197]
    idx = 0
    s = _197 + 32
    t = mem[64] + 196
    while idx < _276:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg2)
    call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _182, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _276) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 'NH{q', 17
    return _116, _182, _272, 0
}

function isHoneypotToken(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 2
    require ext_code.size(arg2)
    staticcall arg2.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = arg3
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = this.address
    mem[ceil32(return_data.size) + 292] = block.timestamp
    require ext_code.size(arg2)
    call arg2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = -1
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    uint256(stor1.field_0) = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = 2
    mem[(4 * ceil32(return_data.size)) + 224] = arg3
    mem[(4 * ceil32(return_data.size)) + 256] = arg1
    mem[(4 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 292] = uint256(stor1.field_0)
    mem[(4 * ceil32(return_data.size)) + 324] = 64
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 224
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor1.field_0), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _79 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32)
    require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
    _80 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288]) + 289 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288]) + 289
    mem[(6 * ceil32(return_data.size)) + 288] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288]
    require _79 + (32 * _80) + 32 <= return_data.size
    idx = (4 * ceil32(return_data.size)) + _79 + 320
    s = (6 * ceil32(return_data.size)) + 320
    while idx < (4 * ceil32(return_data.size)) + _79 + (32 * _80) + 320:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _80:
        revert with 'NH{q', 50
    _140 = mem[(6 * ceil32(return_data.size)) + 352]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = uint256(stor1.field_0)
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 224
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args uint256(stor1.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _204 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _205 = mem[_204]
    require mem[_204] == mem[_204]
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = -1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_208] == bool(mem[_208])
        _213 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_213]:
            revert with 'NH{q', 50
        mem[_213 + 32] = arg1
        if 1 >= mem[_213]:
            revert with 'NH{q', 50
        mem[_213 + 64] = arg3
        mem[_213 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_213 + 100] = _205
        mem[_213 + 132] = 64
        mem[_213 + 164] = mem[_213]
        idx = 0
        s = _213 + 32
        t = _213 + 196
        while idx < mem[_213]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _213 + (32 * mem[_213]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _271 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _273 = mem[_271]
        require mem[_271] <= test266151307()
        require _271 + mem[_271] + 31 < _271 + return_data.size
        _275 = mem[_271 + mem[_271]]
        if mem[_271 + mem[_271]] > test266151307():
            revert with 'NH{q', 65
        if _271 + ceil32(return_data.size) + floor32(mem[_271 + mem[_271]]) + 1 > test266151307() or floor32(mem[_271 + mem[_271]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _271 + ceil32(return_data.size) + floor32(mem[_271 + mem[_271]]) + 1
        mem[_271 + ceil32(return_data.size)] = _275
        require _273 + (32 * _275) + 32 <= return_data.size
        idx = _271 + _273 + 32
        s = _271 + ceil32(return_data.size) + 32
        while idx < _271 + _273 + (32 * _275) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _275:
            revert with 'NH{q', 50
        _318 = mem[_271 + ceil32(return_data.size) + 64]
        stor0 = 1
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _323 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _325 = mem[_323]
        require mem[_323] == mem[_323]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _205
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _329 = mem[_213]
        mem[mem[64] + 164] = mem[_213]
        idx = 0
        s = _213 + 32
        t = mem[64] + 196
        while idx < _329:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(arg2)
        call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _205, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _329) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _355 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_355] == mem[_355]
        if mem[_355] < _325:
            revert with 'NH{q', 17
        return _140, _205, _318, mem[_355] - _325
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = _205
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), _205
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _212 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_212] == bool(mem[_212])
    _219 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_219]:
        revert with 'NH{q', 50
    mem[_219 + 32] = arg1
    if 1 >= mem[_219]:
        revert with 'NH{q', 50
    mem[_219 + 64] = arg3
    mem[_219 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_219 + 100] = _205
    mem[_219 + 132] = 64
    mem[_219 + 164] = mem[_219]
    idx = 0
    s = _219 + 32
    t = _219 + 196
    while idx < mem[_219]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg2)
    staticcall arg2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _219 + (32 * mem[_219]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _270 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _272 = mem[_270]
    require mem[_270] <= test266151307()
    require _270 + mem[_270] + 31 < _270 + return_data.size
    _274 = mem[_270 + mem[_270]]
    if mem[_270 + mem[_270]] > test266151307():
        revert with 'NH{q', 65
    if _270 + ceil32(return_data.size) + floor32(mem[_270 + mem[_270]]) + 1 > test266151307() or floor32(mem[_270 + mem[_270]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _270 + ceil32(return_data.size) + floor32(mem[_270 + mem[_270]]) + 1
    mem[_270 + ceil32(return_data.size)] = _274
    require _272 + (32 * _274) + 32 <= return_data.size
    idx = _270 + _272 + 32
    s = _270 + ceil32(return_data.size) + 32
    while idx < _270 + _272 + (32 * _274) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _274:
        revert with 'NH{q', 50
    _316 = mem[_270 + ceil32(return_data.size) + 64]
    stor0 = 1
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _322 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _324 = mem[_322]
    require mem[_322] == mem[_322]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _205
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _328 = mem[_219]
    mem[mem[64] + 164] = mem[_219]
    idx = 0
    s = _219 + 32
    t = mem[64] + 196
    while idx < _328:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _205, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _328) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 0
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _354 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_354] == mem[_354]
    if mem[_354] < _324:
        revert with 'NH{q', 17
    return _140, _205, _316, mem[_354] - _324
}



}
