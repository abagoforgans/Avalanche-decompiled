contract main {




// =====================  Runtime code  =====================


address JOE_ROUTERAddress;
address sub_8a18b6a5Address;
address owner;

function JOE_ROUTER() {
    return JOE_ROUTERAddress
}

function sub_8a18b6a5(?) {
    return sub_8a18b6a5Address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_de8308a0(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    mem[100] = address(arg3)
    require ext_code.size(address(arg4))
    staticcall address(arg4).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_8a18b6a5Address)
    staticcall sub_8a18b6a5Address.closeFactorMantissa() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg5)
    mem[(2 * ceil32(return_data.size)) + 192] = 2
    mem[(2 * ceil32(return_data.size)) + 224 len 64] = call.data[calldata.size len 64]
    mem[(2 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    mem[(2 * ceil32(return_data.size)) + 324] = 64
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(JOE_ROUTERAddress)
    staticcall JOE_ROUTERAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _32 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32
    require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
    _33 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 288]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 288] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 288]) + 320 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 288]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 288]) + 320
    mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0] * ext_call.return_data[0] / 10^18) >> 32 + 288]
    require _32 + (32 * _33) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _32 + 320
    t = (4 * ceil32(return_data.size)) + 320
    while idx < _33:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= _33:
        revert with 'NH{q', 50
    _55 = mem[(4 * ceil32(return_data.size)) + 320]
    if 0 >= _33:
        revert with 'NH{q', 50
    if mem[(4 * ceil32(return_data.size)) + 320] <= 0:
        revert with 0, 'Repay amount calculated to be zero'
    _59 = mem[64]
    mem[mem[64] + 32] = address(arg2)
    mem[mem[64] + 64] = _55
    mem[mem[64] + 96] = address(arg3)
    mem[mem[64] + 128] = address(arg4)
    mem[mem[64] + 160] = address(arg5)
    mem[mem[64] + 192] = address(arg6)
    mem[mem[64] + 224] = address(arg7)
    _61 = mem[64]
    mem[64] = mem[64] + 256
    mem[_59 + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
    mem[_59 + 260] = this.address
    mem[_59 + 292] = this.address
    mem[_59 + 324] = _55
    mem[_59 + 356] = 128
    _63 = mem[_61]
    mem[_59 + 388] = mem[_61]
    mem[_59 + 420 len ceil32(_63)] = mem[_61 + 32 len ceil32(_63)]
    if ceil32(_63) > _63:
        mem[_59 + _63 + 420] = 0
    require ext_code.size(address(arg1))
    call address(arg1).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(this.address), _55, 128, mem[_59 + 388 len ceil32(_63) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[100] = msg.sender
    require ext_code.size(sub_8a18b6a5Address)
    staticcall sub_8a18b6a5Address.isMarketListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'untrusted message sender'
    if arg1 != this.address:
        revert with 0, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 224
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    require cd[(arg5 + 228)] == address(cd[(arg5 + 228)])
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(cd[(arg5 + 36)]))
    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Token in balance is zero'
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg5 + 36)]):
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = address(cd[(arg5 + 36)])
        mem[(2 * ceil32(return_data.size)) + 160] = address(cd[(arg5 + 164)])
        mem[(2 * ceil32(return_data.size)) + 196] = JOE_ROUTERAddress
        mem[(2 * ceil32(return_data.size)) + 228] = cd[(arg5 + 68)]
        require ext_code.size(address(cd[(arg5 + 36)]))
        call address(cd[(arg5 + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args JOE_ROUTERAddress, cd[(arg5 + 68)]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = cd[(arg5 + 68)]
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(JOE_ROUTERAddress)
        call JOE_ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg5 + 68)], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _163 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _166 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 192]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 192]) + 224
        mem[(6 * ceil32(return_data.size)) + 192] = _166
        require _163 + (32 * _166) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _163 + 224
        t = (6 * ceil32(return_data.size)) + 224
        while idx < _166:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _280 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_280] == mem[_280]
        if mem[_280] <= 0:
            revert with 0, 'Token out balance is zero'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _298 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _301 = mem[_298]
        require mem[_298] == mem[_298]
        mem[mem[64] + 32] = address(cd[(arg5 + 164)])
        mem[mem[64] + 64] = cd[(arg5 + 68)]
        mem[mem[64] + 96] = _301
        emit Swap(address(cd[(arg5 + 36)]), address(cd[(arg5 + 164)]), cd[(arg5 + 68)], _301);
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 164)]))
        staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _316 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _319 = mem[_316]
        require mem[_316] == mem[_316]
        mem[mem[64] + 4] = address(cd[(arg5 + 132)])
        mem[mem[64] + 36] = _319
        require ext_code.size(address(cd[(arg5 + 164)]))
        call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 132)]), _319
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _328 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_328] == bool(mem[_328])
        mem[mem[64] + 4] = address(cd[(arg5 + 100)])
        mem[mem[64] + 36] = _319
        mem[mem[64] + 68] = address(cd[(arg5 + 196)])
        require ext_code.size(address(cd[(arg5 + 132)]))
        call address(cd[(arg5 + 132)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(cd[(arg5 + 100)]), _319, address(cd[(arg5 + 196)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _340 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_340] == mem[_340]
        if mem[_340]:
            revert with 0, 'Error while attempting liquidation'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_358] == mem[_358]
        if mem[_358] <= 0:
            revert with 0, 'Seized jTokens is zero'
        mem[mem[64] + 32] = _319
        mem[mem[64] + 64] = address(cd[(arg5 + 132)])
        mem[mem[64] + 96] = address(cd[(arg5 + 196)])
        emit 0x389b04ed: address(cd[(arg5 + 100)]), _319, address(cd[(arg5 + 132)]), address(cd[(arg5 + 196)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 196)]))
        staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _385 = mem[_382]
        require mem[_382] == mem[_382]
        mem[mem[64] + 4] = mem[_382]
        require ext_code.size(address(cd[(arg5 + 196)]))
        call address(cd[(arg5 + 196)]).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args _385
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _394 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_394] == mem[_394]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 228)]))
        staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _406 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_406] == mem[_406]
        if mem[_406] <= 0:
            revert with 0, 'Seized underlying assets is zero'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 228)]))
        staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _424 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _427 = mem[_424]
        require mem[_424] == mem[_424]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[(arg5 + 228)]))
        staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _436 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_436] == mem[_436]
        if mem[_436] <= 0:
            revert with 0, 'Token in balance is zero'
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg5 + 228)]):
            _445 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_445]:
                revert with 'NH{q', 50
            mem[_445 + 32] = address(cd[(arg5 + 228)])
            if 1 >= mem[_445]:
                revert with 'NH{q', 50
            mem[_445 + 64] = address(cd[(arg5 + 36)])
            mem[_445 + 100] = JOE_ROUTERAddress
            mem[_445 + 132] = _427
            require ext_code.size(address(cd[(arg5 + 228)]))
            call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args JOE_ROUTERAddress, _427
            mem[_445 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _445 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[_445 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_445 + ceil32(return_data.size) + 100] = _427
            mem[_445 + ceil32(return_data.size) + 132] = 0
            mem[_445 + ceil32(return_data.size) + 164] = 160
            mem[_445 + ceil32(return_data.size) + 260] = mem[_445]
            idx = 0
            s = _445 + 32
            t = _445 + ceil32(return_data.size) + 292
            while idx < mem[_445]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_445 + ceil32(return_data.size) + 196] = this.address
            mem[_445 + ceil32(return_data.size) + 228] = block.timestamp + 60
            require ext_code.size(JOE_ROUTERAddress)
            call JOE_ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _427, 0, 160, address(this.address), block.timestamp + 60, mem[_445 + ceil32(return_data.size) + 260 len (32 * mem[_445]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_445 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _445 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _658 = mem[_445 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32
            require mem[_445 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 <= test266151307()
            require _445 + ceil32(return_data.size) + mem[_445 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 127 < _445 + ceil32(return_data.size) + return_data.size + 96
            _667 = mem[_445 + ceil32(return_data.size) + mem[_445 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96]
            if mem[_445 + ceil32(return_data.size) + mem[_445 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if _445 + (2 * ceil32(return_data.size)) + (32 * mem[_445 + ceil32(return_data.size) + mem[_445 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96]) + 128 > test266151307() or (32 * mem[_445 + ceil32(return_data.size) + mem[_445 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _445 + (2 * ceil32(return_data.size)) + (32 * mem[_445 + ceil32(return_data.size) + mem[_445 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96]) + 128
            mem[_445 + (2 * ceil32(return_data.size)) + 96] = _667
            require _658 + (32 * _667) + 32 <= return_data.size
            idx = 0
            s = _445 + ceil32(return_data.size) + _658 + 128
            t = _445 + (2 * ceil32(return_data.size)) + 128
            while idx < _667:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 36)]))
            staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _964 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_964] == mem[_964]
            if mem[_964] <= 0:
                revert with 0, 'Token out balance is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 36)]))
            staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1018 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1027 = mem[_1018]
            require mem[_1018] == mem[_1018]
            mem[mem[64] + 32] = address(cd[(arg5 + 36)])
            mem[mem[64] + 64] = _427
            mem[mem[64] + 96] = _1027
            emit Swap(address(cd[(arg5 + 228)]), address(cd[(arg5 + 36)]), _427, _1027);
            if arg3 > -arg4 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 36)]))
            staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1072 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1072] == mem[_1072]
            if mem[_1072] <= arg3 + arg4:
                revert with 0, 'Seized amount less than flashloan amount plus fee'
            if arg3 > -arg4 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 36)]))
            staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1135 = mem[_1126]
            require mem[_1126] == mem[_1126]
            if mem[_1126] < arg3 + arg4:
                revert with 'NH{q', 17
            mem[mem[64] + 64] = owner
            emit 0xb78c0811: address(cd[(arg5 + 36)]), _1135 - arg3 - arg4, owner
            if arg3 > -arg4 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = arg3 + arg4
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg3 + arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1180 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1180] == bool(mem[_1180])
            if arg3 > -arg4 - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 36)]))
            staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1225 = mem[_1216]
            require mem[_1216] == mem[_1216]
            if mem[_1216] < arg3 + arg4:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _1225 - arg3 - arg4
            require ext_code.size(address(cd[(arg5 + 36)]))
            call address(cd[(arg5 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _1225 - arg3 - arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1252 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1252] == bool(mem[_1252])
        else:
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg5 + 36)]):
                _449 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_449]:
                    revert with 'NH{q', 50
                mem[_449 + 32] = address(cd[(arg5 + 228)])
                if 1 >= mem[_449]:
                    revert with 'NH{q', 50
                mem[_449 + 64] = address(cd[(arg5 + 36)])
                mem[_449 + 100] = JOE_ROUTERAddress
                mem[_449 + 132] = _427
                require ext_code.size(address(cd[(arg5 + 228)]))
                call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args JOE_ROUTERAddress, _427
                mem[_449 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _449 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_449 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_449 + ceil32(return_data.size) + 100] = _427
                mem[_449 + ceil32(return_data.size) + 132] = 0
                mem[_449 + ceil32(return_data.size) + 164] = 160
                mem[_449 + ceil32(return_data.size) + 260] = mem[_449]
                idx = 0
                s = _449 + 32
                t = _449 + ceil32(return_data.size) + 292
                while idx < mem[_449]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_449 + ceil32(return_data.size) + 196] = this.address
                mem[_449 + ceil32(return_data.size) + 228] = block.timestamp + 60
                require ext_code.size(JOE_ROUTERAddress)
                call JOE_ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _427, 0, 160, address(this.address), block.timestamp + 60, mem[_449 + ceil32(return_data.size) + 260 len (32 * mem[_449]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_449 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _449 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _660 = mem[_449 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32
                require mem[_449 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 <= test266151307()
                require _449 + ceil32(return_data.size) + mem[_449 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 127 < _449 + ceil32(return_data.size) + return_data.size + 96
                _669 = mem[_449 + ceil32(return_data.size) + mem[_449 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96]
                if mem[_449 + ceil32(return_data.size) + mem[_449 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if _449 + (2 * ceil32(return_data.size)) + (32 * mem[_449 + ceil32(return_data.size) + mem[_449 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96]) + 128 > test266151307() or (32 * mem[_449 + ceil32(return_data.size) + mem[_449 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _449 + (2 * ceil32(return_data.size)) + (32 * mem[_449 + ceil32(return_data.size) + mem[_449 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96]) + 128
                mem[_449 + (2 * ceil32(return_data.size)) + 96] = mem[_449 + ceil32(return_data.size) + mem[_449 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _427) >> 32 + 96]
                require _660 + (32 * _669) + 32 <= return_data.size
                idx = 0
                s = _449 + ceil32(return_data.size) + _660 + 128
                t = _449 + (2 * ceil32(return_data.size)) + 128
                while idx < _669:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _966 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_966] == mem[_966]
                if mem[_966] <= 0:
                    revert with 0, 'Token out balance is zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1020 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1029 = mem[_1020]
                require mem[_1020] == mem[_1020]
                mem[mem[64] + 32] = address(cd[(arg5 + 36)])
                mem[mem[64] + 64] = _427
                mem[mem[64] + 96] = _1029
                emit Swap(address(cd[(arg5 + 228)]), address(cd[(arg5 + 36)]), _427, _1029);
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1074 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1074] == mem[_1074]
                if mem[_1074] <= arg3 + arg4:
                    revert with 0, 'Seized amount less than flashloan amount plus fee'
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1128 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1137 = mem[_1128]
                require mem[_1128] == mem[_1128]
                if mem[_1128] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 64] = owner
                emit 0xb78c0811: address(cd[(arg5 + 36)]), _1137 - arg3 - arg4, owner
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg3 + arg4
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1182] == bool(mem[_1182])
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1218 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1227 = mem[_1218]
                require mem[_1218] == mem[_1218]
                if mem[_1218] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _1227 - arg3 - arg4
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _1227 - arg3 - arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1254] == bool(mem[_1254])
            else:
                _448 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_448]:
                    revert with 'NH{q', 50
                mem[_448 + 32] = address(cd[(arg5 + 228)])
                if 1 >= mem[_448]:
                    revert with 'NH{q', 50
                mem[_448 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if 2 >= mem[_448]:
                    revert with 'NH{q', 50
                mem[_448 + 96] = address(cd[(arg5 + 36)])
                mem[_448 + 132] = JOE_ROUTERAddress
                mem[_448 + 164] = _427
                require ext_code.size(address(cd[(arg5 + 228)]))
                call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args JOE_ROUTERAddress, _427
                mem[_448 + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _448 + ceil32(return_data.size) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_448 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_448 + ceil32(return_data.size) + 132] = _427
                mem[_448 + ceil32(return_data.size) + 164] = 0
                mem[_448 + ceil32(return_data.size) + 196] = 160
                mem[_448 + ceil32(return_data.size) + 292] = mem[_448]
                idx = 0
                s = _448 + 32
                t = _448 + ceil32(return_data.size) + 324
                while idx < mem[_448]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_448 + ceil32(return_data.size) + 228] = this.address
                mem[_448 + ceil32(return_data.size) + 260] = block.timestamp + 60
                require ext_code.size(JOE_ROUTERAddress)
                call JOE_ROUTERAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _448 + ceil32(return_data.size) + (32 * mem[_448]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _650 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _659 = mem[_650]
                require mem[_650] <= test266151307()
                require _650 + mem[_650] + 31 < _650 + return_data.size
                _668 = mem[_650 + mem[_650]]
                if mem[_650 + mem[_650]] > test266151307():
                    revert with 'NH{q', 65
                if _650 + ceil32(return_data.size) + (32 * mem[_650 + mem[_650]]) + 32 > test266151307() or (32 * mem[_650 + mem[_650]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _650 + ceil32(return_data.size) + (32 * mem[_650 + mem[_650]]) + 32
                mem[_650 + ceil32(return_data.size)] = _668
                require _659 + (32 * _668) + 32 <= return_data.size
                idx = 0
                s = _650 + _659 + 32
                t = _650 + ceil32(return_data.size) + 32
                while idx < _668:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _965 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_965] == mem[_965]
                if mem[_965] <= 0:
                    revert with 0, 'Token out balance is zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1019 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1028 = mem[_1019]
                require mem[_1019] == mem[_1019]
                mem[mem[64] + 32] = address(cd[(arg5 + 36)])
                mem[mem[64] + 64] = _427
                mem[mem[64] + 96] = _1028
                emit Swap(address(cd[(arg5 + 228)]), address(cd[(arg5 + 36)]), _427, _1028);
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1073 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1073] == mem[_1073]
                if mem[_1073] <= arg3 + arg4:
                    revert with 0, 'Seized amount less than flashloan amount plus fee'
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1136 = mem[_1127]
                require mem[_1127] == mem[_1127]
                if mem[_1127] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 64] = owner
                emit 0xb78c0811: address(cd[(arg5 + 36)]), _1136 - arg3 - arg4, owner
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg3 + arg4
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1181 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1181] == bool(mem[_1181])
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1226 = mem[_1217]
                require mem[_1217] == mem[_1217]
                if mem[_1217] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _1226 - arg3 - arg4
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _1226 - arg3 - arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1253 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1253] == bool(mem[_1253])
    else:
        if address(cd[(arg5 + 164)]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = address(cd[(arg5 + 36)])
            mem[(2 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(2 * ceil32(return_data.size)) + 192] = address(cd[(arg5 + 164)])
            mem[(2 * ceil32(return_data.size)) + 228] = JOE_ROUTERAddress
            mem[(2 * ceil32(return_data.size)) + 260] = cd[(arg5 + 68)]
            require ext_code.size(address(cd[(arg5 + 36)]))
            call address(cd[(arg5 + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args JOE_ROUTERAddress, cd[(arg5 + 68)]
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 228] = cd[(arg5 + 68)]
            mem[(4 * ceil32(return_data.size)) + 260] = 0
            mem[(4 * ceil32(return_data.size)) + 292] = 160
            mem[(4 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 324] = this.address
            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 60
            require ext_code.size(JOE_ROUTERAddress)
            call JOE_ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[(arg5 + 68)], 0, 160, address(this.address), block.timestamp + 60, 3, mem[(4 * ceil32(return_data.size)) + 420 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _164 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32
            require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
            _167 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 224]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 224]) + 256 > test266151307() or (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 224]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 224]) + 256
            mem[(6 * ceil32(return_data.size)) + 224] = _167
            require _164 + (32 * _167) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _164 + 256
            t = (6 * ceil32(return_data.size)) + 256
            while idx < _167:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _281 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_281] == mem[_281]
            if mem[_281] <= 0:
                revert with 0, 'Token out balance is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _302 = mem[_299]
            require mem[_299] == mem[_299]
            mem[mem[64] + 32] = address(cd[(arg5 + 164)])
            mem[mem[64] + 64] = cd[(arg5 + 68)]
            mem[mem[64] + 96] = _302
            emit Swap(address(cd[(arg5 + 36)]), address(cd[(arg5 + 164)]), cd[(arg5 + 68)], _302);
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _317 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _320 = mem[_317]
            require mem[_317] == mem[_317]
            mem[mem[64] + 4] = address(cd[(arg5 + 132)])
            mem[mem[64] + 36] = _320
            require ext_code.size(address(cd[(arg5 + 164)]))
            call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 132)]), _320
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _329 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_329] == bool(mem[_329])
            mem[mem[64] + 4] = address(cd[(arg5 + 100)])
            mem[mem[64] + 36] = _320
            mem[mem[64] + 68] = address(cd[(arg5 + 196)])
            require ext_code.size(address(cd[(arg5 + 132)]))
            call address(cd[(arg5 + 132)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 100)]), _320, address(cd[(arg5 + 196)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _341 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_341] == mem[_341]
            if mem[_341]:
                revert with 0, 'Error while attempting liquidation'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 196)]))
            staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _359 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_359] == mem[_359]
            if mem[_359] <= 0:
                revert with 0, 'Seized jTokens is zero'
            mem[mem[64] + 32] = _320
            mem[mem[64] + 64] = address(cd[(arg5 + 132)])
            mem[mem[64] + 96] = address(cd[(arg5 + 196)])
            emit 0x389b04ed: address(cd[(arg5 + 100)]), _320, address(cd[(arg5 + 132)]), address(cd[(arg5 + 196)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 196)]))
            staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _386 = mem[_383]
            require mem[_383] == mem[_383]
            mem[mem[64] + 4] = mem[_383]
            require ext_code.size(address(cd[(arg5 + 196)]))
            call address(cd[(arg5 + 196)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args _386
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _395 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_395] == mem[_395]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 228)]))
            staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_407] == mem[_407]
            if mem[_407] <= 0:
                revert with 0, 'Seized underlying assets is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 228)]))
            staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _428 = mem[_425]
            require mem[_425] == mem[_425]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 228)]))
            staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _437 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_437] == mem[_437]
            if mem[_437] <= 0:
                revert with 0, 'Token in balance is zero'
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg5 + 228)]):
                _446 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_446]:
                    revert with 'NH{q', 50
                mem[_446 + 32] = address(cd[(arg5 + 228)])
                if 1 >= mem[_446]:
                    revert with 'NH{q', 50
                mem[_446 + 64] = address(cd[(arg5 + 36)])
                mem[_446 + 100] = JOE_ROUTERAddress
                mem[_446 + 132] = _428
                require ext_code.size(address(cd[(arg5 + 228)]))
                call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args JOE_ROUTERAddress, _428
                mem[_446 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _446 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_446 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_446 + ceil32(return_data.size) + 100] = _428
                mem[_446 + ceil32(return_data.size) + 132] = 0
                mem[_446 + ceil32(return_data.size) + 164] = 160
                mem[_446 + ceil32(return_data.size) + 260] = mem[_446]
                idx = 0
                s = _446 + 32
                t = _446 + ceil32(return_data.size) + 292
                while idx < mem[_446]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_446 + ceil32(return_data.size) + 196] = this.address
                mem[_446 + ceil32(return_data.size) + 228] = block.timestamp + 60
                require ext_code.size(JOE_ROUTERAddress)
                call JOE_ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _428, 0, 160, address(this.address), block.timestamp + 60, mem[_446 + ceil32(return_data.size) + 260 len (32 * mem[_446]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_446 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _446 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _661 = mem[_446 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32
                require mem[_446 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 <= test266151307()
                require _446 + ceil32(return_data.size) + mem[_446 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 127 < _446 + ceil32(return_data.size) + return_data.size + 96
                _670 = mem[_446 + ceil32(return_data.size) + mem[_446 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 96]
                if mem[_446 + ceil32(return_data.size) + mem[_446 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 96] > test266151307():
                    revert with 'NH{q', 65
                if _446 + (2 * ceil32(return_data.size)) + (32 * mem[_446 + ceil32(return_data.size) + mem[_446 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 96]) + 128 > test266151307() or (32 * mem[_446 + ceil32(return_data.size) + mem[_446 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 96]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _446 + (2 * ceil32(return_data.size)) + (32 * mem[_446 + ceil32(return_data.size) + mem[_446 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 96]) + 128
                mem[_446 + (2 * ceil32(return_data.size)) + 96] = _670
                require _661 + (32 * _670) + 32 <= return_data.size
                idx = 0
                s = _446 + ceil32(return_data.size) + _661 + 128
                t = _446 + (2 * ceil32(return_data.size)) + 128
                while idx < _670:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _967 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_967] == mem[_967]
                if mem[_967] <= 0:
                    revert with 0, 'Token out balance is zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1021 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1030 = mem[_1021]
                require mem[_1021] == mem[_1021]
                mem[mem[64] + 32] = address(cd[(arg5 + 36)])
                mem[mem[64] + 64] = _428
                mem[mem[64] + 96] = _1030
                emit Swap(address(cd[(arg5 + 228)]), address(cd[(arg5 + 36)]), _428, _1030);
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1075 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1075] == mem[_1075]
                if mem[_1075] <= arg3 + arg4:
                    revert with 0, 'Seized amount less than flashloan amount plus fee'
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1138 = mem[_1129]
                require mem[_1129] == mem[_1129]
                if mem[_1129] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 64] = owner
                emit 0xb78c0811: address(cd[(arg5 + 36)]), _1138 - arg3 - arg4, owner
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg3 + arg4
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1183] == bool(mem[_1183])
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1228 = mem[_1219]
                require mem[_1219] == mem[_1219]
                if mem[_1219] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _1228 - arg3 - arg4
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _1228 - arg3 - arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1255] == bool(mem[_1255])
            else:
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg5 + 36)]):
                    _451 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_451]:
                        revert with 'NH{q', 50
                    mem[_451 + 32] = address(cd[(arg5 + 228)])
                    if 1 >= mem[_451]:
                        revert with 'NH{q', 50
                    mem[_451 + 64] = address(cd[(arg5 + 36)])
                    mem[_451 + 100] = JOE_ROUTERAddress
                    mem[_451 + 132] = _428
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args JOE_ROUTERAddress, _428
                    mem[_451 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _451 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[_451 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_451 + ceil32(return_data.size) + 100] = _428
                    mem[_451 + ceil32(return_data.size) + 132] = 0
                    mem[_451 + ceil32(return_data.size) + 164] = 160
                    mem[_451 + ceil32(return_data.size) + 260] = mem[_451]
                    idx = 0
                    s = _451 + 32
                    t = _451 + ceil32(return_data.size) + 292
                    while idx < mem[_451]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_451 + ceil32(return_data.size) + 196] = this.address
                    mem[_451 + ceil32(return_data.size) + 228] = block.timestamp + 60
                    require ext_code.size(JOE_ROUTERAddress)
                    call JOE_ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _428, 0, 160, address(this.address), block.timestamp + 60, mem[_451 + ceil32(return_data.size) + 260 len (32 * mem[_451]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_451 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _451 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _663 = mem[_451 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32
                    require mem[_451 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 <= test266151307()
                    require _451 + ceil32(return_data.size) + mem[_451 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 127 < _451 + ceil32(return_data.size) + return_data.size + 96
                    _672 = mem[_451 + ceil32(return_data.size) + mem[_451 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 96]
                    if mem[_451 + ceil32(return_data.size) + mem[_451 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 96] > test266151307():
                        revert with 'NH{q', 65
                    if _451 + (2 * ceil32(return_data.size)) + (32 * mem[_451 + ceil32(return_data.size) + mem[_451 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 96]) + 128 > test266151307() or (32 * mem[_451 + ceil32(return_data.size) + mem[_451 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 96]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _451 + (2 * ceil32(return_data.size)) + (32 * mem[_451 + ceil32(return_data.size) + mem[_451 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _428) >> 32 + 96]) + 128
                    mem[_451 + (2 * ceil32(return_data.size)) + 96] = _672
                    require _663 + (32 * _672) + 32 <= return_data.size
                    idx = 0
                    s = _451 + ceil32(return_data.size) + _663 + 128
                    t = _451 + (2 * ceil32(return_data.size)) + 128
                    while idx < _672:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_969] == mem[_969]
                    if mem[_969] <= 0:
                        revert with 0, 'Token out balance is zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1023 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1032 = mem[_1023]
                    require mem[_1023] == mem[_1023]
                    mem[mem[64] + 32] = address(cd[(arg5 + 36)])
                    mem[mem[64] + 64] = _428
                    mem[mem[64] + 96] = _1032
                    emit Swap(address(cd[(arg5 + 228)]), address(cd[(arg5 + 36)]), _428, _1032);
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1077 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1077] == mem[_1077]
                    if mem[_1077] <= arg3 + arg4:
                        revert with 0, 'Seized amount less than flashloan amount plus fee'
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1131 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1140 = mem[_1131]
                    require mem[_1131] == mem[_1131]
                    if mem[_1131] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 64] = owner
                    emit 0xb78c0811: address(cd[(arg5 + 36)]), _1140 - arg3 - arg4, owner
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1185 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1185] == bool(mem[_1185])
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1230 = mem[_1221]
                    require mem[_1221] == mem[_1221]
                    if mem[_1221] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _1230 - arg3 - arg4
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    call address(cd[(arg5 + 36)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _1230 - arg3 - arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1257] == bool(mem[_1257])
                else:
                    _450 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_450]:
                        revert with 'NH{q', 50
                    mem[_450 + 32] = address(cd[(arg5 + 228)])
                    if 1 >= mem[_450]:
                        revert with 'NH{q', 50
                    mem[_450 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 2 >= mem[_450]:
                        revert with 'NH{q', 50
                    mem[_450 + 96] = address(cd[(arg5 + 36)])
                    mem[_450 + 132] = JOE_ROUTERAddress
                    mem[_450 + 164] = _428
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args JOE_ROUTERAddress, _428
                    mem[_450 + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _450 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[_450 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_450 + ceil32(return_data.size) + 132] = _428
                    mem[_450 + ceil32(return_data.size) + 164] = 0
                    mem[_450 + ceil32(return_data.size) + 196] = 160
                    mem[_450 + ceil32(return_data.size) + 292] = mem[_450]
                    idx = 0
                    s = _450 + 32
                    t = _450 + ceil32(return_data.size) + 324
                    while idx < mem[_450]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_450 + ceil32(return_data.size) + 228] = this.address
                    mem[_450 + ceil32(return_data.size) + 260] = block.timestamp + 60
                    require ext_code.size(JOE_ROUTERAddress)
                    call JOE_ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _428, 0, 160, address(this.address), block.timestamp + 60, mem[_450 + ceil32(return_data.size) + 292 len (32 * mem[_450]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_450 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _450 + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _662 = mem[_450 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _428) >> 32
                    require mem[_450 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _428) >> 32 <= test266151307()
                    require _450 + ceil32(return_data.size) + mem[_450 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _428) >> 32 + 159 < _450 + ceil32(return_data.size) + return_data.size + 128
                    _671 = mem[_450 + ceil32(return_data.size) + mem[_450 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _428) >> 32 + 128]
                    if mem[_450 + ceil32(return_data.size) + mem[_450 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _428) >> 32 + 128] > test266151307():
                        revert with 'NH{q', 65
                    if _450 + (2 * ceil32(return_data.size)) + (32 * mem[_450 + ceil32(return_data.size) + mem[_450 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _428) >> 32 + 128]) + 160 > test266151307() or (32 * mem[_450 + ceil32(return_data.size) + mem[_450 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _428) >> 32 + 128]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _450 + (2 * ceil32(return_data.size)) + (32 * mem[_450 + ceil32(return_data.size) + mem[_450 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _428) >> 32 + 128]) + 160
                    mem[_450 + (2 * ceil32(return_data.size)) + 128] = _671
                    require _662 + (32 * _671) + 32 <= return_data.size
                    idx = 0
                    s = _450 + ceil32(return_data.size) + _662 + 160
                    t = _450 + (2 * ceil32(return_data.size)) + 160
                    while idx < _671:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _968 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_968] == mem[_968]
                    if mem[_968] <= 0:
                        revert with 0, 'Token out balance is zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1031 = mem[_1022]
                    require mem[_1022] == mem[_1022]
                    mem[mem[64] + 32] = address(cd[(arg5 + 36)])
                    mem[mem[64] + 64] = _428
                    mem[mem[64] + 96] = _1031
                    emit Swap(address(cd[(arg5 + 228)]), address(cd[(arg5 + 36)]), _428, _1031);
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1076 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1076] == mem[_1076]
                    if mem[_1076] <= arg3 + arg4:
                        revert with 0, 'Seized amount less than flashloan amount plus fee'
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1130 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1139 = mem[_1130]
                    require mem[_1130] == mem[_1130]
                    if mem[_1130] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 64] = owner
                    emit 0xb78c0811: address(cd[(arg5 + 36)]), _1139 - arg3 - arg4, owner
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1184 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1184] == bool(mem[_1184])
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1220 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1229 = mem[_1220]
                    require mem[_1220] == mem[_1220]
                    if mem[_1220] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _1229 - arg3 - arg4
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    call address(cd[(arg5 + 36)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _1229 - arg3 - arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1256 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1256] == bool(mem[_1256])
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = address(cd[(arg5 + 36)])
            mem[(2 * ceil32(return_data.size)) + 160] = address(cd[(arg5 + 164)])
            mem[(2 * ceil32(return_data.size)) + 196] = JOE_ROUTERAddress
            mem[(2 * ceil32(return_data.size)) + 228] = cd[(arg5 + 68)]
            require ext_code.size(address(cd[(arg5 + 36)]))
            call address(cd[(arg5 + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args JOE_ROUTERAddress, cd[(arg5 + 68)]
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = cd[(arg5 + 68)]
            mem[(4 * ceil32(return_data.size)) + 228] = 0
            mem[(4 * ceil32(return_data.size)) + 260] = 160
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 292] = this.address
            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(JOE_ROUTERAddress)
            call JOE_ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[(arg5 + 68)], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _165 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _168 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 192]) + 224 > test266151307() or (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 192]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, cd[(arg5 + 68)]) >> 32 + 192]) + 224
            mem[(6 * ceil32(return_data.size)) + 192] = _168
            require _165 + (32 * _168) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _165 + 224
            t = (6 * ceil32(return_data.size)) + 224
            while idx < _168:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _282 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_282] == mem[_282]
            if mem[_282] <= 0:
                revert with 0, 'Token out balance is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _303 = mem[_300]
            require mem[_300] == mem[_300]
            mem[mem[64] + 32] = address(cd[(arg5 + 164)])
            mem[mem[64] + 64] = cd[(arg5 + 68)]
            mem[mem[64] + 96] = _303
            emit Swap(address(cd[(arg5 + 36)]), address(cd[(arg5 + 164)]), cd[(arg5 + 68)], _303);
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 164)]))
            staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _318 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _321 = mem[_318]
            require mem[_318] == mem[_318]
            mem[mem[64] + 4] = address(cd[(arg5 + 132)])
            mem[mem[64] + 36] = _321
            require ext_code.size(address(cd[(arg5 + 164)]))
            call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 132)]), _321
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _330 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_330] == bool(mem[_330])
            mem[mem[64] + 4] = address(cd[(arg5 + 100)])
            mem[mem[64] + 36] = _321
            mem[mem[64] + 68] = address(cd[(arg5 + 196)])
            require ext_code.size(address(cd[(arg5 + 132)]))
            call address(cd[(arg5 + 132)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(cd[(arg5 + 100)]), _321, address(cd[(arg5 + 196)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _342 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_342] == mem[_342]
            if mem[_342]:
                revert with 0, 'Error while attempting liquidation'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 196)]))
            staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _360 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_360] == mem[_360]
            if mem[_360] <= 0:
                revert with 0, 'Seized jTokens is zero'
            mem[mem[64] + 32] = _321
            mem[mem[64] + 64] = address(cd[(arg5 + 132)])
            mem[mem[64] + 96] = address(cd[(arg5 + 196)])
            emit 0x389b04ed: address(cd[(arg5 + 100)]), _321, address(cd[(arg5 + 132)]), address(cd[(arg5 + 196)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 196)]))
            staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _387 = mem[_384]
            require mem[_384] == mem[_384]
            mem[mem[64] + 4] = mem[_384]
            require ext_code.size(address(cd[(arg5 + 196)]))
            call address(cd[(arg5 + 196)]).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args _387
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _396 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_396] == mem[_396]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 228)]))
            staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _408 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_408] == mem[_408]
            if mem[_408] <= 0:
                revert with 0, 'Seized underlying assets is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 228)]))
            staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _426 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _429 = mem[_426]
            require mem[_426] == mem[_426]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 228)]))
            staticcall address(cd[(arg5 + 228)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _438 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_438] == mem[_438]
            if mem[_438] <= 0:
                revert with 0, 'Token in balance is zero'
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg5 + 228)]):
                _447 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_447]:
                    revert with 'NH{q', 50
                mem[_447 + 32] = address(cd[(arg5 + 228)])
                if 1 >= mem[_447]:
                    revert with 'NH{q', 50
                mem[_447 + 64] = address(cd[(arg5 + 36)])
                mem[_447 + 100] = JOE_ROUTERAddress
                mem[_447 + 132] = _429
                require ext_code.size(address(cd[(arg5 + 228)]))
                call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args JOE_ROUTERAddress, _429
                mem[_447 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _447 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[_447 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_447 + ceil32(return_data.size) + 100] = _429
                mem[_447 + ceil32(return_data.size) + 132] = 0
                mem[_447 + ceil32(return_data.size) + 164] = 160
                mem[_447 + ceil32(return_data.size) + 260] = mem[_447]
                idx = 0
                s = _447 + 32
                t = _447 + ceil32(return_data.size) + 292
                while idx < mem[_447]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_447 + ceil32(return_data.size) + 196] = this.address
                mem[_447 + ceil32(return_data.size) + 228] = block.timestamp + 60
                require ext_code.size(JOE_ROUTERAddress)
                call JOE_ROUTERAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _447 + ceil32(return_data.size) + (32 * mem[_447]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _655 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _664 = mem[_655]
                require mem[_655] <= test266151307()
                require _655 + mem[_655] + 31 < _655 + return_data.size
                _673 = mem[_655 + mem[_655]]
                if mem[_655 + mem[_655]] > test266151307():
                    revert with 'NH{q', 65
                if _655 + ceil32(return_data.size) + (32 * mem[_655 + mem[_655]]) + 32 > test266151307() or (32 * mem[_655 + mem[_655]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _655 + ceil32(return_data.size) + (32 * mem[_655 + mem[_655]]) + 32
                mem[_655 + ceil32(return_data.size)] = _673
                require _664 + (32 * _673) + 32 <= return_data.size
                idx = 0
                s = _655 + _664 + 32
                t = _655 + ceil32(return_data.size) + 32
                while idx < _673:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _970 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_970] == mem[_970]
                if mem[_970] <= 0:
                    revert with 0, 'Token out balance is zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1024 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1033 = mem[_1024]
                require mem[_1024] == mem[_1024]
                mem[mem[64] + 32] = address(cd[(arg5 + 36)])
                mem[mem[64] + 64] = _429
                mem[mem[64] + 96] = _1033
                emit Swap(address(cd[(arg5 + 228)]), address(cd[(arg5 + 36)]), _429, _1033);
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1078 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1078] == mem[_1078]
                if mem[_1078] <= arg3 + arg4:
                    revert with 0, 'Seized amount less than flashloan amount plus fee'
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1141 = mem[_1132]
                require mem[_1132] == mem[_1132]
                if mem[_1132] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 64] = owner
                emit 0xb78c0811: address(cd[(arg5 + 36)]), _1141 - arg3 - arg4, owner
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg3 + arg4
                require ext_code.size(arg2)
                call arg2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3 + arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1186] == bool(mem[_1186])
                if arg3 > -arg4 - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 36)]))
                staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1222 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1231 = mem[_1222]
                require mem[_1222] == mem[_1222]
                if mem[_1222] < arg3 + arg4:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = owner
                mem[mem[64] + 36] = _1231 - arg3 - arg4
                require ext_code.size(address(cd[(arg5 + 36)]))
                call address(cd[(arg5 + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, _1231 - arg3 - arg4
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1258 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1258] == bool(mem[_1258])
            else:
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[(arg5 + 36)]):
                    _453 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_453]:
                        revert with 'NH{q', 50
                    mem[_453 + 32] = address(cd[(arg5 + 228)])
                    if 1 >= mem[_453]:
                        revert with 'NH{q', 50
                    mem[_453 + 64] = address(cd[(arg5 + 36)])
                    mem[_453 + 100] = JOE_ROUTERAddress
                    mem[_453 + 132] = _429
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args JOE_ROUTERAddress, _429
                    mem[_453 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _453 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[_453 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_453 + ceil32(return_data.size) + 100] = _429
                    mem[_453 + ceil32(return_data.size) + 132] = 0
                    mem[_453 + ceil32(return_data.size) + 164] = 160
                    mem[_453 + ceil32(return_data.size) + 260] = mem[_453]
                    idx = 0
                    s = _453 + 32
                    t = _453 + ceil32(return_data.size) + 292
                    while idx < mem[_453]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_453 + ceil32(return_data.size) + 196] = this.address
                    mem[_453 + ceil32(return_data.size) + 228] = block.timestamp + 60
                    require ext_code.size(JOE_ROUTERAddress)
                    call JOE_ROUTERAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _453 + ceil32(return_data.size) + (32 * mem[_453]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _657 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _666 = mem[_657]
                    require mem[_657] <= test266151307()
                    require _657 + mem[_657] + 31 < _657 + return_data.size
                    _675 = mem[_657 + mem[_657]]
                    if mem[_657 + mem[_657]] > test266151307():
                        revert with 'NH{q', 65
                    if _657 + ceil32(return_data.size) + (32 * mem[_657 + mem[_657]]) + 32 > test266151307() or (32 * mem[_657 + mem[_657]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _657 + ceil32(return_data.size) + (32 * mem[_657 + mem[_657]]) + 32
                    mem[_657 + ceil32(return_data.size)] = _675
                    require _666 + (32 * _675) + 32 <= return_data.size
                    idx = 0
                    s = _657 + _666 + 32
                    t = _657 + ceil32(return_data.size) + 32
                    while idx < _675:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _972 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_972] == mem[_972]
                    if mem[_972] <= 0:
                        revert with 0, 'Token out balance is zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1026 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1035 = mem[_1026]
                    require mem[_1026] == mem[_1026]
                    mem[mem[64] + 32] = address(cd[(arg5 + 36)])
                    mem[mem[64] + 64] = _429
                    mem[mem[64] + 96] = _1035
                    emit Swap(address(cd[(arg5 + 228)]), address(cd[(arg5 + 36)]), _429, _1035);
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1080 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1080] == mem[_1080]
                    if mem[_1080] <= arg3 + arg4:
                        revert with 0, 'Seized amount less than flashloan amount plus fee'
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1143 = mem[_1134]
                    require mem[_1134] == mem[_1134]
                    if mem[_1134] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 64] = owner
                    emit 0xb78c0811: address(cd[(arg5 + 36)]), _1143 - arg3 - arg4, owner
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1188 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1188] == bool(mem[_1188])
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1233 = mem[_1224]
                    require mem[_1224] == mem[_1224]
                    if mem[_1224] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _1233 - arg3 - arg4
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    call address(cd[(arg5 + 36)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _1233 - arg3 - arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1260] == bool(mem[_1260])
                else:
                    _452 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_452]:
                        revert with 'NH{q', 50
                    mem[_452 + 32] = address(cd[(arg5 + 228)])
                    if 1 >= mem[_452]:
                        revert with 'NH{q', 50
                    mem[_452 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 2 >= mem[_452]:
                        revert with 'NH{q', 50
                    mem[_452 + 96] = address(cd[(arg5 + 36)])
                    mem[_452 + 132] = JOE_ROUTERAddress
                    mem[_452 + 164] = _429
                    require ext_code.size(address(cd[(arg5 + 228)]))
                    call address(cd[(arg5 + 228)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args JOE_ROUTERAddress, _429
                    mem[_452 + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _452 + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[_452 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_452 + ceil32(return_data.size) + 132] = _429
                    mem[_452 + ceil32(return_data.size) + 164] = 0
                    mem[_452 + ceil32(return_data.size) + 196] = 160
                    mem[_452 + ceil32(return_data.size) + 292] = mem[_452]
                    idx = 0
                    s = _452 + 32
                    t = _452 + ceil32(return_data.size) + 324
                    while idx < mem[_452]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_452 + ceil32(return_data.size) + 228] = this.address
                    mem[_452 + ceil32(return_data.size) + 260] = block.timestamp + 60
                    require ext_code.size(JOE_ROUTERAddress)
                    call JOE_ROUTERAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _452 + ceil32(return_data.size) + (32 * mem[_452]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _656 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _665 = mem[_656]
                    require mem[_656] <= test266151307()
                    require _656 + mem[_656] + 31 < _656 + return_data.size
                    _674 = mem[_656 + mem[_656]]
                    if mem[_656 + mem[_656]] > test266151307():
                        revert with 'NH{q', 65
                    if _656 + ceil32(return_data.size) + (32 * mem[_656 + mem[_656]]) + 32 > test266151307() or (32 * mem[_656 + mem[_656]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _656 + ceil32(return_data.size) + (32 * mem[_656 + mem[_656]]) + 32
                    mem[_656 + ceil32(return_data.size)] = _674
                    require _665 + (32 * _674) + 32 <= return_data.size
                    idx = 0
                    s = _656 + _665 + 32
                    t = _656 + ceil32(return_data.size) + 32
                    while idx < _674:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _971 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_971] == mem[_971]
                    if mem[_971] <= 0:
                        revert with 0, 'Token out balance is zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1025 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1034 = mem[_1025]
                    require mem[_1025] == mem[_1025]
                    mem[mem[64] + 32] = address(cd[(arg5 + 36)])
                    mem[mem[64] + 64] = _429
                    mem[mem[64] + 96] = _1034
                    emit Swap(address(cd[(arg5 + 228)]), address(cd[(arg5 + 36)]), _429, _1034);
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1079 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1079] == mem[_1079]
                    if mem[_1079] <= arg3 + arg4:
                        revert with 0, 'Seized amount less than flashloan amount plus fee'
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1133 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1142 = mem[_1133]
                    require mem[_1133] == mem[_1133]
                    if mem[_1133] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 64] = owner
                    emit 0xb78c0811: address(cd[(arg5 + 36)]), _1142 - arg3 - arg4, owner
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg3 + arg4
                    require ext_code.size(arg2)
                    call arg2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg3 + arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1187 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1187] == bool(mem[_1187])
                    if arg3 > -arg4 - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    staticcall address(cd[(arg5 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1232 = mem[_1223]
                    require mem[_1223] == mem[_1223]
                    if mem[_1223] < arg3 + arg4:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _1232 - arg3 - arg4
                    require ext_code.size(address(cd[(arg5 + 36)]))
                    call address(cd[(arg5 + 36)]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _1232 - arg3 - arg4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1259] == bool(mem[_1259])
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
