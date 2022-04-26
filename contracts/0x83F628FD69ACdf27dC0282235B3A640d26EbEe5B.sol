contract main {




// =====================  Runtime code  =====================


const MAX_INT = -1


uint8 stor0;
uint256 stor1; offset 32
uint256 stor1;

function isHoneypotETH(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    uint256(stor1.field_0) = msg.value
    mem[96] = 2
    require ext_code.size(arg2)
    staticcall arg2.WAVAX() with:
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
    staticcall arg2.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args uint256(stor1.field_0), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _86 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32)
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 223 < ceil32(return_data.size) + return_data.size + 192
    _87 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 0, stor1.field_32) + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _87
    require (32 * _87) + _86 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _87)] = mem[ceil32(return_data.size) + _86 + 224 len ceil32(32 * _87)]
    if 1 >= _87:
        revert with 0, 50
    _158 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
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
    call arg2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value uint256(stor1.field_0) wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[mem[64] + 164 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _227 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _228 = mem[_227]
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = -1
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_231] == bool(mem[_231])
        _237 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_237 + 32 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[_237]:
            revert with 0, 50
        mem[_237 + 32] = arg1
        require ext_code.size(arg2)
        staticcall arg2.WAVAX() with:
                gas gas_remaining wei
        mem[_237 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _237 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_237]:
            revert with 0, 50
        mem[_237 + 64] = ext_call.return_data[12 len 20]
        mem[_237 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_237 + ceil32(return_data.size) + 100] = _228
        mem[_237 + ceil32(return_data.size) + 132] = 64
        mem[_237 + ceil32(return_data.size) + 164] = mem[_237]
        idx = 0
        s = _237 + 32
        t = _237 + ceil32(return_data.size) + 196
        while idx < mem[_237]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _228, 64, mem[_237 + ceil32(return_data.size) + 164 len (32 * mem[_237]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_237 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _237 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _292 = mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _228) >> 32
        require mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _228) >> 32 <= test266151307()
        require _237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _228) >> 32 + 127 < _237 + ceil32(return_data.size) + return_data.size + 96
        _294 = mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _228) >> 32 + 96]
        if mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _228) >> 32 + 96] > test266151307():
            revert with 0, 65
        if _237 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _228) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _228) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = _237 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_237 + ceil32(return_data.size) + mem[_237 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _228) >> 32 + 96]) + 97
        mem[_237 + (2 * ceil32(return_data.size)) + 96] = _294
        require (32 * _294) + _292 + 32 <= return_data.size
        mem[_237 + (2 * ceil32(return_data.size)) + 128 len ceil32(32 * _294)] = mem[_237 + ceil32(return_data.size) + _292 + 128 len ceil32(32 * _294)]
        if 1 >= _294:
            revert with 0, 50
        _321 = mem[_237 + (2 * ceil32(return_data.size)) + 160]
        stor0 = 1
        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _228
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _324 = mem[_237]
        mem[mem[64] + 164] = mem[_237]
        idx = 0
        s = _237 + 32
        t = mem[64] + 196
        while idx < _324:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        call arg2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _228, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _324) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        return _158, _228, _321, 0
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = _228
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), _228
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _235 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_235] == bool(mem[_235])
    _239 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_239 + 32 len 64] = call.data[calldata.size len 64]
    if 0 >= mem[_239]:
        revert with 0, 50
    mem[_239 + 32] = arg1
    require ext_code.size(arg2)
    staticcall arg2.WAVAX() with:
            gas gas_remaining wei
    mem[_239 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _239 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 1 >= mem[_239]:
        revert with 0, 50
    mem[_239 + 64] = ext_call.return_data[12 len 20]
    mem[_239 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_239 + ceil32(return_data.size) + 100] = _228
    mem[_239 + ceil32(return_data.size) + 132] = 64
    mem[_239 + ceil32(return_data.size) + 164] = mem[_239]
    idx = 0
    s = _239 + 32
    t = _239 + ceil32(return_data.size) + 196
    while idx < mem[_239]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg2)
    staticcall arg2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _239 + ceil32(return_data.size) + (32 * mem[_239]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _289 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _291 = mem[_289]
    require mem[_289] <= test266151307()
    require _289 + mem[_289] + 31 < _289 + return_data.size
    _293 = mem[_289 + mem[_289]]
    if mem[_289 + mem[_289]] > test266151307():
        revert with 0, 65
    if _289 + ceil32(return_data.size) + ceil32(32 * mem[_289 + mem[_289]]) + 1 > test266151307() or ceil32(32 * mem[_289 + mem[_289]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _289 + ceil32(return_data.size) + ceil32(32 * mem[_289 + mem[_289]]) + 1
    mem[_289 + ceil32(return_data.size)] = _293
    require (32 * _293) + _291 + 32 <= return_data.size
    mem[_289 + ceil32(return_data.size) + 32 len ceil32(32 * _293)] = mem[_289 + _291 + 32 len ceil32(32 * _293)]
    if 1 >= _293:
        revert with 0, 50
    _319 = mem[_289 + ceil32(return_data.size) + 64]
    stor0 = 1
    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _228
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _323 = mem[_239]
    mem[mem[64] + 164] = mem[_239]
    idx = 0
    s = _239 + 32
    t = mem[64] + 196
    while idx < _323:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg2)
    call arg2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _228, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _323) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    return _158, _228, _319, 0
}

function isHoneypotToken(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 2
    require ext_code.size(arg2)
    staticcall arg2.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = arg3
    mem[ceil32(return_data.size) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
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
    call arg2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = -1
    require ext_code.size(arg3)
    call arg3.approve(address rg1, uint256 rg2) with:
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
    staticcall arg2.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args uint256(stor1.field_0), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _205 = mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32)
    require mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
    _206 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288]) + 289 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 0, stor1.field_32) + 288]) + 289
    mem[(6 * ceil32(return_data.size)) + 288] = _206
    require (32 * _206) + _205 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 320 len ceil32(32 * _206)] = mem[(4 * ceil32(return_data.size)) + _205 + 320 len ceil32(32 * _206)]
    if 1 >= _206:
        revert with 0, 50
    _285 = mem[(6 * ceil32(return_data.size)) + 352]
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
    call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args uint256(stor1.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _362 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _363 = mem[_362]
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = -1
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_366] == bool(mem[_366])
        _372 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_372]:
            revert with 0, 50
        mem[_372 + 32] = arg1
        if 1 >= mem[_372]:
            revert with 0, 50
        mem[_372 + 64] = arg3
        mem[_372 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_372 + 100] = _363
        mem[_372 + 132] = 64
        mem[_372 + 164] = mem[_372]
        idx = 0
        s = _372 + 32
        t = _372 + 196
        while idx < mem[_372]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        staticcall arg2.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _372 + (32 * mem[_372]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _433 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _435 = mem[_433]
        require mem[_433] <= test266151307()
        require _433 + mem[_433] + 31 < _433 + return_data.size
        _437 = mem[_433 + mem[_433]]
        if mem[_433 + mem[_433]] > test266151307():
            revert with 0, 65
        if _433 + ceil32(return_data.size) + ceil32(32 * mem[_433 + mem[_433]]) + 1 > test266151307() or ceil32(32 * mem[_433 + mem[_433]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _433 + ceil32(return_data.size) + ceil32(32 * mem[_433 + mem[_433]]) + 1
        mem[_433 + ceil32(return_data.size)] = _437
        require (32 * _437) + _435 + 32 <= return_data.size
        mem[_433 + ceil32(return_data.size) + 32 len ceil32(32 * _437)] = mem[_433 + _435 + 32 len ceil32(32 * _437)]
        if 1 >= _437:
            revert with 0, 50
        _481 = mem[_433 + ceil32(return_data.size) + 64]
        stor0 = 1
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _485 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _487 = mem[_485]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _363
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _491 = mem[_372]
        mem[mem[64] + 164] = mem[_372]
        idx = 0
        s = _372 + 32
        t = mem[64] + 196
        while idx < _491:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(arg2)
        call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _363, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _491) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _517 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_517] < _487:
            revert with 0, 17
        return _285, _363, _481, mem[_517] - _487
    mem[mem[64] + 4] = arg2
    mem[mem[64] + 36] = _363
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), _363
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _370 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_370] == bool(mem[_370])
    _374 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_374]:
        revert with 0, 50
    mem[_374 + 32] = arg1
    if 1 >= mem[_374]:
        revert with 0, 50
    mem[_374 + 64] = arg3
    mem[_374 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_374 + 100] = _363
    mem[_374 + 132] = 64
    mem[_374 + 164] = mem[_374]
    idx = 0
    s = _374 + 32
    t = _374 + 196
    while idx < mem[_374]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg2)
    staticcall arg2.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _374 + (32 * mem[_374]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _432 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _434 = mem[_432]
    require mem[_432] <= test266151307()
    require _432 + mem[_432] + 31 < _432 + return_data.size
    _436 = mem[_432 + mem[_432]]
    if mem[_432 + mem[_432]] > test266151307():
        revert with 0, 65
    if _432 + ceil32(return_data.size) + ceil32(32 * mem[_432 + mem[_432]]) + 1 > test266151307() or ceil32(32 * mem[_432 + mem[_432]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _432 + ceil32(return_data.size) + ceil32(32 * mem[_432 + mem[_432]]) + 1
    mem[_432 + ceil32(return_data.size)] = _436
    require (32 * _436) + _434 + 32 <= return_data.size
    mem[_432 + ceil32(return_data.size) + 32 len ceil32(32 * _436)] = mem[_432 + _434 + 32 len ceil32(32 * _436)]
    if 1 >= _436:
        revert with 0, 50
    _478 = mem[_432 + ceil32(return_data.size) + 64]
    stor0 = 1
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _484 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _486 = mem[_484]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _363
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _490 = mem[_374]
    mem[mem[64] + 164] = mem[_374]
    idx = 0
    s = _374 + 32
    t = mem[64] + 196
    while idx < _490:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(arg2)
    call arg2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _363, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _490) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 0
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _516 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_516] < _486:
        revert with 0, 17
    return _285, _363, _478, mem[_516] - _486
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if not stor0:
            revert with 0, 'why send bnbs?'
    if MAX_INT() == uint32(call.func_hash) >> 224:
        require not msg.value
        return -1
    if uint32(call.func_hash) >> 224 != unknown_0x1d29c2d4(?????):
        require unknown_0xdaf68546(?????) == uint32(call.func_hash) >> 224
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        uint256(stor1.field_0) = msg.value
        mem[128] = 2
        require ext_code.size(address(arg2))
        staticcall address(arg2).WAVAX() with:
                gas gas_remaining wei
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        mem[192] = address(arg1)
        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = uint256(stor1.field_0)
        mem[ceil32(return_data.size) + 260] = 64
        mem[ceil32(return_data.size) + 292] = 2
        idx = 0
        s = 160
        t = ceil32(return_data.size) + 324
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args uint256(stor1.field_0), Array(len=2, data=mem[ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _200 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor1.field_32)
        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor1.field_32) <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor1.field_32) + 255 < ceil32(return_data.size) + return_data.size + 224
        _202 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor1.field_32) + 224]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor1.field_32) + 224] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor1.field_32) + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor1.field_32) + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 0, stor1.field_32) + 224]) + 225
        mem[(2 * ceil32(return_data.size)) + 224] = _202
        require (32 * _202) + _200 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 256 len ceil32(32 * _202)] = mem[ceil32(return_data.size) + _200 + 256 len ceil32(32 * _202)]
        if 1 >= _202:
            revert with 0, 50
        _365 = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = 2
        idx = 0
        s = 160
        t = mem[64] + 164
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value uint256(stor1.field_0) wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[mem[64] + 164 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _519 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _521 = mem[_519]
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = -1
        require ext_code.size(address(arg1))
        call address(arg1).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _527 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_527] == bool(mem[_527])
            _541 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_541 + 32 len 64] = call.data[calldata.size len 64]
            if 0 >= mem[_541]:
                revert with 0, 50
            mem[_541 + 32] = address(arg1)
            require ext_code.size(address(arg2))
            staticcall address(arg2).WAVAX() with:
                    gas gas_remaining wei
            mem[_541 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _541 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= mem[_541]:
                revert with 0, 50
            mem[_541 + 64] = ext_call.return_data[12 len 20]
            mem[_541 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_541 + ceil32(return_data.size) + 100] = _521
            mem[_541 + ceil32(return_data.size) + 132] = 64
            mem[_541 + ceil32(return_data.size) + 164] = mem[_541]
            idx = 0
            s = _541 + 32
            t = _541 + ceil32(return_data.size) + 196
            while idx < mem[_541]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg2))
            staticcall address(arg2).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _521, 64, mem[_541 + ceil32(return_data.size) + 164 len (32 * mem[_541]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_541 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _541 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _658 = mem[_541 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32
            require mem[_541 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 <= test266151307()
            require _541 + ceil32(return_data.size) + mem[_541 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 127 < _541 + ceil32(return_data.size) + return_data.size + 96
            _661 = mem[_541 + ceil32(return_data.size) + mem[_541 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 96]
            if mem[_541 + ceil32(return_data.size) + mem[_541 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 96] > test266151307():
                revert with 0, 65
            if _541 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_541 + ceil32(return_data.size) + mem[_541 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_541 + ceil32(return_data.size) + mem[_541 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 96]) + 1 < 0:
                revert with 0, 65
            mem[64] = _541 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_541 + ceil32(return_data.size) + mem[_541 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 96]) + 97
            mem[_541 + (2 * ceil32(return_data.size)) + 96] = _661
            require (32 * _661) + _658 + 32 <= return_data.size
            mem[_541 + (2 * ceil32(return_data.size)) + 128 len ceil32(32 * _661)] = mem[_541 + ceil32(return_data.size) + _658 + 128 len ceil32(32 * _661)]
            if 1 >= _661:
                revert with 0, 50
            _756 = mem[_541 + (2 * ceil32(return_data.size)) + 160]
            stor0 = 1
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _521
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _761 = mem[_541]
            mem[mem[64] + 164] = mem[_541]
            idx = 0
            s = _541 + 32
            t = mem[64] + 196
            while idx < _761:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _521, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _761) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            return _365, _521, _756, 0
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _521
        require ext_code.size(address(arg1))
        call address(arg1).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), _521
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _532 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_532] == bool(mem[_532])
        _543 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_543 + 32 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[_543]:
            revert with 0, 50
        mem[_543 + 32] = address(arg1)
        require ext_code.size(address(arg2))
        staticcall address(arg2).WAVAX() with:
                gas gas_remaining wei
        mem[_543 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _543 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_543]:
            revert with 0, 50
        mem[_543 + 64] = ext_call.return_data[12 len 20]
        mem[_543 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_543 + ceil32(return_data.size) + 100] = _521
        mem[_543 + ceil32(return_data.size) + 132] = 64
        mem[_543 + ceil32(return_data.size) + 164] = mem[_543]
        idx = 0
        s = _543 + 32
        t = _543 + ceil32(return_data.size) + 196
        while idx < mem[_543]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _521, 64, mem[_543 + ceil32(return_data.size) + 164 len (32 * mem[_543]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_543 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _543 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _657 = mem[_543 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32
        require mem[_543 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 <= test266151307()
        require _543 + ceil32(return_data.size) + mem[_543 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 127 < _543 + ceil32(return_data.size) + return_data.size + 96
        _660 = mem[_543 + ceil32(return_data.size) + mem[_543 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 96]
        if mem[_543 + ceil32(return_data.size) + mem[_543 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 96] > test266151307():
            revert with 0, 65
        if _543 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_543 + ceil32(return_data.size) + mem[_543 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[_543 + ceil32(return_data.size) + mem[_543 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = _543 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_543 + ceil32(return_data.size) + mem[_543 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _521) >> 32 + 96]) + 97
        mem[_543 + (2 * ceil32(return_data.size)) + 96] = _660
        require (32 * _660) + _657 + 32 <= return_data.size
        mem[_543 + (2 * ceil32(return_data.size)) + 128 len ceil32(32 * _660)] = mem[_543 + ceil32(return_data.size) + _657 + 128 len ceil32(32 * _660)]
        if 1 >= _660:
            revert with 0, 50
        _754 = mem[_543 + (2 * ceil32(return_data.size)) + 160]
        stor0 = 1
        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _521
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _760 = mem[_543]
        mem[mem[64] + 164] = mem[_543]
        idx = 0
        s = _543 + 32
        t = mem[64] + 196
        while idx < _760:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        call address(arg2).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _521, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _760) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        return _365, _521, _754, 0
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[128] = 2
    require ext_code.size(address(arg2))
    staticcall address(arg2).WAVAX() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = address(arg3)
    mem[ceil32(return_data.size) + 224] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 160
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(address(arg2))
    call address(arg2).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 228] = address(arg2)
    mem[ceil32(return_data.size) + 260] = -1
    require ext_code.size(address(arg3))
    call address(arg3).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor1.field_0) = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 224] = 2
    mem[(4 * ceil32(return_data.size)) + 256] = address(arg3)
    mem[(4 * ceil32(return_data.size)) + 288] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 324] = uint256(stor1.field_0)
    mem[(4 * ceil32(return_data.size)) + 356] = 64
    mem[(4 * ceil32(return_data.size)) + 388] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 256
    t = (4 * ceil32(return_data.size)) + 420
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args uint256(stor1.field_0), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 420 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _369 = mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 0, stor1.field_32)
    require mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 0, stor1.field_32) <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 0, stor1.field_32) + 351 < (4 * ceil32(return_data.size)) + return_data.size + 320
    _371 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 0, stor1.field_32) + 320]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 0, stor1.field_32) + 320] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 0, stor1.field_32) + 320]) + 321 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 0, stor1.field_32) + 320]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 0, stor1.field_32) + 320]) + 321
    mem[(6 * ceil32(return_data.size)) + 320] = _371
    require (32 * _371) + _369 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 352 len ceil32(32 * _371)] = mem[(4 * ceil32(return_data.size)) + _369 + 352 len ceil32(32 * _371)]
    if 1 >= _371:
        revert with 0, 50
    _512 = mem[(6 * ceil32(return_data.size)) + 384]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = uint256(stor1.field_0)
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 256
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(address(arg2))
    call address(arg2).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args uint256(stor1.field_0), 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _656 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _659 = mem[_656]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = -1
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _666 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_666] == bool(mem[_666])
        _686 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_686]:
            revert with 0, 50
        mem[_686 + 32] = address(arg1)
        if 1 >= mem[_686]:
            revert with 0, 50
        mem[_686 + 64] = address(arg3)
        mem[_686 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_686 + 100] = _659
        mem[_686 + 132] = 64
        mem[_686 + 164] = mem[_686]
        idx = 0
        s = _686 + 32
        t = _686 + 196
        while idx < mem[_686]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _686 + (32 * mem[_686]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _759 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _763 = mem[_759]
        require mem[_759] <= test266151307()
        require _759 + mem[_759] + 31 < _759 + return_data.size
        _767 = mem[_759 + mem[_759]]
        if mem[_759 + mem[_759]] > test266151307():
            revert with 0, 65
        if _759 + ceil32(return_data.size) + ceil32(32 * mem[_759 + mem[_759]]) + 1 > test266151307() or ceil32(32 * mem[_759 + mem[_759]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _759 + ceil32(return_data.size) + ceil32(32 * mem[_759 + mem[_759]]) + 1
        mem[_759 + ceil32(return_data.size)] = _767
        require (32 * _767) + _763 + 32 <= return_data.size
        mem[_759 + ceil32(return_data.size) + 32 len ceil32(32 * _767)] = mem[_759 + _763 + 32 len ceil32(32 * _767)]
        if 1 >= _767:
            revert with 0, 50
        _819 = mem[_759 + ceil32(return_data.size) + 64]
        stor0 = 1
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _825 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _827 = mem[_825]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _659
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _831 = mem[_686]
        mem[mem[64] + 164] = mem[_686]
        idx = 0
        s = _686 + 32
        t = mem[64] + 196
        while idx < _831:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _659, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _831) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _861 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_861] < _827:
            revert with 0, 17
        return _512, _659, _819, mem[_861] - _827
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = _659
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), _659
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _678 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_678] == bool(mem[_678])
    _688 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_688]:
        revert with 0, 50
    mem[_688 + 32] = address(arg1)
    if 1 >= mem[_688]:
        revert with 0, 50
    mem[_688 + 64] = address(arg3)
    mem[_688 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_688 + 100] = _659
    mem[_688 + 132] = 64
    mem[_688 + 164] = mem[_688]
    idx = 0
    s = _688 + 32
    t = _688 + 196
    while idx < mem[_688]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg2))
    staticcall address(arg2).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _688 + (32 * mem[_688]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _758 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _762 = mem[_758]
    require mem[_758] <= test266151307()
    require _758 + mem[_758] + 31 < _758 + return_data.size
    _766 = mem[_758 + mem[_758]]
    if mem[_758 + mem[_758]] > test266151307():
        revert with 0, 65
    if _758 + ceil32(return_data.size) + ceil32(32 * mem[_758 + mem[_758]]) + 1 > test266151307() or ceil32(32 * mem[_758 + mem[_758]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _758 + ceil32(return_data.size) + ceil32(32 * mem[_758 + mem[_758]]) + 1
    mem[_758 + ceil32(return_data.size)] = _766
    require (32 * _766) + _762 + 32 <= return_data.size
    mem[_758 + ceil32(return_data.size) + 32 len ceil32(32 * _766)] = mem[_758 + _762 + 32 len ceil32(32 * _766)]
    if 1 >= _766:
        revert with 0, 50
    _816 = mem[_758 + ceil32(return_data.size) + 64]
    stor0 = 1
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _824 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _826 = mem[_824]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _659
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _830 = mem[_688]
    mem[mem[64] + 164] = mem[_688]
    idx = 0
    s = _688 + 32
    t = mem[64] + 196
    while idx < _830:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(address(arg2))
    call address(arg2).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _659, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _830) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 0
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _860 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_860] < _826:
        revert with 0, 17
    return _512, _659, _816, mem[_860] - _826
}



}
