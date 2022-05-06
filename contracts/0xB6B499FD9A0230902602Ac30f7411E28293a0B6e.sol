contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 sub_cfd29bfb;
address stor2;
uint256 stor3;

function hasToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function sub_cfd29bfb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_cfd29bfb[arg1]
}

function destroy() {
    if stor2 != msg.sender:
        revert with 0, '5'
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function sub_b51f1f84(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '1'
    stor3 = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '1'
    stor2 = arg1
}

function sub_fa0f9eb9(?) {
    if stor2 != msg.sender:
        revert with 0, '1'
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawal(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5a2a23da(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor2 != msg.sender:
        revert with 0, '1234'
    mem[128] = address(arg1)
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if stor0[address(arg1)]:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_cfd29bfb[address(arg1)] <= 10^12:
            revert with 0, 'tlt'
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg1)
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] / 10, 0, 0, address(this.address), block.timestamp
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        sub_cfd29bfb[address(arg1)] = ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (10 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(10 * ceil32(return_data.size)) + 388 len 64]
    else:
        call this.address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192] = 2
        mem[224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[256] = address(arg1)
        mem[288] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[292] = 0
        idx = 0
        s = 224
        t = 452
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[452 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if sub_cfd29bfb[address(arg1)] <= 10^12:
            revert with 0, 'tlt'
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] / 10, 0, 0, address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        sub_cfd29bfb[address(arg1)] = ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 0
        s = 128
        t = (13 * ceil32(return_data.size)) + 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(13 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) <= stor3:
        revert with 0, 'Not-Profitabel'
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d7dea68(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor2 != msg.sender:
        revert with 0, '1234'
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _60 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 223 < return_data.size + 192
    _61 = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    require _60 + (32 * _61) + 32 <= return_data.size
    idx = _60 + 224
    s = ceil32(return_data.size) + 224
    while idx < _60 + (32 * _61) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if _61 < 1:
        revert with 'NH{q', 17
    if _61 - 1 >= _61:
        revert with 'NH{q', 50
    if mem[(32 * _61 - 1) + ceil32(return_data.size) + 224] <= stor3:
        revert with 0, 'n135'
    mem[0] = address(arg1)
    mem[32] = 0
    if stor0[address(arg1)]:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = address(arg1)
        mem[32] = 1
        if sub_cfd29bfb[address(arg1)] <= 10^12:
            revert with 0, 'tlt'
        mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 36] = address(arg1)
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _145 = mem[_144]
        require mem[_144] == mem[_144 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_145))
        staticcall address(_145).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _150 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _151 = mem[_150]
        require mem[_150] == mem[_150]
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64] + 36] = _151
        require ext_code.size(address(_145))
        call address(_145).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _151
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_159] == bool(mem[_159])
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _151 / 10
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = 0
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 164] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg1), _151 / 10, 0, 0, address(this.address), block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_168] == mem[_168]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_145))
        staticcall address(_145).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _176 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _177 = mem[_176]
        require mem[_176] == mem[_176]
        mem[0] = address(arg1)
        mem[32] = 1
        sub_cfd29bfb[address(arg1)] = _177
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _193 = mem[_192]
        require mem[_192] == mem[_192]
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64] + 36] = _193
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _193
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _205 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_205] == bool(mem[_205])
        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _193
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _193, 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    else:
        call this.address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _135 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_135]:
            revert with 'NH{q', 50
        mem[_135 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 1 >= mem[_135]:
            revert with 'NH{q', 50
        mem[_135 + 64] = address(arg1)
        mem[_135 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[_135 + 100] = 0
        mem[_135 + 132] = 128
        mem[_135 + 228] = mem[_135]
        idx = 0
        s = _135 + 32
        t = _135 + 260
        while idx < mem[_135]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_135 + 164] = this.address
        mem[_135 + 196] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _135 + (32 * mem[_135]) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _212 = mem[_211]
        require mem[_211] == mem[_211]
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64] + 36] = _212
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _212
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_217] == bool(mem[_217])
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = 0
        mem[mem[64] + 132] = this.address
        mem[mem[64] + 164] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args address(arg1), _212, 0, 0, address(this.address), block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_226] == mem[_226]
        require mem[_226 + 32] == mem[_226 + 32]
        require mem[_226 + 64] == mem[_226 + 64]
        mem[0] = address(arg1)
        mem[32] = 1
        if sub_cfd29bfb[address(arg1)] <= 10^12:
            revert with 0, 'tlt'
        mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[mem[64] + 36] = address(arg1)
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_cfd29bfb[address(arg1)] >= 10 * 10^6:
            _244 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _246 = mem[_244]
            require mem[_244] == mem[_244 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_246))
            staticcall address(_246).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _252 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _254 = mem[_252]
            require mem[_252] == mem[_252]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _254
            require ext_code.size(address(_246))
            call address(_246).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _254
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_260] == bool(mem[_260])
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = _254 / 10
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(arg1), _254 / 10, 0, 0, address(this.address), block.timestamp
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_274] == mem[_274]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_246))
            staticcall address(_246).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _282 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _284 = mem[_282]
            require mem[_282] == mem[_282]
            mem[0] = address(arg1)
            mem[32] = 1
            sub_cfd29bfb[address(arg1)] = _284
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _294 = mem[_292]
            require mem[_292] == mem[_292]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _294
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _294
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_300] == bool(mem[_300])
            _304 = mem[64]
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _294
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _306 = mem[96]
            mem[mem[64] + 164] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < _306:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_304 + 100] = this.address
            mem[_304 + 132] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _304 + (32 * _306) + -mem[64] + 192]
        else:
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _247 = mem[_245]
            require mem[_245] == mem[_245 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_247))
            staticcall address(_247).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _253 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _255 = mem[_253]
            require mem[_253] == mem[_253]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _255
            require ext_code.size(address(_247))
            call address(_247).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _255
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_261] == bool(mem[_261])
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = _255 / 10
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = this.address
            mem[mem[64] + 164] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(arg1), _255 / 10, 0, 0, address(this.address), block.timestamp
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_275] == mem[_275]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_247))
            staticcall address(_247).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _283 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _285 = mem[_283]
            require mem[_283] == mem[_283]
            mem[0] = address(arg1)
            mem[32] = 1
            sub_cfd29bfb[address(arg1)] = _285
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _295 = mem[_293]
            require mem[_293] == mem[_293]
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = _295
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _295
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_301] == bool(mem[_301])
            _305 = mem[64]
            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _295
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _307 = mem[96]
            mem[mem[64] + 164] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < _307:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_305 + 100] = this.address
            mem[_305 + 132] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _305 + (32 * _307) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) <= stor3:
        revert with 0, 'Not-Profitabel'
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
