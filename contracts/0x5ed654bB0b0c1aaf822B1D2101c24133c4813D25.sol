contract main {




// =====================  Runtime code  =====================


#
#  - sub_6b25ba63(?)
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor5;
address stor6;
address stor7;
mapping of address stor9;
mapping of address stor10;
mapping of address stor11;

function _fallback() payable {
    revert
}

function sub_d0018c17(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = stor5
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(stor5)
    call stor5.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(arg1) == stor3:
        mem[(7 * ceil32(return_data.size)) + 100] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = stor2
        mem[(8 * ceil32(return_data.size)) + 160] = stor3
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 228] = 0
        mem[(8 * ceil32(return_data.size)) + 260] = 160
        mem[(8 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (8 * ceil32(return_data.size)) + 128
        t = (8 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 292] = this.address
        mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(address(arg2))
        call address(arg2).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _146 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _148 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = _148
        require _146 + (32 * _148) + 32 <= return_data.size
        idx = 0
        s = (8 * ceil32(return_data.size)) + _146 + 224
        t = (10 * ceil32(return_data.size)) + 224
        while idx < _148:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        mem[0] = address(arg1)
        mem[32] = 11
        require ext_code.size(stor11[address(arg1)])
        staticcall stor11[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _247 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _249 = mem[_247]
        require mem[_247] == mem[_247]
        require ext_code.size(stor11[address(arg1)])
        staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _259 = mem[_257]
        require mem[_257] == mem[_257]
        require mem[_257 + 32] == mem[_257 + 32]
        require mem[_257 + 64] == mem[_257 + 92 len 4]
        require mem[_257 + 96] == mem[_257 + 124 len 4]
        mem[mem[64] + 4] = stor11[address(arg1)]
        mem[mem[64] + 36] = 0
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11[address(arg1)], 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(arg1) != stor3:
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_275] == bool(mem[_275])
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = _249
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg1)])
            call stor11[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0, _249, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_291] == mem[_291]
            require ext_code.size(stor11[address(arg1)])
            staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _305 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_305] == mem[_305]
            require mem[_305 + 32] == mem[_305 + 32]
            require mem[_305 + 64] == mem[_305 + 92 len 4]
            require mem[_305 + 96] == mem[_305 + 124 len 4]
            if mem[_305] < _259:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_305] - _259
        else:
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_276] == bool(mem[_276])
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = _249
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg1)])
            call stor11[address(arg1)].0xe7d2e81a with:
                 gas gas_remaining wei
                args 0, _249, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_292] == mem[_292]
            require ext_code.size(stor11[address(arg1)])
            staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _306 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_306] == mem[_306]
            require mem[_306 + 32] == mem[_306 + 32]
            require mem[_306 + 64] == mem[_306 + 92 len 4]
            require mem[_306 + 96] == mem[_306 + 124 len 4]
            if mem[_306] < _259:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_306] - _259
    else:
        require address(arg1)
        mem[(7 * ceil32(return_data.size)) + 100] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = stor2
        mem[(8 * ceil32(return_data.size)) + 160] = address(arg1)
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 228] = 0
        mem[(8 * ceil32(return_data.size)) + 260] = 160
        mem[(8 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (8 * ceil32(return_data.size)) + 128
        t = (8 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 292] = this.address
        mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(address(arg2))
        call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _145 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _147 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = _147
        require _145 + (32 * _147) + 32 <= return_data.size
        idx = 0
        s = (8 * ceil32(return_data.size)) + _145 + 224
        t = (10 * ceil32(return_data.size)) + 224
        while idx < _147:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _248 = mem[_246]
        require mem[_246] == mem[_246]
        mem[0] = address(arg1)
        mem[32] = 11
        require ext_code.size(stor11[address(arg1)])
        staticcall stor11[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _254 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _255 = mem[_254]
        require mem[_254] == mem[_254]
        require ext_code.size(stor11[address(arg1)])
        staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _262 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _263 = mem[_262]
        require mem[_262] == mem[_262]
        require mem[_262 + 32] == mem[_262 + 32]
        require mem[_262 + 64] == mem[_262 + 92 len 4]
        require mem[_262 + 96] == mem[_262 + 124 len 4]
        mem[mem[64] + 4] = stor11[address(arg1)]
        mem[mem[64] + 36] = _248
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11[address(arg1)], _248
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(arg1) != stor3:
            _283 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_283] == bool(mem[_283])
            mem[mem[64] + 4] = _248
            mem[mem[64] + 36] = _255
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg1)])
            call stor11[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _248, _255, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_299] == mem[_299]
            require ext_code.size(stor11[address(arg1)])
            staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_315] == mem[_315]
            require mem[_315 + 32] == mem[_315 + 32]
            require mem[_315 + 64] == mem[_315 + 92 len 4]
            require mem[_315 + 96] == mem[_315 + 124 len 4]
            if mem[_315] < _263:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_315] - _263
        else:
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_284] == bool(mem[_284])
            mem[mem[64] + 4] = _248
            mem[mem[64] + 36] = _255
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg1)])
            call stor11[address(arg1)].0xe7d2e81a with:
                 gas gas_remaining wei
                args _248, _255, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_300] == mem[_300]
            require ext_code.size(stor11[address(arg1)])
            staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _316 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_316] == mem[_316]
            require mem[_316 + 32] == mem[_316 + 32]
            require mem[_316 + 64] == mem[_316 + 92 len 4]
            require mem[_316 + 96] == mem[_316 + 124 len 4]
            if mem[_316] < _263:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_316] - _263
    return memory
      from mem[64]
       len 32
}

function sub_57c91560(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = stor5
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(stor5)
    call stor5.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require address(arg1)
    mem[(7 * ceil32(return_data.size)) + 100] = address(arg4)
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] / 2
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), ext_call.return_data[0] / 2
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 96] = 2
    mem[(8 * ceil32(return_data.size)) + 128] = stor2
    mem[(8 * ceil32(return_data.size)) + 160] = address(arg1)
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
    mem[(8 * ceil32(return_data.size)) + 228] = 0
    mem[(8 * ceil32(return_data.size)) + 260] = 160
    mem[(8 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (8 * ceil32(return_data.size)) + 128
    t = (8 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 292] = this.address
    mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(address(arg4))
    call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _62 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
    _63 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
    mem[(10 * ceil32(return_data.size)) + 192] = _63
    require _62 + (32 * _63) + 32 <= return_data.size
    idx = 0
    s = (8 * ceil32(return_data.size)) + _62 + 224
    t = (10 * ceil32(return_data.size)) + 224
    while idx < _63:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require address(arg2)
    mem[mem[64] + 4] = address(arg5)
    mem[mem[64] + 36] = ext_call.return_data[0] / 2
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), ext_call.return_data[0] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _101 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_101] == bool(mem[_101])
    _103 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_103]:
        revert with 'NH{q', 50
    mem[_103 + 32] = stor2
    if 1 >= mem[_103]:
        revert with 'NH{q', 50
    mem[_103 + 64] = address(arg2)
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[_103 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_103 + 100] = ext_call.return_data[0] / 2
    mem[_103 + 132] = 0
    mem[_103 + 164] = 160
    mem[_103 + 260] = mem[_103]
    idx = 0
    s = _103 + 32
    t = _103 + 292
    while idx < mem[_103]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_103 + 196] = this.address
    mem[_103 + 228] = block.timestamp + 60
    require ext_code.size(address(arg5))
    call address(arg5).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _103 + (32 * mem[_103]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _142 = mem[_141]
    require mem[_141] <= test266151307()
    require _141 + mem[_141] + 31 < _141 + return_data.size
    _143 = mem[_141 + mem[_141]]
    if mem[_141 + mem[_141]] > test266151307():
        revert with 'NH{q', 65
    if _141 + ceil32(return_data.size) + floor32(mem[_141 + mem[_141]]) + 1 > test266151307() or floor32(mem[_141 + mem[_141]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _141 + ceil32(return_data.size) + floor32(mem[_141 + mem[_141]]) + 1
    mem[_141 + ceil32(return_data.size)] = _143
    require _142 + (32 * _143) + 32 <= return_data.size
    idx = 0
    s = _141 + _142 + 32
    t = _141 + ceil32(return_data.size) + 32
    while idx < _143:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _183 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _184 = mem[_183]
    require mem[_183] == mem[_183]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _187 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _188 = mem[_187]
    require mem[_187] == mem[_187]
    if address(arg2) != stor0:
        mem[mem[64] + 4] = stor7
        mem[mem[64] + 36] = _184
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7, _184
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _193 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_193] == bool(mem[_193])
        mem[mem[64] + 4] = stor7
        mem[mem[64] + 36] = _188
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7, _188
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_201] == bool(mem[_201])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _184
        mem[mem[64] + 100] = _188
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(stor7)
        call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _184, _188, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _209 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_209] == mem[_209]
        require mem[_209 + 32] == mem[_209 + 32]
        require mem[_209 + 64] == mem[_209 + 64]
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
        require mem[_221] == mem[_221]
        mem[0] = address(arg3)
        mem[32] = 11
        require ext_code.size(stor11[address(arg3)])
        staticcall stor11[address(arg3)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _233 = mem[_231]
        require mem[_231] == mem[_231]
        require ext_code.size(stor11[address(arg3)])
        staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _241 = mem[_239]
        require mem[_239] == mem[_239]
        require mem[_239 + 32] == mem[_239 + 32]
        require mem[_239 + 64] == mem[_239 + 92 len 4]
        require mem[_239 + 96] == mem[_239 + 124 len 4]
        mem[mem[64] + 4] = stor11[address(arg3)]
        mem[mem[64] + 36] = _223
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11[address(arg3)], _223
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(arg3) != stor3:
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_257] == bool(mem[_257])
            mem[mem[64] + 4] = _223
            mem[mem[64] + 36] = _233
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg3)])
            call stor11[address(arg3)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _223, _233, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_273] == mem[_273]
            require ext_code.size(stor11[address(arg3)])
            staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _289 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_289] == mem[_289]
            require mem[_289 + 32] == mem[_289 + 32]
            require mem[_289 + 64] == mem[_289 + 92 len 4]
            require mem[_289 + 96] == mem[_289 + 124 len 4]
            if mem[_289] < _241:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_289] - _241
        else:
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_258] == bool(mem[_258])
            mem[mem[64] + 4] = _223
            mem[mem[64] + 36] = _233
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg3)])
            call stor11[address(arg3)].0xe7d2e81a with:
                 gas gas_remaining wei
                args _223, _233, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_274] == mem[_274]
            require ext_code.size(stor11[address(arg3)])
            staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _290 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_290] == mem[_290]
            require mem[_290 + 32] == mem[_290 + 32]
            require mem[_290 + 64] == mem[_290 + 92 len 4]
            require mem[_290 + 96] == mem[_290 + 124 len 4]
            if mem[_290] < _241:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_290] - _241
    else:
        mem[mem[64] + 4] = stor6
        mem[mem[64] + 36] = _184
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, _184
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _194 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_194] == bool(mem[_194])
        mem[mem[64] + 4] = stor6
        mem[mem[64] + 36] = _188
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, _188
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_202] == bool(mem[_202])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _184
        mem[mem[64] + 100] = _188
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(stor6)
        call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _184, _188, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _210 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_210] == mem[_210]
        require mem[_210 + 32] == mem[_210 + 32]
        require mem[_210 + 64] == mem[_210 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _222 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _224 = mem[_222]
        require mem[_222] == mem[_222]
        mem[0] = address(arg3)
        mem[32] = 11
        require ext_code.size(stor11[address(arg3)])
        staticcall stor11[address(arg3)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _234 = mem[_232]
        require mem[_232] == mem[_232]
        require ext_code.size(stor11[address(arg3)])
        staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _240 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _242 = mem[_240]
        require mem[_240] == mem[_240]
        require mem[_240 + 32] == mem[_240 + 32]
        require mem[_240 + 64] == mem[_240 + 92 len 4]
        require mem[_240 + 96] == mem[_240 + 124 len 4]
        mem[mem[64] + 4] = stor11[address(arg3)]
        mem[mem[64] + 36] = _224
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11[address(arg3)], _224
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(arg3) != stor3:
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_259] == bool(mem[_259])
            mem[mem[64] + 4] = _224
            mem[mem[64] + 36] = _234
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg3)])
            call stor11[address(arg3)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _224, _234, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_275] == mem[_275]
            require ext_code.size(stor11[address(arg3)])
            staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_291] == mem[_291]
            require mem[_291 + 32] == mem[_291 + 32]
            require mem[_291 + 64] == mem[_291 + 92 len 4]
            require mem[_291 + 96] == mem[_291 + 124 len 4]
            if mem[_291] < _242:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_291] - _242
        else:
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_260] == bool(mem[_260])
            mem[mem[64] + 4] = _224
            mem[mem[64] + 36] = _234
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg3)])
            call stor11[address(arg3)].0xe7d2e81a with:
                 gas gas_remaining wei
                args _224, _234, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_276] == mem[_276]
            require ext_code.size(stor11[address(arg3)])
            staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_292] == mem[_292]
            require mem[_292 + 32] == mem[_292 + 32]
            require mem[_292 + 64] == mem[_292 + 92 len 4]
            require mem[_292 + 96] == mem[_292 + 124 len 4]
            if mem[_292] < _242:
                revert with 'NH{q', 17
            mem[mem[64]] = mem[_292] - _242
    return memory
      from mem[64]
       len 32
}

function sub_cfde5f88(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = stor5
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(stor5)
    call stor5.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(arg1) == stor3:
        mem[(7 * ceil32(return_data.size)) + 100] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = stor2
        mem[(8 * ceil32(return_data.size)) + 160] = stor3
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 228] = 0
        mem[(8 * ceil32(return_data.size)) + 260] = 160
        mem[(8 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (8 * ceil32(return_data.size)) + 128
        t = (8 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 292] = this.address
        mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(address(arg2))
        call address(arg2).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _138 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _140 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = _140
        require _138 + (32 * _140) + 32 <= return_data.size
        idx = 0
        s = (8 * ceil32(return_data.size)) + _138 + 224
        t = (10 * ceil32(return_data.size)) + 224
        while idx < _140:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        mem[0] = address(arg1)
        mem[32] = 11
        require ext_code.size(stor11[address(arg1)])
        staticcall stor11[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _241 = mem[_239]
        require mem[_239] == mem[_239]
        require ext_code.size(stor11[address(arg1)])
        staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _249 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _251 = mem[_249]
        require mem[_249] == mem[_249]
        require mem[_249 + 32] == mem[_249 + 32]
        require mem[_249 + 64] == mem[_249 + 92 len 4]
        require mem[_249 + 96] == mem[_249 + 124 len 4]
        mem[mem[64] + 4] = stor11[address(arg1)]
        mem[mem[64] + 36] = 0
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11[address(arg1)], 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(arg1) != stor3:
            _267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_267] == bool(mem[_267])
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = _241
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg1)])
            call stor11[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0, _241, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _283 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_283] == mem[_283]
            require ext_code.size(stor11[address(arg1)])
            staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _297 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_297] == mem[_297]
            require mem[_297 + 32] == mem[_297 + 32]
            require mem[_297 + 64] == mem[_297 + 92 len 4]
            require mem[_297 + 96] == mem[_297 + 124 len 4]
            if mem[_297] < _251:
                revert with 'NH{q', 17
            if mem[_297] - _251 < arg3:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _329 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _335 = mem[_329]
            require mem[_329] == mem[_329]
            if mem[_329] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _361 = mem[_351]
                require mem[_351] == mem[_351]
                if mem[_351] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _361
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _361
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _387 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_387] == bool(mem[_387])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _335
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _335
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _357 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_357] == bool(mem[_357])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _388 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _394 = mem[_388]
                require mem[_388] == mem[_388]
                if mem[_388] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _394
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _394
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _415 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_415] == bool(mem[_415])
        else:
            _268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_268] == bool(mem[_268])
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = _241
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg1)])
            call stor11[address(arg1)].0xe7d2e81a with:
                 gas gas_remaining wei
                args 0, _241, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_284] == mem[_284]
            require ext_code.size(stor11[address(arg1)])
            staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _298 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_298] == mem[_298]
            require mem[_298 + 32] == mem[_298 + 32]
            require mem[_298 + 64] == mem[_298 + 92 len 4]
            require mem[_298 + 96] == mem[_298 + 124 len 4]
            if mem[_298] < _251:
                revert with 'NH{q', 17
            if mem[_298] - _251 < arg3:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _330 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _336 = mem[_330]
            require mem[_330] == mem[_330]
            if mem[_330] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _353 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _362 = mem[_353]
                require mem[_353] == mem[_353]
                if mem[_353] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _362
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _362
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _389 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_389] == bool(mem[_389])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _336
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _336
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_358] == bool(mem[_358])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _390 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _396 = mem[_390]
                require mem[_390] == mem[_390]
                if mem[_390] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _396
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _396
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _416 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_416] == bool(mem[_416])
    else:
        require address(arg1)
        mem[(7 * ceil32(return_data.size)) + 100] = address(arg2)
        mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 96] = 2
        mem[(8 * ceil32(return_data.size)) + 128] = stor2
        mem[(8 * ceil32(return_data.size)) + 160] = address(arg1)
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 228] = 0
        mem[(8 * ceil32(return_data.size)) + 260] = 160
        mem[(8 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (8 * ceil32(return_data.size)) + 128
        t = (8 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 292] = this.address
        mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(address(arg2))
        call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _137 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
        _139 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = _139
        require _137 + (32 * _139) + 32 <= return_data.size
        idx = 0
        s = (8 * ceil32(return_data.size)) + _137 + 224
        t = (10 * ceil32(return_data.size)) + 224
        while idx < _139:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _238 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _240 = mem[_238]
        require mem[_238] == mem[_238]
        mem[0] = address(arg1)
        mem[32] = 11
        require ext_code.size(stor11[address(arg1)])
        staticcall stor11[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _247 = mem[_246]
        require mem[_246] == mem[_246]
        require ext_code.size(stor11[address(arg1)])
        staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _254 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _255 = mem[_254]
        require mem[_254] == mem[_254]
        require mem[_254 + 32] == mem[_254 + 32]
        require mem[_254 + 64] == mem[_254 + 92 len 4]
        require mem[_254 + 96] == mem[_254 + 124 len 4]
        mem[mem[64] + 4] = stor11[address(arg1)]
        mem[mem[64] + 36] = _240
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11[address(arg1)], _240
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(arg1) != stor3:
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_275] == bool(mem[_275])
            mem[mem[64] + 4] = _240
            mem[mem[64] + 36] = _247
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg1)])
            call stor11[address(arg1)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _240, _247, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_291] == mem[_291]
            require ext_code.size(stor11[address(arg1)])
            staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_307] == mem[_307]
            require mem[_307 + 32] == mem[_307 + 32]
            require mem[_307 + 64] == mem[_307 + 92 len 4]
            require mem[_307 + 96] == mem[_307 + 124 len 4]
            if mem[_307] < _255:
                revert with 'NH{q', 17
            if mem[_307] - _255 < arg3:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _343 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _347 = mem[_343]
            require mem[_343] == mem[_343]
            if mem[_343] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _369 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _377 = mem[_369]
                require mem[_369] == mem[_369]
                if mem[_369] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _377
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _377
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _403 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_403] == bool(mem[_403])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _347
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _347
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _373 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_373] == bool(mem[_373])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _404 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _408 = mem[_404]
                require mem[_404] == mem[_404]
                if mem[_404] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _408
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _408
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _421 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_421] == bool(mem[_421])
        else:
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_276] == bool(mem[_276])
            mem[mem[64] + 4] = _240
            mem[mem[64] + 36] = _247
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg1)])
            call stor11[address(arg1)].0xe7d2e81a with:
                 gas gas_remaining wei
                args _240, _247, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_292] == mem[_292]
            require ext_code.size(stor11[address(arg1)])
            staticcall stor11[address(arg1)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _308 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_308] == mem[_308]
            require mem[_308 + 32] == mem[_308 + 32]
            require mem[_308 + 64] == mem[_308 + 92 len 4]
            require mem[_308 + 96] == mem[_308 + 124 len 4]
            if mem[_308] < _255:
                revert with 'NH{q', 17
            if mem[_308] - _255 < arg3:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _344 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _348 = mem[_344]
            require mem[_344] == mem[_344]
            if mem[_344] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _371 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _378 = mem[_371]
                require mem[_371] == mem[_371]
                if mem[_371] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _378
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _378
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _405 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_405] == bool(mem[_405])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _348
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _348
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _374 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_374] == bool(mem[_374])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _406 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _410 = mem[_406]
                require mem[_406] == mem[_406]
                if mem[_406] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _410
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _410
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _422 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_422] == bool(mem[_422])
}

function sub_ea57799c(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = stor5
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(stor5)
    call stor5.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require address(arg1)
    mem[(7 * ceil32(return_data.size)) + 100] = address(arg4)
    mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] / 2
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), ext_call.return_data[0] / 2
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 96] = 2
    mem[(8 * ceil32(return_data.size)) + 128] = stor2
    mem[(8 * ceil32(return_data.size)) + 160] = address(arg1)
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / 2
    mem[(8 * ceil32(return_data.size)) + 228] = 0
    mem[(8 * ceil32(return_data.size)) + 260] = 160
    mem[(8 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (8 * ceil32(return_data.size)) + 128
    t = (8 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 292] = this.address
    mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(address(arg4))
    call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _61 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
    _62 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 193
    mem[(10 * ceil32(return_data.size)) + 192] = _62
    require _61 + (32 * _62) + 32 <= return_data.size
    idx = 0
    s = (8 * ceil32(return_data.size)) + _61 + 224
    t = (10 * ceil32(return_data.size)) + 224
    while idx < _62:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require address(arg2)
    mem[mem[64] + 4] = address(arg5)
    mem[mem[64] + 36] = ext_call.return_data[0] / 2
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), ext_call.return_data[0] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_100] == bool(mem[_100])
    _102 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_102]:
        revert with 'NH{q', 50
    mem[_102 + 32] = stor2
    if 1 >= mem[_102]:
        revert with 'NH{q', 50
    mem[_102 + 64] = address(arg2)
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[_102 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_102 + 100] = ext_call.return_data[0] / 2
    mem[_102 + 132] = 0
    mem[_102 + 164] = 160
    mem[_102 + 260] = mem[_102]
    idx = 0
    s = _102 + 32
    t = _102 + 292
    while idx < mem[_102]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_102 + 196] = this.address
    mem[_102 + 228] = block.timestamp + 60
    require ext_code.size(address(arg5))
    call address(arg5).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _102 + (32 * mem[_102]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _140 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _141 = mem[_140]
    require mem[_140] <= test266151307()
    require _140 + mem[_140] + 31 < _140 + return_data.size
    _142 = mem[_140 + mem[_140]]
    if mem[_140 + mem[_140]] > test266151307():
        revert with 'NH{q', 65
    if _140 + ceil32(return_data.size) + floor32(mem[_140 + mem[_140]]) + 1 > test266151307() or floor32(mem[_140 + mem[_140]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _140 + ceil32(return_data.size) + floor32(mem[_140 + mem[_140]]) + 1
    mem[_140 + ceil32(return_data.size)] = _142
    require _141 + (32 * _142) + 32 <= return_data.size
    idx = 0
    s = _140 + _141 + 32
    t = _140 + ceil32(return_data.size) + 32
    while idx < _142:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _182 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _183 = mem[_182]
    require mem[_182] == mem[_182]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _186 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _187 = mem[_186]
    require mem[_186] == mem[_186]
    if address(arg2) != stor0:
        mem[mem[64] + 4] = stor7
        mem[mem[64] + 36] = _183
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7, _183
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_192] == bool(mem[_192])
        mem[mem[64] + 4] = stor7
        mem[mem[64] + 36] = _187
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor7, _187
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _200 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_200] == bool(mem[_200])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _183
        mem[mem[64] + 100] = _187
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(stor7)
        call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _183, _187, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _208 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_208] == mem[_208]
        require mem[_208 + 32] == mem[_208 + 32]
        require mem[_208 + 64] == mem[_208 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _220 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _222 = mem[_220]
        require mem[_220] == mem[_220]
        mem[0] = address(arg3)
        mem[32] = 11
        require ext_code.size(stor11[address(arg3)])
        staticcall stor11[address(arg3)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _230 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _232 = mem[_230]
        require mem[_230] == mem[_230]
        require ext_code.size(stor11[address(arg3)])
        staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _238 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _240 = mem[_238]
        require mem[_238] == mem[_238]
        require mem[_238 + 32] == mem[_238 + 32]
        require mem[_238 + 64] == mem[_238 + 92 len 4]
        require mem[_238 + 96] == mem[_238 + 124 len 4]
        mem[mem[64] + 4] = stor11[address(arg3)]
        mem[mem[64] + 36] = _222
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11[address(arg3)], _222
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(arg3) != stor3:
            _256 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_256] == bool(mem[_256])
            mem[mem[64] + 4] = _222
            mem[mem[64] + 36] = _232
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg3)])
            call stor11[address(arg3)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _222, _232, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _272 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_272] == mem[_272]
            require ext_code.size(stor11[address(arg3)])
            staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_288] == mem[_288]
            require mem[_288 + 32] == mem[_288 + 32]
            require mem[_288 + 64] == mem[_288 + 92 len 4]
            require mem[_288 + 96] == mem[_288 + 124 len 4]
            if mem[_288] < _240:
                revert with 'NH{q', 17
            if mem[_288] - _240 < arg6:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _328 = mem[_324]
            require mem[_324] == mem[_324]
            if mem[_324] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _344 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _356 = mem[_344]
                require mem[_344] == mem[_344]
                if mem[_344] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _356
                    require ext_code.size(address(arg2))
                    call address(arg2).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _356
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_380] == bool(mem[_380])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _328
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _328
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_352] == bool(mem[_352])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _389 = mem[_381]
                require mem[_381] == mem[_381]
                if mem[_381] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _389
                    require ext_code.size(address(arg2))
                    call address(arg2).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _389
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _404 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_404] == bool(mem[_404])
        else:
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_257] == bool(mem[_257])
            mem[mem[64] + 4] = _222
            mem[mem[64] + 36] = _232
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg3)])
            call stor11[address(arg3)].0xe7d2e81a with:
                 gas gas_remaining wei
                args _222, _232, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_273] == mem[_273]
            require ext_code.size(stor11[address(arg3)])
            staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _289 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_289] == mem[_289]
            require mem[_289 + 32] == mem[_289 + 32]
            require mem[_289 + 64] == mem[_289 + 92 len 4]
            require mem[_289 + 96] == mem[_289 + 124 len 4]
            if mem[_289] < _240:
                revert with 'NH{q', 17
            if mem[_289] - _240 < arg6:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _329 = mem[_325]
            require mem[_325] == mem[_325]
            if mem[_325] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _346 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _357 = mem[_346]
                require mem[_346] == mem[_346]
                if mem[_346] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _357
                    require ext_code.size(address(arg2))
                    call address(arg2).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _357
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_382] == bool(mem[_382])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _329
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _329
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _353 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_353] == bool(mem[_353])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _391 = mem[_383]
                require mem[_383] == mem[_383]
                if mem[_383] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _391
                    require ext_code.size(address(arg2))
                    call address(arg2).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _391
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _405 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_405] == bool(mem[_405])
    else:
        mem[mem[64] + 4] = stor6
        mem[mem[64] + 36] = _183
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, _183
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _193 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_193] == bool(mem[_193])
        mem[mem[64] + 4] = stor6
        mem[mem[64] + 36] = _187
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, _187
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_201] == bool(mem[_201])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _183
        mem[mem[64] + 100] = _187
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(stor6)
        call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), _183, _187, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _209 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_209] == mem[_209]
        require mem[_209 + 32] == mem[_209 + 32]
        require mem[_209 + 64] == mem[_209 + 64]
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
        require mem[_221] == mem[_221]
        mem[0] = address(arg3)
        mem[32] = 11
        require ext_code.size(stor11[address(arg3)])
        staticcall stor11[address(arg3)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _233 = mem[_231]
        require mem[_231] == mem[_231]
        require ext_code.size(stor11[address(arg3)])
        staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _241 = mem[_239]
        require mem[_239] == mem[_239]
        require mem[_239 + 32] == mem[_239 + 32]
        require mem[_239 + 64] == mem[_239 + 92 len 4]
        require mem[_239 + 96] == mem[_239 + 124 len 4]
        mem[mem[64] + 4] = stor11[address(arg3)]
        mem[mem[64] + 36] = _223
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11[address(arg3)], _223
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(arg3) != stor3:
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_258] == bool(mem[_258])
            mem[mem[64] + 4] = _223
            mem[mem[64] + 36] = _233
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg3)])
            call stor11[address(arg3)].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _223, _233, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_274] == mem[_274]
            require ext_code.size(stor11[address(arg3)])
            staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _290 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_290] == mem[_290]
            require mem[_290 + 32] == mem[_290 + 32]
            require mem[_290 + 64] == mem[_290 + 92 len 4]
            require mem[_290 + 96] == mem[_290 + 124 len 4]
            if mem[_290] < _241:
                revert with 'NH{q', 17
            if mem[_290] - _241 < arg6:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _326 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _330 = mem[_326]
            require mem[_326] == mem[_326]
            if mem[_326] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _348 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _358 = mem[_348]
                require mem[_348] == mem[_348]
                if mem[_348] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _358
                    require ext_code.size(address(arg2))
                    call address(arg2).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _358
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _384 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_384] == bool(mem[_384])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _330
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _330
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_354] == bool(mem[_354])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _393 = mem[_385]
                require mem[_385] == mem[_385]
                if mem[_385] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _393
                    require ext_code.size(address(arg2))
                    call address(arg2).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _393
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_406] == bool(mem[_406])
        else:
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_259] == bool(mem[_259])
            mem[mem[64] + 4] = _223
            mem[mem[64] + 36] = _233
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(stor11[address(arg3)])
            call stor11[address(arg3)].0xe7d2e81a with:
                 gas gas_remaining wei
                args _223, _233, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_275] == mem[_275]
            require ext_code.size(stor11[address(arg3)])
            staticcall stor11[address(arg3)].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_291] == mem[_291]
            require mem[_291 + 32] == mem[_291 + 32]
            require mem[_291 + 64] == mem[_291 + 92 len 4]
            require mem[_291 + 96] == mem[_291 + 124 len 4]
            if mem[_291] < _241:
                revert with 'NH{q', 17
            if mem[_291] - _241 < arg6:
                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _327 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _331 = mem[_327]
            require mem[_327] == mem[_327]
            if mem[_327] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _350 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _359 = mem[_350]
                require mem[_350] == mem[_350]
                if mem[_350] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _359
                    require ext_code.size(address(arg2))
                    call address(arg2).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _359
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _386 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_386] == bool(mem[_386])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _331
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _331
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_355] == bool(mem[_355])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _395 = mem[_387]
                require mem[_387] == mem[_387]
                if mem[_387] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _395
                    require ext_code.size(address(arg2))
                    call address(arg2).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _395
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_407] == bool(mem[_407])
}

function sub_f24a38bd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = stor5
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(stor5)
    call stor5.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[0] = address(arg1)
    if address(arg2) != stor6:
        mem[32] = 10
        require stor10[address(arg1)]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].getReserves() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].token0() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].token1() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != address(arg1):
            if ext_call.return_data[12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor2:
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > -(ext_call.return_data[0] / 2) - 1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                revert with 'NH{q', 17
            if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                revert with 'NH{q', 18
            if Mask(112, 0, ext_call.return_data[0]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) - 1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                revert with 'NH{q', 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                revert with 'NH{q', 18
            if Mask(112, 0, ext_call.return_data[0]) > -(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) - 1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                revert with 'NH{q', 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
                revert with 'NH{q', 18
            require address(arg1)
            mem[(11 * ceil32(return_data.size)) + 100] = address(arg2)
            mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = stor2
            mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
            mem[(12 * ceil32(return_data.size)) + 228] = 0
            mem[(12 * ceil32(return_data.size)) + 260] = 160
            mem[(12 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 128
            t = (12 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(12 * ceil32(return_data.size)) + 292] = this.address
            mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _343 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _349 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _349
            require _343 + (32 * _349) + 32 <= return_data.size
            idx = 0
            s = (12 * ceil32(return_data.size)) + _343 + 224
            t = (13 * ceil32(return_data.size)) + 224
            while idx < _349:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _589 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _595 = mem[_589]
            require mem[_589] == mem[_589]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _613 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _619 = mem[_613]
            require mem[_613] == mem[_613]
            if address(arg1) != stor0:
                mem[mem[64] + 4] = stor7
                mem[mem[64] + 36] = _595
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, _595
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_649] == bool(mem[_649])
                mem[mem[64] + 4] = stor7
                mem[mem[64] + 36] = _619
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, _619
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _697 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_697] == bool(mem[_697])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _595
                mem[mem[64] + 100] = _619
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor7)
                call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _595, _619, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _745 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_745] == mem[_745]
                require mem[_745 + 32] == mem[_745 + 32]
                require mem[_745 + 64] == mem[_745 + 64]
                mem[0] = address(arg1)
                if address(arg2) != stor6:
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _865 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _889 = mem[_865]
                    require mem[_865] == mem[_865]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1009 = mem[_985]
                    require mem[_985] == mem[_985]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1081 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1105 = mem[_1081]
                    require mem[_1081] == mem[_1081]
                    require mem[_1081 + 32] == mem[_1081 + 32]
                    require mem[_1081 + 64] == mem[_1081 + 92 len 4]
                    require mem[_1081 + 96] == mem[_1081 + 124 len 4]
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _889
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _889
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor10[address(arg1)] != stor3:
                        _1297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1297] == bool(mem[_1297])
                        mem[mem[64] + 4] = _889
                        mem[mem[64] + 36] = _1009
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _889, _1009, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1489 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1489] == mem[_1489]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1681 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1681] == mem[_1681]
                        require mem[_1681 + 32] == mem[_1681 + 32]
                        require mem[_1681 + 64] == mem[_1681 + 92 len 4]
                        require mem[_1681 + 96] == mem[_1681 + 124 len 4]
                        if mem[_1681] < _1105:
                            revert with 'NH{q', 17
                        if mem[_1681] - _1105 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2113 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2161 = mem[_2113]
                        require mem[_2113] == mem[_2113]
                        if mem[_2113] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2353 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2497 = mem[_2353]
                            require mem[_2353] == mem[_2353]
                            if mem[_2353] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2497
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2497
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2785 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2785] == bool(mem[_2785])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2161
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2161
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2449 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2449] == bool(mem[_2449])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2786 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2882 = mem[_2786]
                            require mem[_2786] == mem[_2786]
                            if mem[_2786] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2882
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2882
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3073 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3073] == bool(mem[_3073])
                    else:
                        _1298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1298] == bool(mem[_1298])
                        mem[mem[64] + 4] = _889
                        mem[mem[64] + 36] = _1009
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                             gas gas_remaining wei
                            args _889, _1009, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1490 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1490] == mem[_1490]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1682 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1682] == mem[_1682]
                        require mem[_1682 + 32] == mem[_1682 + 32]
                        require mem[_1682 + 64] == mem[_1682 + 92 len 4]
                        require mem[_1682 + 96] == mem[_1682 + 124 len 4]
                        if mem[_1682] < _1105:
                            revert with 'NH{q', 17
                        if mem[_1682] - _1105 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2114 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2162 = mem[_2114]
                        require mem[_2114] == mem[_2114]
                        if mem[_2114] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2355 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2498 = mem[_2355]
                            require mem[_2355] == mem[_2355]
                            if mem[_2355] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2498
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2498
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2787 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2787] == bool(mem[_2787])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2162
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2162
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2450 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2450] == bool(mem[_2450])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2788 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2884 = mem[_2788]
                            require mem[_2788] == mem[_2788]
                            if mem[_2788] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2884
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2884
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3074 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3074] == bool(mem[_3074])
                else:
                    mem[32] = 9
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor9[address(arg1)])
                    staticcall stor9[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _890 = mem[_866]
                    require mem[_866] == mem[_866]
                    mem[0] = stor9[address(arg1)]
                    mem[32] = 11
                    require ext_code.size(stor11[stor9[address(arg1)]])
                    staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _986 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1010 = mem[_986]
                    require mem[_986] == mem[_986]
                    require ext_code.size(stor11[stor9[address(arg1)]])
                    staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1082 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1106 = mem[_1082]
                    require mem[_1082] == mem[_1082]
                    require mem[_1082 + 32] == mem[_1082 + 32]
                    require mem[_1082 + 64] == mem[_1082 + 92 len 4]
                    require mem[_1082 + 96] == mem[_1082 + 124 len 4]
                    mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                    mem[mem[64] + 36] = _890
                    require ext_code.size(stor9[address(arg1)])
                    call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor9[address(arg1)]], _890
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor9[address(arg1)] != stor3:
                        _1299 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1299] == bool(mem[_1299])
                        mem[mem[64] + 4] = _890
                        mem[mem[64] + 36] = _1010
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _890, _1010, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1491 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1491] == mem[_1491]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1683 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1683] == mem[_1683]
                        require mem[_1683 + 32] == mem[_1683 + 32]
                        require mem[_1683 + 64] == mem[_1683 + 92 len 4]
                        require mem[_1683 + 96] == mem[_1683 + 124 len 4]
                        if mem[_1683] < _1106:
                            revert with 'NH{q', 17
                        if mem[_1683] - _1106 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2115 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2163 = mem[_2115]
                        require mem[_2115] == mem[_2115]
                        if mem[_2115] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2357 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2499 = mem[_2357]
                            require mem[_2357] == mem[_2357]
                            if mem[_2357] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2499
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2499
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2789 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2789] == bool(mem[_2789])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2163
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2163
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2451 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2451] == bool(mem[_2451])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2790 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2886 = mem[_2790]
                            require mem[_2790] == mem[_2790]
                            if mem[_2790] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2886
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2886
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3075 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3075] == bool(mem[_3075])
                    else:
                        _1300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1300] == bool(mem[_1300])
                        mem[mem[64] + 4] = _890
                        mem[mem[64] + 36] = _1010
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                             gas gas_remaining wei
                            args _890, _1010, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1492 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1492] == mem[_1492]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1684 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1684] == mem[_1684]
                        require mem[_1684 + 32] == mem[_1684 + 32]
                        require mem[_1684 + 64] == mem[_1684 + 92 len 4]
                        require mem[_1684 + 96] == mem[_1684 + 124 len 4]
                        if mem[_1684] < _1106:
                            revert with 'NH{q', 17
                        if mem[_1684] - _1106 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2116 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2164 = mem[_2116]
                        require mem[_2116] == mem[_2116]
                        if mem[_2116] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2359 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2500 = mem[_2359]
                            require mem[_2359] == mem[_2359]
                            if mem[_2359] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2500
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2500
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2791 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2791] == bool(mem[_2791])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2164
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2164
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2452] == bool(mem[_2452])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2792 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2888 = mem[_2792]
                            require mem[_2792] == mem[_2792]
                            if mem[_2792] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2888
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2888
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3076 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3076] == bool(mem[_3076])
            else:
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _595
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _595
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _650 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_650] == bool(mem[_650])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _619
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _619
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _698 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_698] == bool(mem[_698])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _595
                mem[mem[64] + 100] = _619
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _595, _619, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _746 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_746] == mem[_746]
                require mem[_746 + 32] == mem[_746 + 32]
                require mem[_746 + 64] == mem[_746 + 64]
                mem[0] = address(arg1)
                if address(arg2) != stor6:
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _867 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _891 = mem[_867]
                    require mem[_867] == mem[_867]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _987 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1011 = mem[_987]
                    require mem[_987] == mem[_987]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1083 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1107 = mem[_1083]
                    require mem[_1083] == mem[_1083]
                    require mem[_1083 + 32] == mem[_1083 + 32]
                    require mem[_1083 + 64] == mem[_1083 + 92 len 4]
                    require mem[_1083 + 96] == mem[_1083 + 124 len 4]
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _891
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _891
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor10[address(arg1)] != stor3:
                        _1301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1301] == bool(mem[_1301])
                        mem[mem[64] + 4] = _891
                        mem[mem[64] + 36] = _1011
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _891, _1011, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1493 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1493] == mem[_1493]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1685 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1685] == mem[_1685]
                        require mem[_1685 + 32] == mem[_1685 + 32]
                        require mem[_1685 + 64] == mem[_1685 + 92 len 4]
                        require mem[_1685 + 96] == mem[_1685 + 124 len 4]
                        if mem[_1685] < _1107:
                            revert with 'NH{q', 17
                        if mem[_1685] - _1107 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2165 = mem[_2117]
                        require mem[_2117] == mem[_2117]
                        if mem[_2117] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2361 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2501 = mem[_2361]
                            require mem[_2361] == mem[_2361]
                            if mem[_2361] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2501
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2501
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2793 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2793] == bool(mem[_2793])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2165
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2165
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2453 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2453] == bool(mem[_2453])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2794 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2890 = mem[_2794]
                            require mem[_2794] == mem[_2794]
                            if mem[_2794] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2890
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2890
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3077 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3077] == bool(mem[_3077])
                    else:
                        _1302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1302] == bool(mem[_1302])
                        mem[mem[64] + 4] = _891
                        mem[mem[64] + 36] = _1011
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                             gas gas_remaining wei
                            args _891, _1011, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1494] == mem[_1494]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1686 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1686] == mem[_1686]
                        require mem[_1686 + 32] == mem[_1686 + 32]
                        require mem[_1686 + 64] == mem[_1686 + 92 len 4]
                        require mem[_1686 + 96] == mem[_1686 + 124 len 4]
                        if mem[_1686] < _1107:
                            revert with 'NH{q', 17
                        if mem[_1686] - _1107 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2118 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2166 = mem[_2118]
                        require mem[_2118] == mem[_2118]
                        if mem[_2118] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2363 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2502 = mem[_2363]
                            require mem[_2363] == mem[_2363]
                            if mem[_2363] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2502
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2502
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2795 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2795] == bool(mem[_2795])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2166
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2166
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2454 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2454] == bool(mem[_2454])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2796 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2892 = mem[_2796]
                            require mem[_2796] == mem[_2796]
                            if mem[_2796] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2892
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2892
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3078 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3078] == bool(mem[_3078])
                else:
                    mem[32] = 9
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor9[address(arg1)])
                    staticcall stor9[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _868 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _892 = mem[_868]
                    require mem[_868] == mem[_868]
                    mem[0] = stor9[address(arg1)]
                    mem[32] = 11
                    require ext_code.size(stor11[stor9[address(arg1)]])
                    staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _988 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1012 = mem[_988]
                    require mem[_988] == mem[_988]
                    require ext_code.size(stor11[stor9[address(arg1)]])
                    staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1084 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1108 = mem[_1084]
                    require mem[_1084] == mem[_1084]
                    require mem[_1084 + 32] == mem[_1084 + 32]
                    require mem[_1084 + 64] == mem[_1084 + 92 len 4]
                    require mem[_1084 + 96] == mem[_1084 + 124 len 4]
                    mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                    mem[mem[64] + 36] = _892
                    require ext_code.size(stor9[address(arg1)])
                    call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor9[address(arg1)]], _892
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor9[address(arg1)] != stor3:
                        _1303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1303] == bool(mem[_1303])
                        mem[mem[64] + 4] = _892
                        mem[mem[64] + 36] = _1012
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _892, _1012, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1495 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1495] == mem[_1495]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1687 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1687] == mem[_1687]
                        require mem[_1687 + 32] == mem[_1687 + 32]
                        require mem[_1687 + 64] == mem[_1687 + 92 len 4]
                        require mem[_1687 + 96] == mem[_1687 + 124 len 4]
                        if mem[_1687] < _1108:
                            revert with 'NH{q', 17
                        if mem[_1687] - _1108 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2119 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2167 = mem[_2119]
                        require mem[_2119] == mem[_2119]
                        if mem[_2119] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2365 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2503 = mem[_2365]
                            require mem[_2365] == mem[_2365]
                            if mem[_2365] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2503
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2503
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2797 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2797] == bool(mem[_2797])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2167
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2167
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2455] == bool(mem[_2455])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2798 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2894 = mem[_2798]
                            require mem[_2798] == mem[_2798]
                            if mem[_2798] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2894
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2894
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3079 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3079] == bool(mem[_3079])
                    else:
                        _1304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1304] == bool(mem[_1304])
                        mem[mem[64] + 4] = _892
                        mem[mem[64] + 36] = _1012
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                             gas gas_remaining wei
                            args _892, _1012, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1496] == mem[_1496]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1688 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1688] == mem[_1688]
                        require mem[_1688 + 32] == mem[_1688 + 32]
                        require mem[_1688 + 64] == mem[_1688 + 92 len 4]
                        require mem[_1688 + 96] == mem[_1688 + 124 len 4]
                        if mem[_1688] < _1108:
                            revert with 'NH{q', 17
                        if mem[_1688] - _1108 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2168 = mem[_2120]
                        require mem[_2120] == mem[_2120]
                        if mem[_2120] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2367 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2504 = mem[_2367]
                            require mem[_2367] == mem[_2367]
                            if mem[_2367] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2504
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2504
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2799 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2799] == bool(mem[_2799])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2168
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2168
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2456 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2456] == bool(mem[_2456])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2800 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2896 = mem[_2800]
                            require mem[_2800] == mem[_2800]
                            if mem[_2800] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2896
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2896
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3080 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3080] == bool(mem[_3080])
        else:
            if ext_call.return_data[12 len 20] == stor2:
                if Mask(112, 0, ext_call.return_data[32]) > -(ext_call.return_data[0] / 2) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) > -(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                    revert with 'NH{q', 17
                if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > (-1 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))):
                    revert with 'NH{q', 18
                require address(arg1)
                mem[(11 * ceil32(return_data.size)) + 100] = address(arg2)
                mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(12 * ceil32(return_data.size)) + 96] = 2
                mem[(12 * ceil32(return_data.size)) + 128] = stor2
                mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
                mem[(12 * ceil32(return_data.size)) + 228] = 0
                mem[(12 * ceil32(return_data.size)) + 260] = 160
                mem[(12 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (12 * ceil32(return_data.size)) + 128
                t = (12 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(address(arg2))
                call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _345 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _351 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _351
                require _345 + (32 * _351) + 32 <= return_data.size
                idx = 0
                s = (12 * ceil32(return_data.size)) + _345 + 224
                t = (13 * ceil32(return_data.size)) + 224
                while idx < _351:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _591 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _597 = mem[_591]
                require mem[_591] == mem[_591]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _615 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _621 = mem[_615]
                require mem[_615] == mem[_615]
                if address(arg1) != stor0:
                    mem[mem[64] + 4] = stor7
                    mem[mem[64] + 36] = _597
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, _597
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _653 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_653] == bool(mem[_653])
                    mem[mem[64] + 4] = stor7
                    mem[mem[64] + 36] = _621
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, _621
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _701 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_701] == bool(mem[_701])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _597
                    mem[mem[64] + 100] = _621
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor7)
                    call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _597, _621, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _749 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_749] == mem[_749]
                    require mem[_749 + 32] == mem[_749 + 32]
                    require mem[_749 + 64] == mem[_749 + 64]
                    mem[0] = address(arg1)
                    if address(arg2) != stor6:
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor10[address(arg1)])
                        staticcall stor10[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _873 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _897 = mem[_873]
                        require mem[_873] == mem[_873]
                        mem[0] = stor10[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1017 = mem[_993]
                        require mem[_993] == mem[_993]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1089 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1113 = mem[_1089]
                        require mem[_1089] == mem[_1089]
                        require mem[_1089 + 32] == mem[_1089 + 32]
                        require mem[_1089 + 64] == mem[_1089 + 92 len 4]
                        require mem[_1089 + 96] == mem[_1089 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                        mem[mem[64] + 36] = _897
                        require ext_code.size(stor10[address(arg1)])
                        call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor10[address(arg1)]], _897
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[address(arg1)] != stor3:
                            _1313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1313] == bool(mem[_1313])
                            mem[mem[64] + 4] = _897
                            mem[mem[64] + 36] = _1017
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _897, _1017, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1505 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1505] == mem[_1505]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1697 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1697] == mem[_1697]
                            require mem[_1697 + 32] == mem[_1697 + 32]
                            require mem[_1697 + 64] == mem[_1697 + 92 len 4]
                            require mem[_1697 + 96] == mem[_1697 + 124 len 4]
                            if mem[_1697] < _1113:
                                revert with 'NH{q', 17
                            if mem[_1697] - _1113 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2129 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2177 = mem[_2129]
                            require mem[_2129] == mem[_2129]
                            if mem[_2129] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2385 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2513 = mem[_2385]
                                require mem[_2385] == mem[_2385]
                                if mem[_2385] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2513
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2513
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2817 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2817] == bool(mem[_2817])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2177
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2177
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2465 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2465] == bool(mem[_2465])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2818 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2914 = mem[_2818]
                                require mem[_2818] == mem[_2818]
                                if mem[_2818] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2914
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2914
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3089 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3089] == bool(mem[_3089])
                        else:
                            _1314 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1314] == bool(mem[_1314])
                            mem[mem[64] + 4] = _897
                            mem[mem[64] + 36] = _1017
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _897, _1017, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1506 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1506] == mem[_1506]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1698 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1698] == mem[_1698]
                            require mem[_1698 + 32] == mem[_1698 + 32]
                            require mem[_1698 + 64] == mem[_1698 + 92 len 4]
                            require mem[_1698 + 96] == mem[_1698 + 124 len 4]
                            if mem[_1698] < _1113:
                                revert with 'NH{q', 17
                            if mem[_1698] - _1113 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2130 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2178 = mem[_2130]
                            require mem[_2130] == mem[_2130]
                            if mem[_2130] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2387 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2514 = mem[_2387]
                                require mem[_2387] == mem[_2387]
                                if mem[_2387] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2514
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2514
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2819 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2819] == bool(mem[_2819])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2178
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2178
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2466 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2466] == bool(mem[_2466])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2820 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2916 = mem[_2820]
                                require mem[_2820] == mem[_2820]
                                if mem[_2820] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2916
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2916
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3090 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3090] == bool(mem[_3090])
                    else:
                        mem[32] = 9
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9[address(arg1)])
                        staticcall stor9[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _874 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _898 = mem[_874]
                        require mem[_874] == mem[_874]
                        mem[0] = stor9[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _994 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1018 = mem[_994]
                        require mem[_994] == mem[_994]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1090 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1114 = mem[_1090]
                        require mem[_1090] == mem[_1090]
                        require mem[_1090 + 32] == mem[_1090 + 32]
                        require mem[_1090 + 64] == mem[_1090 + 92 len 4]
                        require mem[_1090 + 96] == mem[_1090 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                        mem[mem[64] + 36] = _898
                        require ext_code.size(stor9[address(arg1)])
                        call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor9[address(arg1)]], _898
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor9[address(arg1)] != stor3:
                            _1315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1315] == bool(mem[_1315])
                            mem[mem[64] + 4] = _898
                            mem[mem[64] + 36] = _1018
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _898, _1018, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1507 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1507] == mem[_1507]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1699 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1699] == mem[_1699]
                            require mem[_1699 + 32] == mem[_1699 + 32]
                            require mem[_1699 + 64] == mem[_1699 + 92 len 4]
                            require mem[_1699 + 96] == mem[_1699 + 124 len 4]
                            if mem[_1699] < _1114:
                                revert with 'NH{q', 17
                            if mem[_1699] - _1114 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2131 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2179 = mem[_2131]
                            require mem[_2131] == mem[_2131]
                            if mem[_2131] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2389 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2515 = mem[_2389]
                                require mem[_2389] == mem[_2389]
                                if mem[_2389] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2515
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2515
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2821 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2821] == bool(mem[_2821])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2179
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2179
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2467 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2467] == bool(mem[_2467])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2822 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2918 = mem[_2822]
                                require mem[_2822] == mem[_2822]
                                if mem[_2822] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2918
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2918
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3091 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3091] == bool(mem[_3091])
                        else:
                            _1316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1316] == bool(mem[_1316])
                            mem[mem[64] + 4] = _898
                            mem[mem[64] + 36] = _1018
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _898, _1018, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1508 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1508] == mem[_1508]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1700 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1700] == mem[_1700]
                            require mem[_1700 + 32] == mem[_1700 + 32]
                            require mem[_1700 + 64] == mem[_1700 + 92 len 4]
                            require mem[_1700 + 96] == mem[_1700 + 124 len 4]
                            if mem[_1700] < _1114:
                                revert with 'NH{q', 17
                            if mem[_1700] - _1114 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2132 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2180 = mem[_2132]
                            require mem[_2132] == mem[_2132]
                            if mem[_2132] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2391 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2516 = mem[_2391]
                                require mem[_2391] == mem[_2391]
                                if mem[_2391] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2516
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2516
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2823 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2823] == bool(mem[_2823])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2180
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2180
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2468 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2468] == bool(mem[_2468])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2824 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2920 = mem[_2824]
                                require mem[_2824] == mem[_2824]
                                if mem[_2824] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2920
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2920
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3092 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3092] == bool(mem[_3092])
                else:
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _597
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _597
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _654 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_654] == bool(mem[_654])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _621
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _621
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _702 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_702] == bool(mem[_702])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _597
                    mem[mem[64] + 100] = _621
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _597, _621, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _750 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_750] == mem[_750]
                    require mem[_750 + 32] == mem[_750 + 32]
                    require mem[_750 + 64] == mem[_750 + 64]
                    mem[0] = address(arg1)
                    if address(arg2) != stor6:
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor10[address(arg1)])
                        staticcall stor10[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _875 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _899 = mem[_875]
                        require mem[_875] == mem[_875]
                        mem[0] = stor10[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _995 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1019 = mem[_995]
                        require mem[_995] == mem[_995]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1091 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1115 = mem[_1091]
                        require mem[_1091] == mem[_1091]
                        require mem[_1091 + 32] == mem[_1091 + 32]
                        require mem[_1091 + 64] == mem[_1091 + 92 len 4]
                        require mem[_1091 + 96] == mem[_1091 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                        mem[mem[64] + 36] = _899
                        require ext_code.size(stor10[address(arg1)])
                        call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor10[address(arg1)]], _899
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[address(arg1)] != stor3:
                            _1317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1317] == bool(mem[_1317])
                            mem[mem[64] + 4] = _899
                            mem[mem[64] + 36] = _1019
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _899, _1019, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1509 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1509] == mem[_1509]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1701 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1701] == mem[_1701]
                            require mem[_1701 + 32] == mem[_1701 + 32]
                            require mem[_1701 + 64] == mem[_1701 + 92 len 4]
                            require mem[_1701 + 96] == mem[_1701 + 124 len 4]
                            if mem[_1701] < _1115:
                                revert with 'NH{q', 17
                            if mem[_1701] - _1115 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2133 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2181 = mem[_2133]
                            require mem[_2133] == mem[_2133]
                            if mem[_2133] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2393 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2517 = mem[_2393]
                                require mem[_2393] == mem[_2393]
                                if mem[_2393] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2517
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2517
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2825 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2825] == bool(mem[_2825])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2181
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2181
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2469 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2469] == bool(mem[_2469])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2826 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2922 = mem[_2826]
                                require mem[_2826] == mem[_2826]
                                if mem[_2826] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2922
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2922
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3093 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3093] == bool(mem[_3093])
                        else:
                            _1318 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1318] == bool(mem[_1318])
                            mem[mem[64] + 4] = _899
                            mem[mem[64] + 36] = _1019
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _899, _1019, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1510 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1510] == mem[_1510]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1702 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1702] == mem[_1702]
                            require mem[_1702 + 32] == mem[_1702 + 32]
                            require mem[_1702 + 64] == mem[_1702 + 92 len 4]
                            require mem[_1702 + 96] == mem[_1702 + 124 len 4]
                            if mem[_1702] < _1115:
                                revert with 'NH{q', 17
                            if mem[_1702] - _1115 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2134 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2182 = mem[_2134]
                            require mem[_2134] == mem[_2134]
                            if mem[_2134] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2395 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2518 = mem[_2395]
                                require mem[_2395] == mem[_2395]
                                if mem[_2395] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2518
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2518
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2827 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2827] == bool(mem[_2827])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2182
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2182
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2470 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2470] == bool(mem[_2470])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2828 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2924 = mem[_2828]
                                require mem[_2828] == mem[_2828]
                                if mem[_2828] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2924
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2924
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3094 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3094] == bool(mem[_3094])
                    else:
                        mem[32] = 9
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9[address(arg1)])
                        staticcall stor9[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _876 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _900 = mem[_876]
                        require mem[_876] == mem[_876]
                        mem[0] = stor9[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _996 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1020 = mem[_996]
                        require mem[_996] == mem[_996]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1092 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1116 = mem[_1092]
                        require mem[_1092] == mem[_1092]
                        require mem[_1092 + 32] == mem[_1092 + 32]
                        require mem[_1092 + 64] == mem[_1092 + 92 len 4]
                        require mem[_1092 + 96] == mem[_1092 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                        mem[mem[64] + 36] = _900
                        require ext_code.size(stor9[address(arg1)])
                        call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor9[address(arg1)]], _900
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor9[address(arg1)] != stor3:
                            _1319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1319] == bool(mem[_1319])
                            mem[mem[64] + 4] = _900
                            mem[mem[64] + 36] = _1020
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _900, _1020, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1511 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1511] == mem[_1511]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1703 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1703] == mem[_1703]
                            require mem[_1703 + 32] == mem[_1703 + 32]
                            require mem[_1703 + 64] == mem[_1703 + 92 len 4]
                            require mem[_1703 + 96] == mem[_1703 + 124 len 4]
                            if mem[_1703] < _1116:
                                revert with 'NH{q', 17
                            if mem[_1703] - _1116 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2135 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2183 = mem[_2135]
                            require mem[_2135] == mem[_2135]
                            if mem[_2135] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2397 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2519 = mem[_2397]
                                require mem[_2397] == mem[_2397]
                                if mem[_2397] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2519
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2519
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2829 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2829] == bool(mem[_2829])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2183
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2183
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2471 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2471] == bool(mem[_2471])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2830 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2926 = mem[_2830]
                                require mem[_2830] == mem[_2830]
                                if mem[_2830] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2926
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2926
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3095 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3095] == bool(mem[_3095])
                        else:
                            _1320 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1320] == bool(mem[_1320])
                            mem[mem[64] + 4] = _900
                            mem[mem[64] + 36] = _1020
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _900, _1020, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1512 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1512] == mem[_1512]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1704 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1704] == mem[_1704]
                            require mem[_1704 + 32] == mem[_1704 + 32]
                            require mem[_1704 + 64] == mem[_1704 + 92 len 4]
                            require mem[_1704 + 96] == mem[_1704 + 124 len 4]
                            if mem[_1704] < _1116:
                                revert with 'NH{q', 17
                            if mem[_1704] - _1116 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2136 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2184 = mem[_2136]
                            require mem[_2136] == mem[_2136]
                            if mem[_2136] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2399 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2520 = mem[_2399]
                                require mem[_2399] == mem[_2399]
                                if mem[_2399] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2520
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2520
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2831 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2831] == bool(mem[_2831])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2184
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2184
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2472 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2472] == bool(mem[_2472])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2832 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2928 = mem[_2832]
                                require mem[_2832] == mem[_2832]
                                if mem[_2832] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2928
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2928
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3096 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3096] == bool(mem[_3096])
            else:
                if ext_call.return_data[12 len 20] != address(arg1):
                    revert with 0, 'bad LP token'
                if address(ext_call.return_data[0]) != stor2:
                    revert with 0, 'bad LP token'
                if Mask(112, 0, ext_call.return_data[0]) > -(ext_call.return_data[0] / 2) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) > -(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                    revert with 'NH{q', 17
                if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
                    revert with 'NH{q', 18
                require address(arg1)
                mem[(11 * ceil32(return_data.size)) + 100] = address(arg2)
                mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(12 * ceil32(return_data.size)) + 96] = 2
                mem[(12 * ceil32(return_data.size)) + 128] = stor2
                mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
                mem[(12 * ceil32(return_data.size)) + 228] = 0
                mem[(12 * ceil32(return_data.size)) + 260] = 160
                mem[(12 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (12 * ceil32(return_data.size)) + 128
                t = (12 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(address(arg2))
                call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _344 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _350 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _350
                require _344 + (32 * _350) + 32 <= return_data.size
                idx = 0
                s = (12 * ceil32(return_data.size)) + _344 + 224
                t = (13 * ceil32(return_data.size)) + 224
                while idx < _350:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _590 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _596 = mem[_590]
                require mem[_590] == mem[_590]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _620 = mem[_614]
                require mem[_614] == mem[_614]
                if address(arg1) != stor0:
                    mem[mem[64] + 4] = stor7
                    mem[mem[64] + 36] = _596
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, _596
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _651 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_651] == bool(mem[_651])
                    mem[mem[64] + 4] = stor7
                    mem[mem[64] + 36] = _620
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, _620
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _699 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_699] == bool(mem[_699])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _596
                    mem[mem[64] + 100] = _620
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor7)
                    call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _596, _620, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _747 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_747] == mem[_747]
                    require mem[_747 + 32] == mem[_747 + 32]
                    require mem[_747 + 64] == mem[_747 + 64]
                    mem[0] = address(arg1)
                    if address(arg2) != stor6:
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor10[address(arg1)])
                        staticcall stor10[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _869 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _893 = mem[_869]
                        require mem[_869] == mem[_869]
                        mem[0] = stor10[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1013 = mem[_989]
                        require mem[_989] == mem[_989]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1085 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1109 = mem[_1085]
                        require mem[_1085] == mem[_1085]
                        require mem[_1085 + 32] == mem[_1085 + 32]
                        require mem[_1085 + 64] == mem[_1085 + 92 len 4]
                        require mem[_1085 + 96] == mem[_1085 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                        mem[mem[64] + 36] = _893
                        require ext_code.size(stor10[address(arg1)])
                        call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor10[address(arg1)]], _893
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[address(arg1)] != stor3:
                            _1305 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1305] == bool(mem[_1305])
                            mem[mem[64] + 4] = _893
                            mem[mem[64] + 36] = _1013
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _893, _1013, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1497 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1497] == mem[_1497]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1689] == mem[_1689]
                            require mem[_1689 + 32] == mem[_1689 + 32]
                            require mem[_1689 + 64] == mem[_1689 + 92 len 4]
                            require mem[_1689 + 96] == mem[_1689 + 124 len 4]
                            if mem[_1689] < _1109:
                                revert with 'NH{q', 17
                            if mem[_1689] - _1109 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2121 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2169 = mem[_2121]
                            require mem[_2121] == mem[_2121]
                            if mem[_2121] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2369 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2505 = mem[_2369]
                                require mem[_2369] == mem[_2369]
                                if mem[_2369] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2505
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2505
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2801 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2801] == bool(mem[_2801])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2169
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2169
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2457 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2457] == bool(mem[_2457])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2802 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2898 = mem[_2802]
                                require mem[_2802] == mem[_2802]
                                if mem[_2802] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2898
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2898
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3081 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3081] == bool(mem[_3081])
                        else:
                            _1306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1306] == bool(mem[_1306])
                            mem[mem[64] + 4] = _893
                            mem[mem[64] + 36] = _1013
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _893, _1013, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1498 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1498] == mem[_1498]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1690 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1690] == mem[_1690]
                            require mem[_1690 + 32] == mem[_1690 + 32]
                            require mem[_1690 + 64] == mem[_1690 + 92 len 4]
                            require mem[_1690 + 96] == mem[_1690 + 124 len 4]
                            if mem[_1690] < _1109:
                                revert with 'NH{q', 17
                            if mem[_1690] - _1109 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2122 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2170 = mem[_2122]
                            require mem[_2122] == mem[_2122]
                            if mem[_2122] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2371 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2506 = mem[_2371]
                                require mem[_2371] == mem[_2371]
                                if mem[_2371] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2506
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2506
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2803 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2803] == bool(mem[_2803])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2170
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2170
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2458 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2458] == bool(mem[_2458])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2804 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2900 = mem[_2804]
                                require mem[_2804] == mem[_2804]
                                if mem[_2804] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2900
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2900
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3082 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3082] == bool(mem[_3082])
                    else:
                        mem[32] = 9
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9[address(arg1)])
                        staticcall stor9[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _870 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _894 = mem[_870]
                        require mem[_870] == mem[_870]
                        mem[0] = stor9[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _990 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1014 = mem[_990]
                        require mem[_990] == mem[_990]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1086 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1110 = mem[_1086]
                        require mem[_1086] == mem[_1086]
                        require mem[_1086 + 32] == mem[_1086 + 32]
                        require mem[_1086 + 64] == mem[_1086 + 92 len 4]
                        require mem[_1086 + 96] == mem[_1086 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                        mem[mem[64] + 36] = _894
                        require ext_code.size(stor9[address(arg1)])
                        call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor9[address(arg1)]], _894
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor9[address(arg1)] != stor3:
                            _1307 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1307] == bool(mem[_1307])
                            mem[mem[64] + 4] = _894
                            mem[mem[64] + 36] = _1014
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _894, _1014, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1499 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1499] == mem[_1499]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1691 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1691] == mem[_1691]
                            require mem[_1691 + 32] == mem[_1691 + 32]
                            require mem[_1691 + 64] == mem[_1691 + 92 len 4]
                            require mem[_1691 + 96] == mem[_1691 + 124 len 4]
                            if mem[_1691] < _1110:
                                revert with 'NH{q', 17
                            if mem[_1691] - _1110 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2123 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2171 = mem[_2123]
                            require mem[_2123] == mem[_2123]
                            if mem[_2123] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2373 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2507 = mem[_2373]
                                require mem[_2373] == mem[_2373]
                                if mem[_2373] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2507
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2507
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2805 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2805] == bool(mem[_2805])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2171
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2171
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2459 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2459] == bool(mem[_2459])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2806 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2902 = mem[_2806]
                                require mem[_2806] == mem[_2806]
                                if mem[_2806] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2902
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2902
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3083 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3083] == bool(mem[_3083])
                        else:
                            _1308 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1308] == bool(mem[_1308])
                            mem[mem[64] + 4] = _894
                            mem[mem[64] + 36] = _1014
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _894, _1014, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1500 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1500] == mem[_1500]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1692 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1692] == mem[_1692]
                            require mem[_1692 + 32] == mem[_1692 + 32]
                            require mem[_1692 + 64] == mem[_1692 + 92 len 4]
                            require mem[_1692 + 96] == mem[_1692 + 124 len 4]
                            if mem[_1692] < _1110:
                                revert with 'NH{q', 17
                            if mem[_1692] - _1110 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2124 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2172 = mem[_2124]
                            require mem[_2124] == mem[_2124]
                            if mem[_2124] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2375 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2508 = mem[_2375]
                                require mem[_2375] == mem[_2375]
                                if mem[_2375] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2508
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2508
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2807 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2807] == bool(mem[_2807])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2172
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2172
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2460 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2460] == bool(mem[_2460])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2808 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2904 = mem[_2808]
                                require mem[_2808] == mem[_2808]
                                if mem[_2808] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2904
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2904
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3084 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3084] == bool(mem[_3084])
                else:
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _596
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _596
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _652 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_652] == bool(mem[_652])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _620
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _620
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _700 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_700] == bool(mem[_700])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _596
                    mem[mem[64] + 100] = _620
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _596, _620, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_748] == mem[_748]
                    require mem[_748 + 32] == mem[_748 + 32]
                    require mem[_748 + 64] == mem[_748 + 64]
                    mem[0] = address(arg1)
                    if address(arg2) != stor6:
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor10[address(arg1)])
                        staticcall stor10[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _871 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _895 = mem[_871]
                        require mem[_871] == mem[_871]
                        mem[0] = stor10[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _991 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1015 = mem[_991]
                        require mem[_991] == mem[_991]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1087 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1111 = mem[_1087]
                        require mem[_1087] == mem[_1087]
                        require mem[_1087 + 32] == mem[_1087 + 32]
                        require mem[_1087 + 64] == mem[_1087 + 92 len 4]
                        require mem[_1087 + 96] == mem[_1087 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                        mem[mem[64] + 36] = _895
                        require ext_code.size(stor10[address(arg1)])
                        call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor10[address(arg1)]], _895
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[address(arg1)] != stor3:
                            _1309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1309] == bool(mem[_1309])
                            mem[mem[64] + 4] = _895
                            mem[mem[64] + 36] = _1015
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _895, _1015, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1501 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1501] == mem[_1501]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1693 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1693] == mem[_1693]
                            require mem[_1693 + 32] == mem[_1693 + 32]
                            require mem[_1693 + 64] == mem[_1693 + 92 len 4]
                            require mem[_1693 + 96] == mem[_1693 + 124 len 4]
                            if mem[_1693] < _1111:
                                revert with 'NH{q', 17
                            if mem[_1693] - _1111 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2125 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2173 = mem[_2125]
                            require mem[_2125] == mem[_2125]
                            if mem[_2125] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2377 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2509 = mem[_2377]
                                require mem[_2377] == mem[_2377]
                                if mem[_2377] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2509
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2509
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2809 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2809] == bool(mem[_2809])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2173
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2173
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2461 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2461] == bool(mem[_2461])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2810 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2906 = mem[_2810]
                                require mem[_2810] == mem[_2810]
                                if mem[_2810] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2906
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2906
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3085 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3085] == bool(mem[_3085])
                        else:
                            _1310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1310] == bool(mem[_1310])
                            mem[mem[64] + 4] = _895
                            mem[mem[64] + 36] = _1015
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _895, _1015, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1502 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1502] == mem[_1502]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1694 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1694] == mem[_1694]
                            require mem[_1694 + 32] == mem[_1694 + 32]
                            require mem[_1694 + 64] == mem[_1694 + 92 len 4]
                            require mem[_1694 + 96] == mem[_1694 + 124 len 4]
                            if mem[_1694] < _1111:
                                revert with 'NH{q', 17
                            if mem[_1694] - _1111 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2126 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2174 = mem[_2126]
                            require mem[_2126] == mem[_2126]
                            if mem[_2126] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2379 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2510 = mem[_2379]
                                require mem[_2379] == mem[_2379]
                                if mem[_2379] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2510
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2510
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2811 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2811] == bool(mem[_2811])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2174
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2174
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2462 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2462] == bool(mem[_2462])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2812 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2908 = mem[_2812]
                                require mem[_2812] == mem[_2812]
                                if mem[_2812] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2908
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2908
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3086 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3086] == bool(mem[_3086])
                    else:
                        mem[32] = 9
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9[address(arg1)])
                        staticcall stor9[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _872 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _896 = mem[_872]
                        require mem[_872] == mem[_872]
                        mem[0] = stor9[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _992 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1016 = mem[_992]
                        require mem[_992] == mem[_992]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1088 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1112 = mem[_1088]
                        require mem[_1088] == mem[_1088]
                        require mem[_1088 + 32] == mem[_1088 + 32]
                        require mem[_1088 + 64] == mem[_1088 + 92 len 4]
                        require mem[_1088 + 96] == mem[_1088 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                        mem[mem[64] + 36] = _896
                        require ext_code.size(stor9[address(arg1)])
                        call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor9[address(arg1)]], _896
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor9[address(arg1)] != stor3:
                            _1311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1311] == bool(mem[_1311])
                            mem[mem[64] + 4] = _896
                            mem[mem[64] + 36] = _1016
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _896, _1016, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1503 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1503] == mem[_1503]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1695 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1695] == mem[_1695]
                            require mem[_1695 + 32] == mem[_1695 + 32]
                            require mem[_1695 + 64] == mem[_1695 + 92 len 4]
                            require mem[_1695 + 96] == mem[_1695 + 124 len 4]
                            if mem[_1695] < _1112:
                                revert with 'NH{q', 17
                            if mem[_1695] - _1112 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2127 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2175 = mem[_2127]
                            require mem[_2127] == mem[_2127]
                            if mem[_2127] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2381 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2511 = mem[_2381]
                                require mem[_2381] == mem[_2381]
                                if mem[_2381] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2511
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2511
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2813 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2813] == bool(mem[_2813])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2175
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2175
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2463 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2463] == bool(mem[_2463])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2814 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2910 = mem[_2814]
                                require mem[_2814] == mem[_2814]
                                if mem[_2814] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2910
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2910
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3087 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3087] == bool(mem[_3087])
                        else:
                            _1312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1312] == bool(mem[_1312])
                            mem[mem[64] + 4] = _896
                            mem[mem[64] + 36] = _1016
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _896, _1016, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1504 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1504] == mem[_1504]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1696 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1696] == mem[_1696]
                            require mem[_1696 + 32] == mem[_1696 + 32]
                            require mem[_1696 + 64] == mem[_1696 + 92 len 4]
                            require mem[_1696 + 96] == mem[_1696 + 124 len 4]
                            if mem[_1696] < _1112:
                                revert with 'NH{q', 17
                            if mem[_1696] - _1112 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2128 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2176 = mem[_2128]
                            require mem[_2128] == mem[_2128]
                            if mem[_2128] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2383 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2512 = mem[_2383]
                                require mem[_2383] == mem[_2383]
                                if mem[_2383] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2512
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2512
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2815 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2815] == bool(mem[_2815])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2176
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2176
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2464 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2464] == bool(mem[_2464])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2816 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2912 = mem[_2816]
                                require mem[_2816] == mem[_2816]
                                if mem[_2816] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2912
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2912
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3088 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3088] == bool(mem[_3088])
    else:
        mem[32] = 9
        require stor9[address(arg1)]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].getReserves() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].token0() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].token1() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != address(arg1):
            if ext_call.return_data[12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor2:
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > -(ext_call.return_data[0] / 2) - 1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                revert with 'NH{q', 17
            if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                revert with 'NH{q', 18
            if Mask(112, 0, ext_call.return_data[0]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) - 1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                revert with 'NH{q', 17
            if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                revert with 'NH{q', 18
            if Mask(112, 0, ext_call.return_data[0]) > -(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) - 1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                revert with 'NH{q', 17
            if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if not 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
                revert with 'NH{q', 18
            require address(arg1)
            mem[(11 * ceil32(return_data.size)) + 100] = address(arg2)
            mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = stor2
            mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
            mem[(12 * ceil32(return_data.size)) + 228] = 0
            mem[(12 * ceil32(return_data.size)) + 260] = 160
            mem[(12 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 128
            t = (12 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(12 * ceil32(return_data.size)) + 292] = this.address
            mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _346 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _352 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _352
            require _346 + (32 * _352) + 32 <= return_data.size
            idx = 0
            s = (12 * ceil32(return_data.size)) + _346 + 224
            t = (13 * ceil32(return_data.size)) + 224
            while idx < _352:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _592 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _598 = mem[_592]
            require mem[_592] == mem[_592]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _622 = mem[_616]
            require mem[_616] == mem[_616]
            if address(arg1) != stor0:
                mem[mem[64] + 4] = stor7
                mem[mem[64] + 36] = _598
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, _598
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _655 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_655] == bool(mem[_655])
                mem[mem[64] + 4] = stor7
                mem[mem[64] + 36] = _622
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor7, _622
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _703 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_703] == bool(mem[_703])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _598
                mem[mem[64] + 100] = _622
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor7)
                call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _598, _622, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _751 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_751] == mem[_751]
                require mem[_751 + 32] == mem[_751 + 32]
                require mem[_751 + 64] == mem[_751 + 64]
                mem[0] = address(arg1)
                if address(arg2) != stor6:
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _877 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _901 = mem[_877]
                    require mem[_877] == mem[_877]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _997 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1021 = mem[_997]
                    require mem[_997] == mem[_997]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1093 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1117 = mem[_1093]
                    require mem[_1093] == mem[_1093]
                    require mem[_1093 + 32] == mem[_1093 + 32]
                    require mem[_1093 + 64] == mem[_1093 + 92 len 4]
                    require mem[_1093 + 96] == mem[_1093 + 124 len 4]
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _901
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _901
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor10[address(arg1)] != stor3:
                        _1321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1321] == bool(mem[_1321])
                        mem[mem[64] + 4] = _901
                        mem[mem[64] + 36] = _1021
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _901, _1021, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1513 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1513] == mem[_1513]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1705 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1705] == mem[_1705]
                        require mem[_1705 + 32] == mem[_1705 + 32]
                        require mem[_1705 + 64] == mem[_1705 + 92 len 4]
                        require mem[_1705 + 96] == mem[_1705 + 124 len 4]
                        if mem[_1705] < _1117:
                            revert with 'NH{q', 17
                        if mem[_1705] - _1117 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2137 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2185 = mem[_2137]
                        require mem[_2137] == mem[_2137]
                        if mem[_2137] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2401 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2521 = mem[_2401]
                            require mem[_2401] == mem[_2401]
                            if mem[_2401] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2521
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2521
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2833 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2833] == bool(mem[_2833])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2185
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2185
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2473 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2473] == bool(mem[_2473])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2834 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2930 = mem[_2834]
                            require mem[_2834] == mem[_2834]
                            if mem[_2834] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2930
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2930
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3097 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3097] == bool(mem[_3097])
                    else:
                        _1322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1322] == bool(mem[_1322])
                        mem[mem[64] + 4] = _901
                        mem[mem[64] + 36] = _1021
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                             gas gas_remaining wei
                            args _901, _1021, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1514 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1514] == mem[_1514]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1706 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1706] == mem[_1706]
                        require mem[_1706 + 32] == mem[_1706 + 32]
                        require mem[_1706 + 64] == mem[_1706 + 92 len 4]
                        require mem[_1706 + 96] == mem[_1706 + 124 len 4]
                        if mem[_1706] < _1117:
                            revert with 'NH{q', 17
                        if mem[_1706] - _1117 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2138 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2186 = mem[_2138]
                        require mem[_2138] == mem[_2138]
                        if mem[_2138] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2403 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2522 = mem[_2403]
                            require mem[_2403] == mem[_2403]
                            if mem[_2403] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2522
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2522
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2835 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2835] == bool(mem[_2835])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2186
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2186
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2474 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2474] == bool(mem[_2474])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2836 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2932 = mem[_2836]
                            require mem[_2836] == mem[_2836]
                            if mem[_2836] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2932
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2932
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3098 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3098] == bool(mem[_3098])
                else:
                    mem[32] = 9
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor9[address(arg1)])
                    staticcall stor9[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _878 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _902 = mem[_878]
                    require mem[_878] == mem[_878]
                    mem[0] = stor9[address(arg1)]
                    mem[32] = 11
                    require ext_code.size(stor11[stor9[address(arg1)]])
                    staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _998 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1022 = mem[_998]
                    require mem[_998] == mem[_998]
                    require ext_code.size(stor11[stor9[address(arg1)]])
                    staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1094 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1118 = mem[_1094]
                    require mem[_1094] == mem[_1094]
                    require mem[_1094 + 32] == mem[_1094 + 32]
                    require mem[_1094 + 64] == mem[_1094 + 92 len 4]
                    require mem[_1094 + 96] == mem[_1094 + 124 len 4]
                    mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                    mem[mem[64] + 36] = _902
                    require ext_code.size(stor9[address(arg1)])
                    call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor9[address(arg1)]], _902
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor9[address(arg1)] != stor3:
                        _1323 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1323] == bool(mem[_1323])
                        mem[mem[64] + 4] = _902
                        mem[mem[64] + 36] = _1022
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _902, _1022, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1515 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1515] == mem[_1515]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1707] == mem[_1707]
                        require mem[_1707 + 32] == mem[_1707 + 32]
                        require mem[_1707 + 64] == mem[_1707 + 92 len 4]
                        require mem[_1707 + 96] == mem[_1707 + 124 len 4]
                        if mem[_1707] < _1118:
                            revert with 'NH{q', 17
                        if mem[_1707] - _1118 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2139 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2187 = mem[_2139]
                        require mem[_2139] == mem[_2139]
                        if mem[_2139] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2405 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2523 = mem[_2405]
                            require mem[_2405] == mem[_2405]
                            if mem[_2405] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2523
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2523
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2837 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2837] == bool(mem[_2837])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2187
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2187
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2475 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2475] == bool(mem[_2475])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2838 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2934 = mem[_2838]
                            require mem[_2838] == mem[_2838]
                            if mem[_2838] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2934
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2934
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3099 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3099] == bool(mem[_3099])
                    else:
                        _1324 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1324] == bool(mem[_1324])
                        mem[mem[64] + 4] = _902
                        mem[mem[64] + 36] = _1022
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                             gas gas_remaining wei
                            args _902, _1022, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1516 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1516] == mem[_1516]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1708 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1708] == mem[_1708]
                        require mem[_1708 + 32] == mem[_1708 + 32]
                        require mem[_1708 + 64] == mem[_1708 + 92 len 4]
                        require mem[_1708 + 96] == mem[_1708 + 124 len 4]
                        if mem[_1708] < _1118:
                            revert with 'NH{q', 17
                        if mem[_1708] - _1118 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2140 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2188 = mem[_2140]
                        require mem[_2140] == mem[_2140]
                        if mem[_2140] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2524 = mem[_2407]
                            require mem[_2407] == mem[_2407]
                            if mem[_2407] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2524
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2524
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2839 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2839] == bool(mem[_2839])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2188
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2188
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2476 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2476] == bool(mem[_2476])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2840 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2936 = mem[_2840]
                            require mem[_2840] == mem[_2840]
                            if mem[_2840] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2936
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2936
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3100 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3100] == bool(mem[_3100])
            else:
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _598
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _598
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _656 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_656] == bool(mem[_656])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _622
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _622
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _704 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_704] == bool(mem[_704])
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[mem[64] + 68] = _598
                mem[mem[64] + 100] = _622
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _598, _622, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _752 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_752] == mem[_752]
                require mem[_752 + 32] == mem[_752 + 32]
                require mem[_752 + 64] == mem[_752 + 64]
                mem[0] = address(arg1)
                if address(arg2) != stor6:
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor10[address(arg1)])
                    staticcall stor10[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _879 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _903 = mem[_879]
                    require mem[_879] == mem[_879]
                    mem[0] = stor10[address(arg1)]
                    mem[32] = 11
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _999 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1023 = mem[_999]
                    require mem[_999] == mem[_999]
                    require ext_code.size(stor11[stor10[address(arg1)]])
                    staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1095 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1119 = mem[_1095]
                    require mem[_1095] == mem[_1095]
                    require mem[_1095 + 32] == mem[_1095 + 32]
                    require mem[_1095 + 64] == mem[_1095 + 92 len 4]
                    require mem[_1095 + 96] == mem[_1095 + 124 len 4]
                    mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                    mem[mem[64] + 36] = _903
                    require ext_code.size(stor10[address(arg1)])
                    call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor10[address(arg1)]], _903
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor10[address(arg1)] != stor3:
                        _1325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1325] == bool(mem[_1325])
                        mem[mem[64] + 4] = _903
                        mem[mem[64] + 36] = _1023
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _903, _1023, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1517] == mem[_1517]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1709 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1709] == mem[_1709]
                        require mem[_1709 + 32] == mem[_1709 + 32]
                        require mem[_1709 + 64] == mem[_1709 + 92 len 4]
                        require mem[_1709 + 96] == mem[_1709 + 124 len 4]
                        if mem[_1709] < _1119:
                            revert with 'NH{q', 17
                        if mem[_1709] - _1119 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2141 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2189 = mem[_2141]
                        require mem[_2141] == mem[_2141]
                        if mem[_2141] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2409 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2525 = mem[_2409]
                            require mem[_2409] == mem[_2409]
                            if mem[_2409] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2525
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2525
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2841 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2841] == bool(mem[_2841])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2189
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2189
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2477 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2477] == bool(mem[_2477])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2842 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2938 = mem[_2842]
                            require mem[_2842] == mem[_2842]
                            if mem[_2842] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2938
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2938
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3101 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3101] == bool(mem[_3101])
                    else:
                        _1326 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1326] == bool(mem[_1326])
                        mem[mem[64] + 4] = _903
                        mem[mem[64] + 36] = _1023
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                             gas gas_remaining wei
                            args _903, _1023, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1518 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1518] == mem[_1518]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1710 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1710] == mem[_1710]
                        require mem[_1710 + 32] == mem[_1710 + 32]
                        require mem[_1710 + 64] == mem[_1710 + 92 len 4]
                        require mem[_1710 + 96] == mem[_1710 + 124 len 4]
                        if mem[_1710] < _1119:
                            revert with 'NH{q', 17
                        if mem[_1710] - _1119 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2142 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2190 = mem[_2142]
                        require mem[_2142] == mem[_2142]
                        if mem[_2142] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2526 = mem[_2411]
                            require mem[_2411] == mem[_2411]
                            if mem[_2411] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2526
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2526
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2843 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2843] == bool(mem[_2843])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2190
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2190
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2478 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2478] == bool(mem[_2478])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2844 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2940 = mem[_2844]
                            require mem[_2844] == mem[_2844]
                            if mem[_2844] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2940
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2940
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3102 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3102] == bool(mem[_3102])
                else:
                    mem[32] = 9
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor9[address(arg1)])
                    staticcall stor9[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _904 = mem[_880]
                    require mem[_880] == mem[_880]
                    mem[0] = stor9[address(arg1)]
                    mem[32] = 11
                    require ext_code.size(stor11[stor9[address(arg1)]])
                    staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1000 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1024 = mem[_1000]
                    require mem[_1000] == mem[_1000]
                    require ext_code.size(stor11[stor9[address(arg1)]])
                    staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1096 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1120 = mem[_1096]
                    require mem[_1096] == mem[_1096]
                    require mem[_1096 + 32] == mem[_1096 + 32]
                    require mem[_1096 + 64] == mem[_1096 + 92 len 4]
                    require mem[_1096 + 96] == mem[_1096 + 124 len 4]
                    mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                    mem[mem[64] + 36] = _904
                    require ext_code.size(stor9[address(arg1)])
                    call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11[stor9[address(arg1)]], _904
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor9[address(arg1)] != stor3:
                        _1327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1327] == bool(mem[_1327])
                        mem[mem[64] + 4] = _904
                        mem[mem[64] + 36] = _1024
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args _904, _1024, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1519 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1519] == mem[_1519]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1711 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1711] == mem[_1711]
                        require mem[_1711 + 32] == mem[_1711 + 32]
                        require mem[_1711 + 64] == mem[_1711 + 92 len 4]
                        require mem[_1711 + 96] == mem[_1711 + 124 len 4]
                        if mem[_1711] < _1120:
                            revert with 'NH{q', 17
                        if mem[_1711] - _1120 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2191 = mem[_2143]
                        require mem[_2143] == mem[_2143]
                        if mem[_2143] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2413 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2527 = mem[_2413]
                            require mem[_2413] == mem[_2413]
                            if mem[_2413] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2527
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2527
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2845 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2845] == bool(mem[_2845])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2191
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2191
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2479 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2479] == bool(mem[_2479])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2846 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2942 = mem[_2846]
                            require mem[_2846] == mem[_2846]
                            if mem[_2846] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2942
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2942
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3103 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3103] == bool(mem[_3103])
                    else:
                        _1328 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1328] == bool(mem[_1328])
                        mem[mem[64] + 4] = _904
                        mem[mem[64] + 36] = _1024
                        mem[mem[64] + 68] = msg.sender
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                             gas gas_remaining wei
                            args _904, _1024, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1520] == mem[_1520]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1712 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        require mem[_1712] == mem[_1712]
                        require mem[_1712 + 32] == mem[_1712 + 32]
                        require mem[_1712 + 64] == mem[_1712 + 92 len 4]
                        require mem[_1712 + 96] == mem[_1712 + 124 len 4]
                        if mem[_1712] < _1120:
                            revert with 'NH{q', 17
                        if mem[_1712] - _1120 < arg3:
                            revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2144 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2192 = mem[_2144]
                        require mem[_2144] == mem[_2144]
                        if mem[_2144] <= 0:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2415 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2528 = mem[_2415]
                            require mem[_2415] == mem[_2415]
                            if mem[_2415] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2528
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2528
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2847 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2847] == bool(mem[_2847])
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _2192
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _2192
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2480 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2480] == bool(mem[_2480])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2848 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2944 = mem[_2848]
                            require mem[_2848] == mem[_2848]
                            if mem[_2848] > 0:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2944
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2944
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3104 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3104] == bool(mem[_3104])
        else:
            if ext_call.return_data[12 len 20] == stor2:
                if Mask(112, 0, ext_call.return_data[32]) > -(ext_call.return_data[0] / 2) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) > -(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)):
                    revert with 'NH{q', 17
                if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) > (-1 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))):
                    revert with 'NH{q', 18
                require address(arg1)
                mem[(11 * ceil32(return_data.size)) + 100] = address(arg2)
                mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(12 * ceil32(return_data.size)) + 96] = 2
                mem[(12 * ceil32(return_data.size)) + 128] = stor2
                mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))
                mem[(12 * ceil32(return_data.size)) + 228] = 0
                mem[(12 * ceil32(return_data.size)) + 260] = 160
                mem[(12 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (12 * ceil32(return_data.size)) + 128
                t = (12 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(address(arg2))
                call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _348 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _354 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[32]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _354
                require _348 + (32 * _354) + 32 <= return_data.size
                idx = 0
                s = (12 * ceil32(return_data.size)) + _348 + 224
                t = (13 * ceil32(return_data.size)) + 224
                while idx < _354:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _600 = mem[_594]
                require mem[_594] == mem[_594]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _618 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _624 = mem[_618]
                require mem[_618] == mem[_618]
                if address(arg1) != stor0:
                    mem[mem[64] + 4] = stor7
                    mem[mem[64] + 36] = _600
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, _600
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_659] == bool(mem[_659])
                    mem[mem[64] + 4] = stor7
                    mem[mem[64] + 36] = _624
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, _624
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _707 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_707] == bool(mem[_707])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _600
                    mem[mem[64] + 100] = _624
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor7)
                    call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _600, _624, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _755 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_755] == mem[_755]
                    require mem[_755 + 32] == mem[_755 + 32]
                    require mem[_755 + 64] == mem[_755 + 64]
                    mem[0] = address(arg1)
                    if address(arg2) != stor6:
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor10[address(arg1)])
                        staticcall stor10[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _885 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _909 = mem[_885]
                        require mem[_885] == mem[_885]
                        mem[0] = stor10[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1005 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1029 = mem[_1005]
                        require mem[_1005] == mem[_1005]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1101 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1125 = mem[_1101]
                        require mem[_1101] == mem[_1101]
                        require mem[_1101 + 32] == mem[_1101 + 32]
                        require mem[_1101 + 64] == mem[_1101 + 92 len 4]
                        require mem[_1101 + 96] == mem[_1101 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                        mem[mem[64] + 36] = _909
                        require ext_code.size(stor10[address(arg1)])
                        call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor10[address(arg1)]], _909
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[address(arg1)] != stor3:
                            _1337 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1337] == bool(mem[_1337])
                            mem[mem[64] + 4] = _909
                            mem[mem[64] + 36] = _1029
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _909, _1029, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1529 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1529] == mem[_1529]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1721 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1721] == mem[_1721]
                            require mem[_1721 + 32] == mem[_1721 + 32]
                            require mem[_1721 + 64] == mem[_1721 + 92 len 4]
                            require mem[_1721 + 96] == mem[_1721 + 124 len 4]
                            if mem[_1721] < _1125:
                                revert with 'NH{q', 17
                            if mem[_1721] - _1125 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2153 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2201 = mem[_2153]
                            require mem[_2153] == mem[_2153]
                            if mem[_2153] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2433 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2537 = mem[_2433]
                                require mem[_2433] == mem[_2433]
                                if mem[_2433] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2537
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2537
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2865 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2865] == bool(mem[_2865])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2201
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2201
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2489 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2489] == bool(mem[_2489])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2866 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2962 = mem[_2866]
                                require mem[_2866] == mem[_2866]
                                if mem[_2866] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2962
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2962
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3113 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3113] == bool(mem[_3113])
                        else:
                            _1338 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1338] == bool(mem[_1338])
                            mem[mem[64] + 4] = _909
                            mem[mem[64] + 36] = _1029
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _909, _1029, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1530 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1530] == mem[_1530]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1722] == mem[_1722]
                            require mem[_1722 + 32] == mem[_1722 + 32]
                            require mem[_1722 + 64] == mem[_1722 + 92 len 4]
                            require mem[_1722 + 96] == mem[_1722 + 124 len 4]
                            if mem[_1722] < _1125:
                                revert with 'NH{q', 17
                            if mem[_1722] - _1125 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2154 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2202 = mem[_2154]
                            require mem[_2154] == mem[_2154]
                            if mem[_2154] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2435 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2538 = mem[_2435]
                                require mem[_2435] == mem[_2435]
                                if mem[_2435] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2538
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2538
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2867 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2867] == bool(mem[_2867])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2202
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2202
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2490 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2490] == bool(mem[_2490])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2868 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2964 = mem[_2868]
                                require mem[_2868] == mem[_2868]
                                if mem[_2868] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2964
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2964
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3114 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3114] == bool(mem[_3114])
                    else:
                        mem[32] = 9
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9[address(arg1)])
                        staticcall stor9[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _910 = mem[_886]
                        require mem[_886] == mem[_886]
                        mem[0] = stor9[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1006 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1030 = mem[_1006]
                        require mem[_1006] == mem[_1006]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1102 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1126 = mem[_1102]
                        require mem[_1102] == mem[_1102]
                        require mem[_1102 + 32] == mem[_1102 + 32]
                        require mem[_1102 + 64] == mem[_1102 + 92 len 4]
                        require mem[_1102 + 96] == mem[_1102 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                        mem[mem[64] + 36] = _910
                        require ext_code.size(stor9[address(arg1)])
                        call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor9[address(arg1)]], _910
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor9[address(arg1)] != stor3:
                            _1339 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1339] == bool(mem[_1339])
                            mem[mem[64] + 4] = _910
                            mem[mem[64] + 36] = _1030
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _910, _1030, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1531 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1531] == mem[_1531]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1723 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1723] == mem[_1723]
                            require mem[_1723 + 32] == mem[_1723 + 32]
                            require mem[_1723 + 64] == mem[_1723 + 92 len 4]
                            require mem[_1723 + 96] == mem[_1723 + 124 len 4]
                            if mem[_1723] < _1126:
                                revert with 'NH{q', 17
                            if mem[_1723] - _1126 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2155 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2203 = mem[_2155]
                            require mem[_2155] == mem[_2155]
                            if mem[_2155] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2437 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2539 = mem[_2437]
                                require mem[_2437] == mem[_2437]
                                if mem[_2437] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2539
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2539
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2869 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2869] == bool(mem[_2869])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2203
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2203
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2491 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2491] == bool(mem[_2491])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2870 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2966 = mem[_2870]
                                require mem[_2870] == mem[_2870]
                                if mem[_2870] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2966
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2966
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3115 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3115] == bool(mem[_3115])
                        else:
                            _1340 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1340] == bool(mem[_1340])
                            mem[mem[64] + 4] = _910
                            mem[mem[64] + 36] = _1030
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _910, _1030, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1532 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1532] == mem[_1532]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1724] == mem[_1724]
                            require mem[_1724 + 32] == mem[_1724 + 32]
                            require mem[_1724 + 64] == mem[_1724 + 92 len 4]
                            require mem[_1724 + 96] == mem[_1724 + 124 len 4]
                            if mem[_1724] < _1126:
                                revert with 'NH{q', 17
                            if mem[_1724] - _1126 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2156 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2204 = mem[_2156]
                            require mem[_2156] == mem[_2156]
                            if mem[_2156] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2439 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2540 = mem[_2439]
                                require mem[_2439] == mem[_2439]
                                if mem[_2439] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2540
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2540
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2871 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2871] == bool(mem[_2871])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2204
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2204
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2492 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2492] == bool(mem[_2492])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2872 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2968 = mem[_2872]
                                require mem[_2872] == mem[_2872]
                                if mem[_2872] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2968
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2968
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3116 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3116] == bool(mem[_3116])
                else:
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _600
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _600
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _660 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_660] == bool(mem[_660])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _624
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _624
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _708 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_708] == bool(mem[_708])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _600
                    mem[mem[64] + 100] = _624
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _600, _624, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _756 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_756] == mem[_756]
                    require mem[_756 + 32] == mem[_756 + 32]
                    require mem[_756 + 64] == mem[_756 + 64]
                    mem[0] = address(arg1)
                    if address(arg2) != stor6:
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor10[address(arg1)])
                        staticcall stor10[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _911 = mem[_887]
                        require mem[_887] == mem[_887]
                        mem[0] = stor10[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1007 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1031 = mem[_1007]
                        require mem[_1007] == mem[_1007]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1103 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1127 = mem[_1103]
                        require mem[_1103] == mem[_1103]
                        require mem[_1103 + 32] == mem[_1103 + 32]
                        require mem[_1103 + 64] == mem[_1103 + 92 len 4]
                        require mem[_1103 + 96] == mem[_1103 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                        mem[mem[64] + 36] = _911
                        require ext_code.size(stor10[address(arg1)])
                        call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor10[address(arg1)]], _911
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[address(arg1)] != stor3:
                            _1341 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1341] == bool(mem[_1341])
                            mem[mem[64] + 4] = _911
                            mem[mem[64] + 36] = _1031
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _911, _1031, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1533 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1533] == mem[_1533]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1725 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1725] == mem[_1725]
                            require mem[_1725 + 32] == mem[_1725 + 32]
                            require mem[_1725 + 64] == mem[_1725 + 92 len 4]
                            require mem[_1725 + 96] == mem[_1725 + 124 len 4]
                            if mem[_1725] < _1127:
                                revert with 'NH{q', 17
                            if mem[_1725] - _1127 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2157 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2205 = mem[_2157]
                            require mem[_2157] == mem[_2157]
                            if mem[_2157] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2441 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2541 = mem[_2441]
                                require mem[_2441] == mem[_2441]
                                if mem[_2441] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2541
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2541
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2873 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2873] == bool(mem[_2873])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2205
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2205
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2493 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2493] == bool(mem[_2493])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2874 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2970 = mem[_2874]
                                require mem[_2874] == mem[_2874]
                                if mem[_2874] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2970
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2970
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3117 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3117] == bool(mem[_3117])
                        else:
                            _1342 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1342] == bool(mem[_1342])
                            mem[mem[64] + 4] = _911
                            mem[mem[64] + 36] = _1031
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _911, _1031, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1534 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1534] == mem[_1534]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1726 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1726] == mem[_1726]
                            require mem[_1726 + 32] == mem[_1726 + 32]
                            require mem[_1726 + 64] == mem[_1726 + 92 len 4]
                            require mem[_1726 + 96] == mem[_1726 + 124 len 4]
                            if mem[_1726] < _1127:
                                revert with 'NH{q', 17
                            if mem[_1726] - _1127 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2158 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2206 = mem[_2158]
                            require mem[_2158] == mem[_2158]
                            if mem[_2158] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2443 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2542 = mem[_2443]
                                require mem[_2443] == mem[_2443]
                                if mem[_2443] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2542
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2542
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2875 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2875] == bool(mem[_2875])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2206
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2206
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2494 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2494] == bool(mem[_2494])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2876 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2972 = mem[_2876]
                                require mem[_2876] == mem[_2876]
                                if mem[_2876] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2972
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2972
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3118 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3118] == bool(mem[_3118])
                    else:
                        mem[32] = 9
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9[address(arg1)])
                        staticcall stor9[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _888 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _912 = mem[_888]
                        require mem[_888] == mem[_888]
                        mem[0] = stor9[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1008 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1032 = mem[_1008]
                        require mem[_1008] == mem[_1008]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1104 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1128 = mem[_1104]
                        require mem[_1104] == mem[_1104]
                        require mem[_1104 + 32] == mem[_1104 + 32]
                        require mem[_1104 + 64] == mem[_1104 + 92 len 4]
                        require mem[_1104 + 96] == mem[_1104 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                        mem[mem[64] + 36] = _912
                        require ext_code.size(stor9[address(arg1)])
                        call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor9[address(arg1)]], _912
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor9[address(arg1)] != stor3:
                            _1343 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1343] == bool(mem[_1343])
                            mem[mem[64] + 4] = _912
                            mem[mem[64] + 36] = _1032
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _912, _1032, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1535 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1535] == mem[_1535]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1727 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1727] == mem[_1727]
                            require mem[_1727 + 32] == mem[_1727 + 32]
                            require mem[_1727 + 64] == mem[_1727 + 92 len 4]
                            require mem[_1727 + 96] == mem[_1727 + 124 len 4]
                            if mem[_1727] < _1128:
                                revert with 'NH{q', 17
                            if mem[_1727] - _1128 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2159 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2207 = mem[_2159]
                            require mem[_2159] == mem[_2159]
                            if mem[_2159] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2445 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2543 = mem[_2445]
                                require mem[_2445] == mem[_2445]
                                if mem[_2445] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2543
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2543
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2877 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2877] == bool(mem[_2877])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2207
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2207
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2495 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2495] == bool(mem[_2495])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2878 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2974 = mem[_2878]
                                require mem[_2878] == mem[_2878]
                                if mem[_2878] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2974
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2974
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3119 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3119] == bool(mem[_3119])
                        else:
                            _1344 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1344] == bool(mem[_1344])
                            mem[mem[64] + 4] = _912
                            mem[mem[64] + 36] = _1032
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _912, _1032, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1536 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1536] == mem[_1536]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1728 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1728] == mem[_1728]
                            require mem[_1728 + 32] == mem[_1728 + 32]
                            require mem[_1728 + 64] == mem[_1728 + 92 len 4]
                            require mem[_1728 + 96] == mem[_1728 + 124 len 4]
                            if mem[_1728] < _1128:
                                revert with 'NH{q', 17
                            if mem[_1728] - _1128 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2160 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2208 = mem[_2160]
                            require mem[_2160] == mem[_2160]
                            if mem[_2160] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2447 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2544 = mem[_2447]
                                require mem[_2447] == mem[_2447]
                                if mem[_2447] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2544
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2544
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2879 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2879] == bool(mem[_2879])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2208
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2208
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2496 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2496] == bool(mem[_2496])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2880 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2976 = mem[_2880]
                                require mem[_2880] == mem[_2880]
                                if mem[_2880] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2976
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2976
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3120 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3120] == bool(mem[_3120])
            else:
                if ext_call.return_data[12 len 20] != address(arg1):
                    revert with 0, 'bad LP token'
                if address(ext_call.return_data[0]) != stor2:
                    revert with 0, 'bad LP token'
                if Mask(112, 0, ext_call.return_data[0]) > -(ext_call.return_data[0] / 2) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if Mask(255, 1, ext_call.return_data[0]) and ext_call.return_data[0] / 2 > -1 / ext_call.return_data[0] / 2:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2 > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) > -((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) and (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > -1 / (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2):
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) > -(((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) - 1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) and ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > -1 / ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)):
                    revert with 'NH{q', 17
                if ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) > (-1 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if not 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))):
                    revert with 'NH{q', 18
                require address(arg1)
                mem[(11 * ceil32(return_data.size)) + 100] = address(arg2)
                mem[(11 * ceil32(return_data.size)) + 132] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(12 * ceil32(return_data.size)) + 96] = 2
                mem[(12 * ceil32(return_data.size)) + 128] = stor2
                mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                if block.timestamp > -61:
                    revert with 'NH{q', 17
                mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 196] = (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))
                mem[(12 * ceil32(return_data.size)) + 228] = 0
                mem[(12 * ceil32(return_data.size)) + 260] = 160
                mem[(12 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (12 * ceil32(return_data.size)) + 128
                t = (12 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(address(arg2))
                call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _347 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _353 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) * ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2))) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2) * (ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / 2) + (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0]) / 2 * Mask(112, 0, ext_call.return_data[0]) + (ext_call.return_data[0] / 2)))) >> 32 + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _353
                require _347 + (32 * _353) + 32 <= return_data.size
                idx = 0
                s = (12 * ceil32(return_data.size)) + _347 + 224
                t = (13 * ceil32(return_data.size)) + 224
                while idx < _353:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _593 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _599 = mem[_593]
                require mem[_593] == mem[_593]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _617 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _623 = mem[_617]
                require mem[_617] == mem[_617]
                if address(arg1) != stor0:
                    mem[mem[64] + 4] = stor7
                    mem[mem[64] + 36] = _599
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, _599
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _657 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_657] == bool(mem[_657])
                    mem[mem[64] + 4] = stor7
                    mem[mem[64] + 36] = _623
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor7, _623
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _705 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_705] == bool(mem[_705])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _599
                    mem[mem[64] + 100] = _623
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor7)
                    call stor7.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _599, _623, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_753] == mem[_753]
                    require mem[_753 + 32] == mem[_753 + 32]
                    require mem[_753 + 64] == mem[_753 + 64]
                    mem[0] = address(arg1)
                    if address(arg2) != stor6:
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor10[address(arg1)])
                        staticcall stor10[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _881 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _905 = mem[_881]
                        require mem[_881] == mem[_881]
                        mem[0] = stor10[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1001 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1025 = mem[_1001]
                        require mem[_1001] == mem[_1001]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1097 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1121 = mem[_1097]
                        require mem[_1097] == mem[_1097]
                        require mem[_1097 + 32] == mem[_1097 + 32]
                        require mem[_1097 + 64] == mem[_1097 + 92 len 4]
                        require mem[_1097 + 96] == mem[_1097 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                        mem[mem[64] + 36] = _905
                        require ext_code.size(stor10[address(arg1)])
                        call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor10[address(arg1)]], _905
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[address(arg1)] != stor3:
                            _1329 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1329] == bool(mem[_1329])
                            mem[mem[64] + 4] = _905
                            mem[mem[64] + 36] = _1025
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _905, _1025, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1521] == mem[_1521]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1713 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1713] == mem[_1713]
                            require mem[_1713 + 32] == mem[_1713 + 32]
                            require mem[_1713 + 64] == mem[_1713 + 92 len 4]
                            require mem[_1713 + 96] == mem[_1713 + 124 len 4]
                            if mem[_1713] < _1121:
                                revert with 'NH{q', 17
                            if mem[_1713] - _1121 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2145 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2193 = mem[_2145]
                            require mem[_2145] == mem[_2145]
                            if mem[_2145] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2417 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2529 = mem[_2417]
                                require mem[_2417] == mem[_2417]
                                if mem[_2417] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2529
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2529
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2849 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2849] == bool(mem[_2849])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2193
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2193
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2481 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2481] == bool(mem[_2481])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2850 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2946 = mem[_2850]
                                require mem[_2850] == mem[_2850]
                                if mem[_2850] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2946
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2946
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3105 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3105] == bool(mem[_3105])
                        else:
                            _1330 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1330] == bool(mem[_1330])
                            mem[mem[64] + 4] = _905
                            mem[mem[64] + 36] = _1025
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _905, _1025, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1522] == mem[_1522]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1714 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1714] == mem[_1714]
                            require mem[_1714 + 32] == mem[_1714 + 32]
                            require mem[_1714 + 64] == mem[_1714 + 92 len 4]
                            require mem[_1714 + 96] == mem[_1714 + 124 len 4]
                            if mem[_1714] < _1121:
                                revert with 'NH{q', 17
                            if mem[_1714] - _1121 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2146 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2194 = mem[_2146]
                            require mem[_2146] == mem[_2146]
                            if mem[_2146] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2419 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2530 = mem[_2419]
                                require mem[_2419] == mem[_2419]
                                if mem[_2419] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2530
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2530
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2851 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2851] == bool(mem[_2851])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2194
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2194
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2482 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2482] == bool(mem[_2482])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2852 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2948 = mem[_2852]
                                require mem[_2852] == mem[_2852]
                                if mem[_2852] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2948
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2948
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3106 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3106] == bool(mem[_3106])
                    else:
                        mem[32] = 9
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9[address(arg1)])
                        staticcall stor9[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _882 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _906 = mem[_882]
                        require mem[_882] == mem[_882]
                        mem[0] = stor9[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1002 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1026 = mem[_1002]
                        require mem[_1002] == mem[_1002]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1098 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1122 = mem[_1098]
                        require mem[_1098] == mem[_1098]
                        require mem[_1098 + 32] == mem[_1098 + 32]
                        require mem[_1098 + 64] == mem[_1098 + 92 len 4]
                        require mem[_1098 + 96] == mem[_1098 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                        mem[mem[64] + 36] = _906
                        require ext_code.size(stor9[address(arg1)])
                        call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor9[address(arg1)]], _906
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor9[address(arg1)] != stor3:
                            _1331 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1331] == bool(mem[_1331])
                            mem[mem[64] + 4] = _906
                            mem[mem[64] + 36] = _1026
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _906, _1026, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1523] == mem[_1523]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1715 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1715] == mem[_1715]
                            require mem[_1715 + 32] == mem[_1715 + 32]
                            require mem[_1715 + 64] == mem[_1715 + 92 len 4]
                            require mem[_1715 + 96] == mem[_1715 + 124 len 4]
                            if mem[_1715] < _1122:
                                revert with 'NH{q', 17
                            if mem[_1715] - _1122 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2195 = mem[_2147]
                            require mem[_2147] == mem[_2147]
                            if mem[_2147] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2421 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2531 = mem[_2421]
                                require mem[_2421] == mem[_2421]
                                if mem[_2421] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2531
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2531
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2853 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2853] == bool(mem[_2853])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2195
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2195
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2483 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2483] == bool(mem[_2483])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2854 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2950 = mem[_2854]
                                require mem[_2854] == mem[_2854]
                                if mem[_2854] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2950
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2950
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3107 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3107] == bool(mem[_3107])
                        else:
                            _1332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1332] == bool(mem[_1332])
                            mem[mem[64] + 4] = _906
                            mem[mem[64] + 36] = _1026
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _906, _1026, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1524 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1524] == mem[_1524]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1716 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1716] == mem[_1716]
                            require mem[_1716 + 32] == mem[_1716 + 32]
                            require mem[_1716 + 64] == mem[_1716 + 92 len 4]
                            require mem[_1716 + 96] == mem[_1716 + 124 len 4]
                            if mem[_1716] < _1122:
                                revert with 'NH{q', 17
                            if mem[_1716] - _1122 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2148 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2196 = mem[_2148]
                            require mem[_2148] == mem[_2148]
                            if mem[_2148] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2423 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2532 = mem[_2423]
                                require mem[_2423] == mem[_2423]
                                if mem[_2423] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2532
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2532
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2855 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2855] == bool(mem[_2855])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2196
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2196
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2484 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2484] == bool(mem[_2484])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2856 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2952 = mem[_2856]
                                require mem[_2856] == mem[_2856]
                                if mem[_2856] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2952
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2952
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3108 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3108] == bool(mem[_3108])
                else:
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _599
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _599
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_658] == bool(mem[_658])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _623
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _623
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_706] == bool(mem[_706])
                    if block.timestamp > -61:
                        revert with 'NH{q', 17
                    mem[mem[64] + 68] = _599
                    mem[mem[64] + 100] = _623
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _599, _623, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_754] == mem[_754]
                    require mem[_754 + 32] == mem[_754 + 32]
                    require mem[_754 + 64] == mem[_754 + 64]
                    mem[0] = address(arg1)
                    if address(arg2) != stor6:
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor10[address(arg1)])
                        staticcall stor10[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _883 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _907 = mem[_883]
                        require mem[_883] == mem[_883]
                        mem[0] = stor10[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1003 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1027 = mem[_1003]
                        require mem[_1003] == mem[_1003]
                        require ext_code.size(stor11[stor10[address(arg1)]])
                        staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1099 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1123 = mem[_1099]
                        require mem[_1099] == mem[_1099]
                        require mem[_1099 + 32] == mem[_1099 + 32]
                        require mem[_1099 + 64] == mem[_1099 + 92 len 4]
                        require mem[_1099 + 96] == mem[_1099 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor10[address(arg1)]]
                        mem[mem[64] + 36] = _907
                        require ext_code.size(stor10[address(arg1)])
                        call stor10[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor10[address(arg1)]], _907
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor10[address(arg1)] != stor3:
                            _1333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1333] == bool(mem[_1333])
                            mem[mem[64] + 4] = _907
                            mem[mem[64] + 36] = _1027
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _907, _1027, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1525 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1525] == mem[_1525]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1717 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1717] == mem[_1717]
                            require mem[_1717 + 32] == mem[_1717 + 32]
                            require mem[_1717 + 64] == mem[_1717 + 92 len 4]
                            require mem[_1717 + 96] == mem[_1717 + 124 len 4]
                            if mem[_1717] < _1123:
                                revert with 'NH{q', 17
                            if mem[_1717] - _1123 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2149 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2197 = mem[_2149]
                            require mem[_2149] == mem[_2149]
                            if mem[_2149] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2425 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2533 = mem[_2425]
                                require mem[_2425] == mem[_2425]
                                if mem[_2425] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2533
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2533
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2857 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2857] == bool(mem[_2857])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2197
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2197
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2485 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2485] == bool(mem[_2485])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2858 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2954 = mem[_2858]
                                require mem[_2858] == mem[_2858]
                                if mem[_2858] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2954
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2954
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3109 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3109] == bool(mem[_3109])
                        else:
                            _1334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1334] == bool(mem[_1334])
                            mem[mem[64] + 4] = _907
                            mem[mem[64] + 36] = _1027
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            call stor11[stor10[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _907, _1027, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1526 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1526] == mem[_1526]
                            require ext_code.size(stor11[stor10[address(arg1)]])
                            staticcall stor11[stor10[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1718 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1718] == mem[_1718]
                            require mem[_1718 + 32] == mem[_1718 + 32]
                            require mem[_1718 + 64] == mem[_1718 + 92 len 4]
                            require mem[_1718 + 96] == mem[_1718 + 124 len 4]
                            if mem[_1718] < _1123:
                                revert with 'NH{q', 17
                            if mem[_1718] - _1123 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2150 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2198 = mem[_2150]
                            require mem[_2150] == mem[_2150]
                            if mem[_2150] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2427 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2534 = mem[_2427]
                                require mem[_2427] == mem[_2427]
                                if mem[_2427] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2534
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2534
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2859 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2859] == bool(mem[_2859])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2198
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2198
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2486 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2486] == bool(mem[_2486])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2860 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2956 = mem[_2860]
                                require mem[_2860] == mem[_2860]
                                if mem[_2860] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2956
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2956
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3110 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3110] == bool(mem[_3110])
                    else:
                        mem[32] = 9
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor9[address(arg1)])
                        staticcall stor9[address(arg1)].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _884 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _908 = mem[_884]
                        require mem[_884] == mem[_884]
                        mem[0] = stor9[address(arg1)]
                        mem[32] = 11
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondPrice() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1004 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1028 = mem[_1004]
                        require mem[_1004] == mem[_1004]
                        require ext_code.size(stor11[stor9[address(arg1)]])
                        staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1100 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _1124 = mem[_1100]
                        require mem[_1100] == mem[_1100]
                        require mem[_1100 + 32] == mem[_1100 + 32]
                        require mem[_1100 + 64] == mem[_1100 + 92 len 4]
                        require mem[_1100 + 96] == mem[_1100 + 124 len 4]
                        mem[mem[64] + 4] = stor11[stor9[address(arg1)]]
                        mem[mem[64] + 36] = _908
                        require ext_code.size(stor9[address(arg1)])
                        call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11[stor9[address(arg1)]], _908
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if stor9[address(arg1)] != stor3:
                            _1335 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1335] == bool(mem[_1335])
                            mem[mem[64] + 4] = _908
                            mem[mem[64] + 36] = _1028
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].deposit(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _908, _1028, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1527 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1527] == mem[_1527]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1719 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1719] == mem[_1719]
                            require mem[_1719 + 32] == mem[_1719 + 32]
                            require mem[_1719 + 64] == mem[_1719 + 92 len 4]
                            require mem[_1719 + 96] == mem[_1719 + 124 len 4]
                            if mem[_1719] < _1124:
                                revert with 'NH{q', 17
                            if mem[_1719] - _1124 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2151 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2199 = mem[_2151]
                            require mem[_2151] == mem[_2151]
                            if mem[_2151] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2429 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2535 = mem[_2429]
                                require mem[_2429] == mem[_2429]
                                if mem[_2429] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2535
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2535
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2861 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2861] == bool(mem[_2861])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2199
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2199
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2487 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2487] == bool(mem[_2487])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2862 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2958 = mem[_2862]
                                require mem[_2862] == mem[_2862]
                                if mem[_2862] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2958
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2958
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3111 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3111] == bool(mem[_3111])
                        else:
                            _1336 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1336] == bool(mem[_1336])
                            mem[mem[64] + 4] = _908
                            mem[mem[64] + 36] = _1028
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            call stor11[stor9[address(arg1)]].0xe7d2e81a with:
                                 gas gas_remaining wei
                                args _908, _1028, msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1528 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1528] == mem[_1528]
                            require ext_code.size(stor11[stor9[address(arg1)]])
                            staticcall stor11[stor9[address(arg1)]].bondInfo(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1720 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 128
                            require mem[_1720] == mem[_1720]
                            require mem[_1720 + 32] == mem[_1720 + 32]
                            require mem[_1720 + 64] == mem[_1720 + 92 len 4]
                            require mem[_1720 + 96] == mem[_1720 + 124 len 4]
                            if mem[_1720] < _1124:
                                revert with 'NH{q', 17
                            if mem[_1720] - _1124 < arg3:
                                revert with 0, 'insufficient profit, either ROI plummeted or your minimum is too high'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2152 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2200 = mem[_2152]
                            require mem[_2152] == mem[_2152]
                            if mem[_2152] <= 0:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2431 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2536 = mem[_2431]
                                require mem[_2431] == mem[_2431]
                                if mem[_2431] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2536
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2536
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2863 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2863] == bool(mem[_2863])
                            else:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _2200
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _2200
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2488 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2488] == bool(mem[_2488])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2864 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2960 = mem[_2864]
                                require mem[_2864] == mem[_2864]
                                if mem[_2864] > 0:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _2960
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _2960
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3112 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3112] == bool(mem[_3112])
}



}
