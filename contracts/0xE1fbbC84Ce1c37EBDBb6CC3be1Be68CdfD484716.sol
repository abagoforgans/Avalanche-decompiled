contract main {




// =====================  Runtime code  =====================


#
#  - sub_251b1a6a(?)
#
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
mapping of address stor8;
mapping of address stor9;
mapping of address stor10;

function _fallback() payable {
    revert
}

function sub_9c4a79d5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor4
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require address(arg1)
    if stor3 == address(arg1):
        mem[(2 * ceil32(return_data.size)) + 100] = stor6
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, arg2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = stor2
        mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg2
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 388
        t = (4 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _115 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _117 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require return_data.size >= _115 + (32 * _117) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _117] = mem[(4 * ceil32(return_data.size)) + _115 + 224 len 32 * _117]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _195 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _197 = mem[_195]
        mem[0] = address(arg1)
        mem[32] = 10
        mem[mem[64] + 4] = stor10[address(arg1)]
        mem[mem[64] + 36] = _197
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor10[address(arg1)], _197
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _205 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_205] == bool(mem[_205])
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _213 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _215 = mem[_213]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _221 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _223 = mem[_221]
        require mem[_221 + 64] == mem[_221 + 92 len 4]
        require mem[_221 + 96] == mem[_221 + 124 len 4]
        require ext_code.size(stor10[address(arg1)])
        call stor10[address(arg1)].0x8dbdbe6d with:
             gas gas_remaining wei
            args _197, _215, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_243 + 64] == mem[_243 + 92 len 4]
        require mem[_243 + 96] == mem[_243 + 124 len 4]
        if mem[_243] < _223:
            revert with 0, 17
        mem[mem[64]] = mem[_243] - _223
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = stor5
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, arg2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = stor2
        mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg2
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 388
        t = (4 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _116 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _118 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require return_data.size >= _116 + (32 * _118) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _118] = mem[(4 * ceil32(return_data.size)) + _116 + 224 len 32 * _118]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _198 = mem[_196]
        mem[0] = address(arg1)
        mem[32] = 10
        mem[mem[64] + 4] = stor10[address(arg1)]
        mem[mem[64] + 36] = _198
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor10[address(arg1)], _198
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _206 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_206] == bool(mem[_206])
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _214 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _216 = mem[_214]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _222 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _225 = mem[_222]
        require mem[_222 + 64] == mem[_222 + 92 len 4]
        require mem[_222 + 96] == mem[_222 + 124 len 4]
        require ext_code.size(stor10[address(arg1)])
        call stor10[address(arg1)].0x8dbdbe6d with:
             gas gas_remaining wei
            args _198, _216, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _244 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_244 + 64] == mem[_244 + 92 len 4]
        require mem[_244 + 96] == mem[_244 + 124 len 4]
        if mem[_244] < _225:
            revert with 0, 17
        mem[mem[64]] = mem[_244] - _225
    return memory
      from mem[64]
       len 32
}

function mintWithERC20(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor4
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1
    if stor3 == arg1:
        mem[(2 * ceil32(return_data.size)) + 100] = stor6
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, arg2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = stor2
        mem[(4 * ceil32(return_data.size)) + 160] = arg1
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg2
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 388
        t = (4 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _163 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _165 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require return_data.size >= _163 + (32 * _165) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _165] = mem[(4 * ceil32(return_data.size)) + _163 + 224 len 32 * _165]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _291 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _293 = mem[_291]
        mem[0] = arg1
        mem[32] = 10
        mem[mem[64] + 4] = stor10[address(arg1)]
        mem[mem[64] + 36] = _293
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor10[address(arg1)], _293
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_301] == bool(mem[_301])
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _309 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _311 = mem[_309]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _317 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _319 = mem[_317]
        require mem[_317 + 64] == mem[_317 + 92 len 4]
        require mem[_317 + 96] == mem[_317 + 124 len 4]
        require ext_code.size(stor10[address(arg1)])
        call stor10[address(arg1)].0x8dbdbe6d with:
             gas gas_remaining wei
            args _293, _311, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _339 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_339 + 64] == mem[_339 + 92 len 4]
        require mem[_339 + 96] == mem[_339 + 124 len 4]
        if mem[_339] < _319:
            revert with 0, 17
        if mem[_339] - _319 < arg3:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _357 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _359 = mem[_357]
        if not mem[_357]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _375 = mem[_371]
            if mem[_371]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _375
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _375
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_385] == bool(mem[_385])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _359
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _359
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _367 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_367] == bool(mem[_367])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _387 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _391 = mem[_387]
            if mem[_387]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _391
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _391
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _397 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_397] == bool(mem[_397])
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = stor5
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, arg2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = stor2
        mem[(4 * ceil32(return_data.size)) + 160] = arg1
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg2
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 388
        t = (4 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _164 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _166 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require return_data.size >= _164 + (32 * _166) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _166] = mem[(4 * ceil32(return_data.size)) + _164 + 224 len 32 * _166]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _294 = mem[_292]
        mem[0] = arg1
        mem[32] = 10
        mem[mem[64] + 4] = stor10[address(arg1)]
        mem[mem[64] + 36] = _294
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor10[address(arg1)], _294
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_302] == bool(mem[_302])
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _310 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _312 = mem[_310]
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _318 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _321 = mem[_318]
        require mem[_318 + 64] == mem[_318 + 92 len 4]
        require mem[_318 + 96] == mem[_318 + 124 len 4]
        require ext_code.size(stor10[address(arg1)])
        call stor10[address(arg1)].0x8dbdbe6d with:
             gas gas_remaining wei
            args _294, _312, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(stor10[address(arg1)])
        staticcall stor10[address(arg1)].bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _340 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_340 + 64] == mem[_340 + 92 len 4]
        require mem[_340 + 96] == mem[_340 + 124 len 4]
        if mem[_340] < _321:
            revert with 0, 17
        if mem[_340] - _321 < arg3:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _360 = mem[_358]
        if not mem[_358]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _376 = mem[_373]
            if mem[_373]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _376
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _376
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _386 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_386] == bool(mem[_386])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _360
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _360
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_370] == bool(mem[_370])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _392 = mem[_388]
            if mem[_388]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _392
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _392
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _398 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_398] == bool(mem[_398])
}

function sub_5891fde9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor4
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor3
    if stor3 == stor3:
        mem[(2 * ceil32(return_data.size)) + 100] = stor6
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, arg2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = stor2
        mem[(4 * ceil32(return_data.size)) + 160] = stor3
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg2
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 388
        t = (4 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _225 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _227 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require return_data.size >= _225 + (32 * _227) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _227] = mem[(4 * ceil32(return_data.size)) + _225 + 224 len 32 * _227]
        mem[0] = address(arg1)
        mem[32] = 9
        require stor9[address(arg1)]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _589 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _591 = mem[_589]
        require mem[_589] == mem[_589 + 18 len 14]
        _593 = mem[_589 + 32]
        require mem[_589 + 32] == mem[_589 + 50 len 14]
        require mem[_589 + 64] == mem[_589 + 92 len 4]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _601 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _603 = mem[_601]
        require mem[_601] == mem[_601 + 12 len 20]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _609 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_609] == mem[_609 + 12 len 20]
        if address(_603) != address(arg1):
            if mem[_609 + 12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if stor3 != address(_603):
                revert with 0, 'bad LP token'
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _643 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _649 = mem[_643]
            if Mask(112, 0, _591) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 0, 17
            if 1000 * Mask(112, 0, _591) and mem[_643] > -1 / 1000 * Mask(112, 0, _591):
                revert with 0, 17
            if mem[_643] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * mem[_643] / 2 > !(1997 * Mask(112, 0, _591)):
                revert with 0, 17
            if mem[_643] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * mem[_643] / 2 and mem[_643] / 2 > -1 / 997 * mem[_643] / 2:
                revert with 0, 17
            if 997 * mem[_643] / 2 * mem[_643] / 2 > !(1000 * Mask(112, 0, _591) * mem[_643]):
                revert with 0, 17
            if not (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)):
                revert with 0, 18
            if (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) > !(1997 * Mask(112, 0, _591)):
                revert with 0, 17
            if (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) and (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) > -1 / 997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)):
                revert with 0, 17
            if 997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) > !(1000 * Mask(112, 0, _591) * mem[_643]):
                revert with 0, 17
            if not (1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)):
                revert with 0, 18
            if (997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) > !(1997 * Mask(112, 0, _591)):
                revert with 0, 17
            if (997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) and (997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) > -1 / 997 * (997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)):
                revert with 0, 17
            if 997 * (997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) * (997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) > !(1000 * Mask(112, 0, _591) * mem[_643]):
                revert with 0, 17
            if not (1994 * (997 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * (997 * mem[_643] / 2 * mem[_643] / 2) + (1000 * Mask(112, 0, _591) * mem[_643]) / (1994 * mem[_643] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)):
                revert with 0, 18
            require address(arg1)
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = (997 * (997 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) * (997 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))
            require ext_code.size(stor3)
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, (997 * (997 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) * (997 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _667 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_667] == bool(mem[_667])
            _683 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_683]:
                revert with 0, 50
            mem[_683 + 32] = stor3
            if 1 >= mem[_683]:
                revert with 0, 50
            mem[_683 + 64] = address(arg1)
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[_683 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_683 + 100] = (997 * (997 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) * (997 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _649) / (1994 * (997 * _649 / 2 * _649 / 2) + (1000 * Mask(112, 0, _591) * _649) / (1994 * _649 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))
            mem[_683 + 132] = 0
            mem[_683 + 164] = 160
            mem[_683 + 260] = mem[_683]
            idx = 0
            s = _683 + 292
            t = _683 + 32
            while idx < mem[_683]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_683 + 196] = this.address
            mem[_683 + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _683 + (32 * mem[_683]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _997 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1003 = mem[_997]
            require mem[_997] <= test266151307()
            require _997 + mem[_997] + 31 < _997 + return_data.size
            _1009 = mem[_997 + mem[_997]]
            if mem[_997 + mem[_997]] > test266151307():
                revert with 0, 65
            if _997 + ceil32(return_data.size) + ceil32(32 * mem[_997 + mem[_997]]) + 1 > test266151307() or ceil32(32 * mem[_997 + mem[_997]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _997 + ceil32(return_data.size) + ceil32(32 * mem[_997 + mem[_997]]) + 1
            mem[_997 + ceil32(return_data.size)] = _1009
            require return_data.size >= _1003 + (32 * _1009) + 32
            mem[_997 + ceil32(return_data.size) + 32 len 32 * _1009] = mem[_997 + _1003 + 32 len 32 * _1009]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1381 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1387 = mem[_1381]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1405 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1411 = mem[_1405]
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _1387
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _1387
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1429] == bool(mem[_1429])
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _1411
            require ext_code.size(stor3)
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _1411
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1453 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1453] == bool(mem[_1453])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _1411
            mem[mem[64] + 100] = _1387
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor3, address(arg1), _1411, _1387, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1525 = mem[_1519]
            mem[0] = stor9[address(arg1)]
            mem[32] = 10
            mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
            mem[mem[64] + 36] = _1525
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor10[stor9[address(arg1)]], _1525
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1549 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1549] == bool(mem[_1549])
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1573 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1579 = mem[_1573]
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1597 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1603 = mem[_1597]
            require mem[_1597 + 64] == mem[_1597 + 92 len 4]
            require mem[_1597 + 96] == mem[_1597 + 124 len 4]
            require ext_code.size(stor10[stor9[address(arg1)]])
            call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                 gas gas_remaining wei
                args _1525, _1579, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1663 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_1663 + 64] == mem[_1663 + 92 len 4]
            require mem[_1663 + 96] == mem[_1663 + 124 len 4]
            if mem[_1663] < _1603:
                revert with 0, 17
            mem[mem[64]] = mem[_1663] - _1603
        else:
            if stor3 == mem[_609 + 12 len 20]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _634 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _644 = mem[_634]
                if Mask(112, 0, _593) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 0, 17
                if 1000 * Mask(112, 0, _593) and mem[_634] > -1 / 1000 * Mask(112, 0, _593):
                    revert with 0, 17
                if mem[_634] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * mem[_634] / 2 > !(1997 * Mask(112, 0, _593)):
                    revert with 0, 17
                if mem[_634] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * mem[_634] / 2 and mem[_634] / 2 > -1 / 997 * mem[_634] / 2:
                    revert with 0, 17
                if 997 * mem[_634] / 2 * mem[_634] / 2 > !(1000 * Mask(112, 0, _593) * mem[_634]):
                    revert with 0, 17
                if not (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)):
                    revert with 0, 18
                if (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) > !(1997 * Mask(112, 0, _593)):
                    revert with 0, 17
                if (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) and (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) > -1 / 997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)):
                    revert with 0, 17
                if 997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) > !(1000 * Mask(112, 0, _593) * mem[_634]):
                    revert with 0, 17
                if not (1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)):
                    revert with 0, 18
                if (997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)) > !(1997 * Mask(112, 0, _593)):
                    revert with 0, 17
                if (997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)) and (997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)) > -1 / 997 * (997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)):
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)) * (997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)) > !(1000 * Mask(112, 0, _593) * mem[_634]):
                    revert with 0, 17
                if not (1994 * (997 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593)) * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * (997 * mem[_634] / 2 * mem[_634] / 2) + (1000 * Mask(112, 0, _593) * mem[_634]) / (1994 * mem[_634] / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)):
                    revert with 0, 18
                require address(arg1)
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = (997 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)) * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, (997 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)) * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_659] == bool(mem[_659])
                _674 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if not mem[_674]:
                    revert with 0, 50
                mem[_674 + 32] = stor3
                if 1 >= mem[_674]:
                    revert with 0, 50
                mem[_674 + 64] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[_674 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_674 + 100] = (997 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593)) * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1000 * Mask(112, 0, _593) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _593) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593))) + (1997 * Mask(112, 0, _593))
                mem[_674 + 132] = 0
                mem[_674 + 164] = 160
                mem[_674 + 260] = mem[_674]
                idx = 0
                s = _674 + 292
                t = _674 + 32
                while idx < mem[_674]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_674 + 196] = this.address
                mem[_674 + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _674 + (32 * mem[_674]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _999 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1005 = mem[_999]
                require mem[_999] <= test266151307()
                require _999 + mem[_999] + 31 < _999 + return_data.size
                _1011 = mem[_999 + mem[_999]]
                if mem[_999 + mem[_999]] > test266151307():
                    revert with 0, 65
                if _999 + ceil32(return_data.size) + ceil32(32 * mem[_999 + mem[_999]]) + 1 > test266151307() or ceil32(32 * mem[_999 + mem[_999]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _999 + ceil32(return_data.size) + ceil32(32 * mem[_999 + mem[_999]]) + 1
                mem[_999 + ceil32(return_data.size)] = _1011
                require return_data.size >= _1005 + (32 * _1011) + 32
                mem[_999 + ceil32(return_data.size) + 32 len 32 * _1011] = mem[_999 + _1005 + 32 len 32 * _1011]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1389 = mem[_1383]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1407 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1413 = mem[_1407]
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1389
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1389
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1431] == bool(mem[_1431])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1413
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1413
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1455] == bool(mem[_1455])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1413
                mem[mem[64] + 100] = _1389
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor3, address(arg1), _1413, _1389, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1527 = mem[_1521]
                mem[0] = stor9[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
                mem[mem[64] + 36] = _1527
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor9[address(arg1)]], _1527
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1551] == bool(mem[_1551])
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1575 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1581 = mem[_1575]
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1599 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1607 = mem[_1599]
                require mem[_1599 + 64] == mem[_1599 + 92 len 4]
                require mem[_1599 + 96] == mem[_1599 + 124 len 4]
                require ext_code.size(stor10[stor9[address(arg1)]])
                call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1527, _1581, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1665 + 64] == mem[_1665 + 92 len 4]
                require mem[_1665 + 96] == mem[_1665 + 124 len 4]
                if mem[_1665] < _1607:
                    revert with 0, 17
                mem[mem[64]] = mem[_1665] - _1607
            else:
                if mem[_609 + 12 len 20] != address(arg1):
                    revert with 0, 'bad LP token'
                if stor3 != address(_603):
                    revert with 0, 'bad LP token'
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _651 = mem[_647]
                if Mask(112, 0, _591) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 0, 17
                if 1000 * Mask(112, 0, _591) and mem[_647] > -1 / 1000 * Mask(112, 0, _591):
                    revert with 0, 17
                if mem[_647] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * mem[_647] / 2 > !(1997 * Mask(112, 0, _591)):
                    revert with 0, 17
                if mem[_647] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * mem[_647] / 2 and mem[_647] / 2 > -1 / 997 * mem[_647] / 2:
                    revert with 0, 17
                if 997 * mem[_647] / 2 * mem[_647] / 2 > !(1000 * Mask(112, 0, _591) * mem[_647]):
                    revert with 0, 17
                if not (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)):
                    revert with 0, 18
                if (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) > !(1997 * Mask(112, 0, _591)):
                    revert with 0, 17
                if (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) and (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) > -1 / 997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)):
                    revert with 0, 17
                if 997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) > !(1000 * Mask(112, 0, _591) * mem[_647]):
                    revert with 0, 17
                if not (1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)):
                    revert with 0, 18
                if (997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) > !(1997 * Mask(112, 0, _591)):
                    revert with 0, 17
                if (997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) and (997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) > -1 / 997 * (997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)):
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) * (997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) > !(1000 * Mask(112, 0, _591) * mem[_647]):
                    revert with 0, 17
                if not (1994 * (997 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591)) * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * (997 * mem[_647] / 2 * mem[_647] / 2) + (1000 * Mask(112, 0, _591) * mem[_647]) / (1994 * mem[_647] / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)):
                    revert with 0, 18
                require address(arg1)
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = (997 * (997 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) * (997 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, (997 * (997 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) * (997 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _671 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_671] == bool(mem[_671])
                _688 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if not mem[_688]:
                    revert with 0, 50
                mem[_688 + 32] = stor3
                if 1 >= mem[_688]:
                    revert with 0, 50
                mem[_688 + 64] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[_688 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_688 + 100] = (997 * (997 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591)) * (997 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591)) * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1000 * Mask(112, 0, _591) * _651) / (1994 * (997 * _651 / 2 * _651 / 2) + (1000 * Mask(112, 0, _591) * _651) / (1994 * _651 / 2) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))) + (1997 * Mask(112, 0, _591))
                mem[_688 + 132] = 0
                mem[_688 + 164] = 160
                mem[_688 + 260] = mem[_688]
                idx = 0
                s = _688 + 292
                t = _688 + 32
                while idx < mem[_688]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_688 + 196] = this.address
                mem[_688 + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _688 + (32 * mem[_688]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _998 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1004 = mem[_998]
                require mem[_998] <= test266151307()
                require _998 + mem[_998] + 31 < _998 + return_data.size
                _1010 = mem[_998 + mem[_998]]
                if mem[_998 + mem[_998]] > test266151307():
                    revert with 0, 65
                if _998 + ceil32(return_data.size) + ceil32(32 * mem[_998 + mem[_998]]) + 1 > test266151307() or ceil32(32 * mem[_998 + mem[_998]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _998 + ceil32(return_data.size) + ceil32(32 * mem[_998 + mem[_998]]) + 1
                mem[_998 + ceil32(return_data.size)] = _1010
                require return_data.size >= _1004 + (32 * _1010) + 32
                mem[_998 + ceil32(return_data.size) + 32 len 32 * _1010] = mem[_998 + _1004 + 32 len 32 * _1010]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1382 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1388 = mem[_1382]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1406 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1412 = mem[_1406]
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1388
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1388
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1430] == bool(mem[_1430])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1412
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1412
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1454 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1454] == bool(mem[_1454])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1412
                mem[mem[64] + 100] = _1388
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor3, address(arg1), _1412, _1388, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1526 = mem[_1520]
                mem[0] = stor9[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
                mem[mem[64] + 36] = _1526
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor9[address(arg1)]], _1526
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1550 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1550] == bool(mem[_1550])
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1574 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1580 = mem[_1574]
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1598 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1605 = mem[_1598]
                require mem[_1598 + 64] == mem[_1598 + 92 len 4]
                require mem[_1598 + 96] == mem[_1598 + 124 len 4]
                require ext_code.size(stor10[stor9[address(arg1)]])
                call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1526, _1580, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1664 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1664 + 64] == mem[_1664 + 92 len 4]
                require mem[_1664 + 96] == mem[_1664 + 124 len 4]
                if mem[_1664] < _1605:
                    revert with 0, 17
                mem[mem[64]] = mem[_1664] - _1605
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = stor5
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, arg2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = stor2
        mem[(4 * ceil32(return_data.size)) + 160] = stor3
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg2
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 388
        t = (4 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _226 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _228 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require return_data.size >= _226 + (32 * _228) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _228] = mem[(4 * ceil32(return_data.size)) + _226 + 224 len 32 * _228]
        mem[0] = address(arg1)
        mem[32] = 9
        require stor9[address(arg1)]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _590 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _592 = mem[_590]
        require mem[_590] == mem[_590 + 18 len 14]
        _594 = mem[_590 + 32]
        require mem[_590 + 32] == mem[_590 + 50 len 14]
        require mem[_590 + 64] == mem[_590 + 92 len 4]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _602 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _604 = mem[_602]
        require mem[_602] == mem[_602 + 12 len 20]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _610 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_610] == mem[_610 + 12 len 20]
        if address(_604) != address(arg1):
            if mem[_610 + 12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if stor3 != address(_604):
                revert with 0, 'bad LP token'
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _645 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _650 = mem[_645]
            if Mask(112, 0, _592) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 0, 17
            if 1000 * Mask(112, 0, _592) and mem[_645] > -1 / 1000 * Mask(112, 0, _592):
                revert with 0, 17
            if mem[_645] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * mem[_645] / 2 > !(1997 * Mask(112, 0, _592)):
                revert with 0, 17
            if mem[_645] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * mem[_645] / 2 and mem[_645] / 2 > -1 / 997 * mem[_645] / 2:
                revert with 0, 17
            if 997 * mem[_645] / 2 * mem[_645] / 2 > !(1000 * Mask(112, 0, _592) * mem[_645]):
                revert with 0, 17
            if not (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)):
                revert with 0, 18
            if (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) > !(1997 * Mask(112, 0, _592)):
                revert with 0, 17
            if (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) and (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) > -1 / 997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)):
                revert with 0, 17
            if 997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) > !(1000 * Mask(112, 0, _592) * mem[_645]):
                revert with 0, 17
            if not (1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)):
                revert with 0, 18
            if (997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) > !(1997 * Mask(112, 0, _592)):
                revert with 0, 17
            if (997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) and (997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) > -1 / 997 * (997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)):
                revert with 0, 17
            if 997 * (997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) * (997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) > !(1000 * Mask(112, 0, _592) * mem[_645]):
                revert with 0, 17
            if not (1994 * (997 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * (997 * mem[_645] / 2 * mem[_645] / 2) + (1000 * Mask(112, 0, _592) * mem[_645]) / (1994 * mem[_645] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)):
                revert with 0, 18
            require address(arg1)
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = (997 * (997 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) * (997 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))
            require ext_code.size(stor3)
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, (997 * (997 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) * (997 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _669 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_669] == bool(mem[_669])
            _685 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_685]:
                revert with 0, 50
            mem[_685 + 32] = stor3
            if 1 >= mem[_685]:
                revert with 0, 50
            mem[_685 + 64] = address(arg1)
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[_685 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_685 + 100] = (997 * (997 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) * (997 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _650) / (1994 * (997 * _650 / 2 * _650 / 2) + (1000 * Mask(112, 0, _592) * _650) / (1994 * _650 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))
            mem[_685 + 132] = 0
            mem[_685 + 164] = 160
            mem[_685 + 260] = mem[_685]
            idx = 0
            s = _685 + 292
            t = _685 + 32
            while idx < mem[_685]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_685 + 196] = this.address
            mem[_685 + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _685 + (32 * mem[_685]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1000 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1006 = mem[_1000]
            require mem[_1000] <= test266151307()
            require _1000 + mem[_1000] + 31 < _1000 + return_data.size
            _1012 = mem[_1000 + mem[_1000]]
            if mem[_1000 + mem[_1000]] > test266151307():
                revert with 0, 65
            if _1000 + ceil32(return_data.size) + ceil32(32 * mem[_1000 + mem[_1000]]) + 1 > test266151307() or ceil32(32 * mem[_1000 + mem[_1000]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _1000 + ceil32(return_data.size) + ceil32(32 * mem[_1000 + mem[_1000]]) + 1
            mem[_1000 + ceil32(return_data.size)] = _1012
            require return_data.size >= _1006 + (32 * _1012) + 32
            mem[_1000 + ceil32(return_data.size) + 32 len 32 * _1012] = mem[_1000 + _1006 + 32 len 32 * _1012]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1390 = mem[_1384]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1408 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1414 = mem[_1408]
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _1390
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _1390
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1432 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1432] == bool(mem[_1432])
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _1414
            require ext_code.size(stor3)
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _1414
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1456 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1456] == bool(mem[_1456])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _1414
            mem[mem[64] + 100] = _1390
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor3, address(arg1), _1414, _1390, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1522 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1528 = mem[_1522]
            mem[0] = stor9[address(arg1)]
            mem[32] = 10
            mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
            mem[mem[64] + 36] = _1528
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor10[stor9[address(arg1)]], _1528
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1552 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1552] == bool(mem[_1552])
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1576 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1582 = mem[_1576]
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1600 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1609 = mem[_1600]
            require mem[_1600 + 64] == mem[_1600 + 92 len 4]
            require mem[_1600 + 96] == mem[_1600 + 124 len 4]
            require ext_code.size(stor10[stor9[address(arg1)]])
            call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                 gas gas_remaining wei
                args _1528, _1582, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1666 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_1666 + 64] == mem[_1666 + 92 len 4]
            require mem[_1666 + 96] == mem[_1666 + 124 len 4]
            if mem[_1666] < _1609:
                revert with 0, 17
            mem[mem[64]] = mem[_1666] - _1609
        else:
            if stor3 == mem[_610 + 12 len 20]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _638 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _646 = mem[_638]
                if Mask(112, 0, _594) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 0, 17
                if 1000 * Mask(112, 0, _594) and mem[_638] > -1 / 1000 * Mask(112, 0, _594):
                    revert with 0, 17
                if mem[_638] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * mem[_638] / 2 > !(1997 * Mask(112, 0, _594)):
                    revert with 0, 17
                if mem[_638] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * mem[_638] / 2 and mem[_638] / 2 > -1 / 997 * mem[_638] / 2:
                    revert with 0, 17
                if 997 * mem[_638] / 2 * mem[_638] / 2 > !(1000 * Mask(112, 0, _594) * mem[_638]):
                    revert with 0, 17
                if not (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)):
                    revert with 0, 18
                if (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) > !(1997 * Mask(112, 0, _594)):
                    revert with 0, 17
                if (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) and (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) > -1 / 997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)):
                    revert with 0, 17
                if 997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) > !(1000 * Mask(112, 0, _594) * mem[_638]):
                    revert with 0, 17
                if not (1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)):
                    revert with 0, 18
                if (997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)) > !(1997 * Mask(112, 0, _594)):
                    revert with 0, 17
                if (997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)) and (997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)) > -1 / 997 * (997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)):
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)) * (997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)) > !(1000 * Mask(112, 0, _594) * mem[_638]):
                    revert with 0, 17
                if not (1994 * (997 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594)) * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * (997 * mem[_638] / 2 * mem[_638] / 2) + (1000 * Mask(112, 0, _594) * mem[_638]) / (1994 * mem[_638] / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)):
                    revert with 0, 18
                require address(arg1)
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = (997 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)) * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, (997 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)) * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_662] == bool(mem[_662])
                _677 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if not mem[_677]:
                    revert with 0, 50
                mem[_677 + 32] = stor3
                if 1 >= mem[_677]:
                    revert with 0, 50
                mem[_677 + 64] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[_677 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_677 + 100] = (997 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594)) * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1000 * Mask(112, 0, _594) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _594) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594))) + (1997 * Mask(112, 0, _594))
                mem[_677 + 132] = 0
                mem[_677 + 164] = 160
                mem[_677 + 260] = mem[_677]
                idx = 0
                s = _677 + 292
                t = _677 + 32
                while idx < mem[_677]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_677 + 196] = this.address
                mem[_677 + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _677 + (32 * mem[_677]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1002 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1008 = mem[_1002]
                require mem[_1002] <= test266151307()
                require _1002 + mem[_1002] + 31 < _1002 + return_data.size
                _1014 = mem[_1002 + mem[_1002]]
                if mem[_1002 + mem[_1002]] > test266151307():
                    revert with 0, 65
                if _1002 + ceil32(return_data.size) + ceil32(32 * mem[_1002 + mem[_1002]]) + 1 > test266151307() or ceil32(32 * mem[_1002 + mem[_1002]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1002 + ceil32(return_data.size) + ceil32(32 * mem[_1002 + mem[_1002]]) + 1
                mem[_1002 + ceil32(return_data.size)] = _1014
                require return_data.size >= _1008 + (32 * _1014) + 32
                mem[_1002 + ceil32(return_data.size) + 32 len 32 * _1014] = mem[_1002 + _1008 + 32 len 32 * _1014]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1386 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1392 = mem[_1386]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1410 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1416 = mem[_1410]
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1392
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1392
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1434] == bool(mem[_1434])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1416
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1416
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1458 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1458] == bool(mem[_1458])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1416
                mem[mem[64] + 100] = _1392
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor3, address(arg1), _1416, _1392, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1530 = mem[_1524]
                mem[0] = stor9[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
                mem[mem[64] + 36] = _1530
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor9[address(arg1)]], _1530
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1554 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1554] == bool(mem[_1554])
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1578 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1584 = mem[_1578]
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1602 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1613 = mem[_1602]
                require mem[_1602 + 64] == mem[_1602 + 92 len 4]
                require mem[_1602 + 96] == mem[_1602 + 124 len 4]
                require ext_code.size(stor10[stor9[address(arg1)]])
                call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1530, _1584, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1668 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1668 + 64] == mem[_1668 + 92 len 4]
                require mem[_1668 + 96] == mem[_1668 + 124 len 4]
                if mem[_1668] < _1613:
                    revert with 0, 17
                mem[mem[64]] = mem[_1668] - _1613
            else:
                if mem[_610 + 12 len 20] != address(arg1):
                    revert with 0, 'bad LP token'
                if stor3 != address(_604):
                    revert with 0, 'bad LP token'
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _648 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _652 = mem[_648]
                if Mask(112, 0, _592) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 0, 17
                if 1000 * Mask(112, 0, _592) and mem[_648] > -1 / 1000 * Mask(112, 0, _592):
                    revert with 0, 17
                if mem[_648] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * mem[_648] / 2 > !(1997 * Mask(112, 0, _592)):
                    revert with 0, 17
                if mem[_648] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * mem[_648] / 2 and mem[_648] / 2 > -1 / 997 * mem[_648] / 2:
                    revert with 0, 17
                if 997 * mem[_648] / 2 * mem[_648] / 2 > !(1000 * Mask(112, 0, _592) * mem[_648]):
                    revert with 0, 17
                if not (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)):
                    revert with 0, 18
                if (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) > !(1997 * Mask(112, 0, _592)):
                    revert with 0, 17
                if (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) and (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) > -1 / 997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)):
                    revert with 0, 17
                if 997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) > !(1000 * Mask(112, 0, _592) * mem[_648]):
                    revert with 0, 17
                if not (1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)):
                    revert with 0, 18
                if (997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) > !(1997 * Mask(112, 0, _592)):
                    revert with 0, 17
                if (997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) and (997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) > -1 / 997 * (997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)):
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) * (997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) > !(1000 * Mask(112, 0, _592) * mem[_648]):
                    revert with 0, 17
                if not (1994 * (997 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592)) * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * (997 * mem[_648] / 2 * mem[_648] / 2) + (1000 * Mask(112, 0, _592) * mem[_648]) / (1994 * mem[_648] / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)):
                    revert with 0, 18
                require address(arg1)
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = (997 * (997 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) * (997 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, (997 * (997 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) * (997 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _672 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_672] == bool(mem[_672])
                _691 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if not mem[_691]:
                    revert with 0, 50
                mem[_691 + 32] = stor3
                if 1 >= mem[_691]:
                    revert with 0, 50
                mem[_691 + 64] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[_691 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_691 + 100] = (997 * (997 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592)) * (997 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592)) * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1000 * Mask(112, 0, _592) * _652) / (1994 * (997 * _652 / 2 * _652 / 2) + (1000 * Mask(112, 0, _592) * _652) / (1994 * _652 / 2) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))) + (1997 * Mask(112, 0, _592))
                mem[_691 + 132] = 0
                mem[_691 + 164] = 160
                mem[_691 + 260] = mem[_691]
                idx = 0
                s = _691 + 292
                t = _691 + 32
                while idx < mem[_691]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_691 + 196] = this.address
                mem[_691 + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _691 + (32 * mem[_691]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1001 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1007 = mem[_1001]
                require mem[_1001] <= test266151307()
                require _1001 + mem[_1001] + 31 < _1001 + return_data.size
                _1013 = mem[_1001 + mem[_1001]]
                if mem[_1001 + mem[_1001]] > test266151307():
                    revert with 0, 65
                if _1001 + ceil32(return_data.size) + ceil32(32 * mem[_1001 + mem[_1001]]) + 1 > test266151307() or ceil32(32 * mem[_1001 + mem[_1001]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1001 + ceil32(return_data.size) + ceil32(32 * mem[_1001 + mem[_1001]]) + 1
                mem[_1001 + ceil32(return_data.size)] = _1013
                require return_data.size >= _1007 + (32 * _1013) + 32
                mem[_1001 + ceil32(return_data.size) + 32 len 32 * _1013] = mem[_1001 + _1007 + 32 len 32 * _1013]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1391 = mem[_1385]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1415 = mem[_1409]
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1391
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1391
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1433 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1433] == bool(mem[_1433])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1415
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1415
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1457 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1457] == bool(mem[_1457])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1415
                mem[mem[64] + 100] = _1391
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor3, address(arg1), _1415, _1391, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1523 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1529 = mem[_1523]
                mem[0] = stor9[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
                mem[mem[64] + 36] = _1529
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor9[address(arg1)]], _1529
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1553 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1553] == bool(mem[_1553])
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1583 = mem[_1577]
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1601 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1611 = mem[_1601]
                require mem[_1601 + 64] == mem[_1601 + 92 len 4]
                require mem[_1601 + 96] == mem[_1601 + 124 len 4]
                require ext_code.size(stor10[stor9[address(arg1)]])
                call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1529, _1583, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1667 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1667 + 64] == mem[_1667 + 92 len 4]
                require mem[_1667 + 96] == mem[_1667 + 124 len 4]
                if mem[_1667] < _1611:
                    revert with 0, 17
                mem[mem[64]] = mem[_1667] - _1611
    return memory
      from mem[64]
       len 32
}

function sub_029c4aea(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor4
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor3
    if stor3 == stor3:
        mem[(2 * ceil32(return_data.size)) + 100] = stor6
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, arg2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = stor2
        mem[(4 * ceil32(return_data.size)) + 160] = stor3
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg2
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 388
        t = (4 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor6)
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _219 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _221 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require return_data.size >= _219 + (32 * _221) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _221] = mem[(4 * ceil32(return_data.size)) + _219 + 224 len 32 * _221]
        mem[0] = address(arg1)
        mem[32] = 9
        require stor9[address(arg1)]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _583 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _585 = mem[_583]
        require mem[_583] == mem[_583 + 18 len 14]
        _587 = mem[_583 + 32]
        require mem[_583 + 32] == mem[_583 + 50 len 14]
        require mem[_583 + 64] == mem[_583 + 92 len 4]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _595 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _597 = mem[_595]
        require mem[_595] == mem[_595 + 12 len 20]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _603 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_603] == mem[_603 + 12 len 20]
        if address(_597) != address(arg1):
            if mem[_603 + 12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if stor3 != address(_597):
                revert with 0, 'bad LP token'
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _637 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _643 = mem[_637]
            if Mask(112, 0, _585) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 0, 17
            if 1000 * Mask(112, 0, _585) and mem[_637] > -1 / 1000 * Mask(112, 0, _585):
                revert with 0, 17
            if mem[_637] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * mem[_637] / 2 > !(1997 * Mask(112, 0, _585)):
                revert with 0, 17
            if mem[_637] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * mem[_637] / 2 and mem[_637] / 2 > -1 / 997 * mem[_637] / 2:
                revert with 0, 17
            if 997 * mem[_637] / 2 * mem[_637] / 2 > !(1000 * Mask(112, 0, _585) * mem[_637]):
                revert with 0, 17
            if not (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)):
                revert with 0, 18
            if (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) > !(1997 * Mask(112, 0, _585)):
                revert with 0, 17
            if (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) and (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) > -1 / 997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)):
                revert with 0, 17
            if 997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) > !(1000 * Mask(112, 0, _585) * mem[_637]):
                revert with 0, 17
            if not (1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)):
                revert with 0, 18
            if (997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) > !(1997 * Mask(112, 0, _585)):
                revert with 0, 17
            if (997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) and (997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) > -1 / 997 * (997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)):
                revert with 0, 17
            if 997 * (997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) * (997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) > !(1000 * Mask(112, 0, _585) * mem[_637]):
                revert with 0, 17
            if not (1994 * (997 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * (997 * mem[_637] / 2 * mem[_637] / 2) + (1000 * Mask(112, 0, _585) * mem[_637]) / (1994 * mem[_637] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)):
                revert with 0, 18
            require address(arg1)
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = (997 * (997 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) * (997 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))
            require ext_code.size(stor3)
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, (997 * (997 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) * (997 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _661 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_661] == bool(mem[_661])
            _677 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_677]:
                revert with 0, 50
            mem[_677 + 32] = stor3
            if 1 >= mem[_677]:
                revert with 0, 50
            mem[_677 + 64] = address(arg1)
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[_677 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_677 + 100] = (997 * (997 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) * (997 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _643) / (1994 * (997 * _643 / 2 * _643 / 2) + (1000 * Mask(112, 0, _585) * _643) / (1994 * _643 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))
            mem[_677 + 132] = 0
            mem[_677 + 164] = 160
            mem[_677 + 260] = mem[_677]
            idx = 0
            s = _677 + 292
            t = _677 + 32
            while idx < mem[_677]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_677 + 196] = this.address
            mem[_677 + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _677 + (32 * mem[_677]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _991 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _997 = mem[_991]
            require mem[_991] <= test266151307()
            require _991 + mem[_991] + 31 < _991 + return_data.size
            _1003 = mem[_991 + mem[_991]]
            if mem[_991 + mem[_991]] > test266151307():
                revert with 0, 65
            if _991 + ceil32(return_data.size) + ceil32(32 * mem[_991 + mem[_991]]) + 1 > test266151307() or ceil32(32 * mem[_991 + mem[_991]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _991 + ceil32(return_data.size) + ceil32(32 * mem[_991 + mem[_991]]) + 1
            mem[_991 + ceil32(return_data.size)] = _1003
            require return_data.size >= _997 + (32 * _1003) + 32
            mem[_991 + ceil32(return_data.size) + 32 len 32 * _1003] = mem[_991 + _997 + 32 len 32 * _1003]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1525 = mem[_1519]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1543 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1549 = mem[_1543]
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _1525
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _1525
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1567 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1567] == bool(mem[_1567])
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _1549
            require ext_code.size(stor3)
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _1549
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1591 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1591] == bool(mem[_1591])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _1549
            mem[mem[64] + 100] = _1525
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor3, address(arg1), _1549, _1525, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1657 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1663 = mem[_1657]
            mem[0] = stor9[address(arg1)]
            mem[32] = 10
            mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
            mem[mem[64] + 36] = _1663
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor10[stor9[address(arg1)]], _1663
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1687 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1687] == bool(mem[_1687])
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1711 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1717 = mem[_1711]
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1735 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1741 = mem[_1735]
            require mem[_1735 + 64] == mem[_1735 + 92 len 4]
            require mem[_1735 + 96] == mem[_1735 + 124 len 4]
            require ext_code.size(stor10[stor9[address(arg1)]])
            call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                 gas gas_remaining wei
                args _1663, _1717, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1801 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_1801 + 64] == mem[_1801 + 92 len 4]
            require mem[_1801 + 96] == mem[_1801 + 124 len 4]
            if mem[_1801] < _1741:
                revert with 0, 17
            if mem[_1801] - _1741 < arg3:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1855 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1861 = mem[_1855]
            if not mem[_1855]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1897 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1909 = mem[_1897]
                if mem[_1897]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1909
                    require ext_code.size(stor3)
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1909
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1939 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1939] == bool(mem[_1939])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1861
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1861
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1881 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1881] == bool(mem[_1881])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1945 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1957 = mem[_1945]
                if mem[_1945]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1957
                    require ext_code.size(stor3)
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1957
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1975 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1975] == bool(mem[_1975])
        else:
            if stor3 == mem[_603 + 12 len 20]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _628 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _638 = mem[_628]
                if Mask(112, 0, _587) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 0, 17
                if 1000 * Mask(112, 0, _587) and mem[_628] > -1 / 1000 * Mask(112, 0, _587):
                    revert with 0, 17
                if mem[_628] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * mem[_628] / 2 > !(1997 * Mask(112, 0, _587)):
                    revert with 0, 17
                if mem[_628] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * mem[_628] / 2 and mem[_628] / 2 > -1 / 997 * mem[_628] / 2:
                    revert with 0, 17
                if 997 * mem[_628] / 2 * mem[_628] / 2 > !(1000 * Mask(112, 0, _587) * mem[_628]):
                    revert with 0, 17
                if not (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)):
                    revert with 0, 18
                if (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) > !(1997 * Mask(112, 0, _587)):
                    revert with 0, 17
                if (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) and (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) > -1 / 997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)):
                    revert with 0, 17
                if 997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) > !(1000 * Mask(112, 0, _587) * mem[_628]):
                    revert with 0, 17
                if not (1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)):
                    revert with 0, 18
                if (997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)) > !(1997 * Mask(112, 0, _587)):
                    revert with 0, 17
                if (997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)) and (997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)) > -1 / 997 * (997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)):
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)) * (997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)) > !(1000 * Mask(112, 0, _587) * mem[_628]):
                    revert with 0, 17
                if not (1994 * (997 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587)) * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * (997 * mem[_628] / 2 * mem[_628] / 2) + (1000 * Mask(112, 0, _587) * mem[_628]) / (1994 * mem[_628] / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)):
                    revert with 0, 18
                require address(arg1)
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = (997 * (997 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587)) * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)) * (997 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587)) * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587)) * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, (997 * (997 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587)) * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)) * (997 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587)) * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587)) * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _653 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_653] == bool(mem[_653])
                _668 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if not mem[_668]:
                    revert with 0, 50
                mem[_668 + 32] = stor3
                if 1 >= mem[_668]:
                    revert with 0, 50
                mem[_668 + 64] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[_668 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_668 + 100] = (997 * (997 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587)) * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587)) * (997 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587)) * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587)) * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1000 * Mask(112, 0, _587) * _638) / (1994 * (997 * _638 / 2 * _638 / 2) + (1000 * Mask(112, 0, _587) * _638) / (1994 * _638 / 2) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587))) + (1997 * Mask(112, 0, _587))
                mem[_668 + 132] = 0
                mem[_668 + 164] = 160
                mem[_668 + 260] = mem[_668]
                idx = 0
                s = _668 + 292
                t = _668 + 32
                while idx < mem[_668]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_668 + 196] = this.address
                mem[_668 + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _668 + (32 * mem[_668]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _993 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _999 = mem[_993]
                require mem[_993] <= test266151307()
                require _993 + mem[_993] + 31 < _993 + return_data.size
                _1005 = mem[_993 + mem[_993]]
                if mem[_993 + mem[_993]] > test266151307():
                    revert with 0, 65
                if _993 + ceil32(return_data.size) + ceil32(32 * mem[_993 + mem[_993]]) + 1 > test266151307() or ceil32(32 * mem[_993 + mem[_993]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _993 + ceil32(return_data.size) + ceil32(32 * mem[_993 + mem[_993]]) + 1
                mem[_993 + ceil32(return_data.size)] = _1005
                require return_data.size >= _999 + (32 * _1005) + 32
                mem[_993 + ceil32(return_data.size) + 32 len 32 * _1005] = mem[_993 + _999 + 32 len 32 * _1005]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1527 = mem[_1521]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1551 = mem[_1545]
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1527
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1527
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1569 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1569] == bool(mem[_1569])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1551
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1551
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1593 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1593] == bool(mem[_1593])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1551
                mem[mem[64] + 100] = _1527
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor3, address(arg1), _1551, _1527, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1665 = mem[_1659]
                mem[0] = stor9[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
                mem[mem[64] + 36] = _1665
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor9[address(arg1)]], _1665
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1689] == bool(mem[_1689])
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1713 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1719 = mem[_1713]
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1737 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1745 = mem[_1737]
                require mem[_1737 + 64] == mem[_1737 + 92 len 4]
                require mem[_1737 + 96] == mem[_1737 + 124 len 4]
                require ext_code.size(stor10[stor9[address(arg1)]])
                call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1665, _1719, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1803 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1803 + 64] == mem[_1803 + 92 len 4]
                require mem[_1803 + 96] == mem[_1803 + 124 len 4]
                if mem[_1803] < _1745:
                    revert with 0, 17
                if mem[_1803] - _1745 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1857 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1863 = mem[_1857]
                if not mem[_1857]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1901 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1911 = mem[_1901]
                    if mem[_1901]:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1911
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1911
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1941 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1941] == bool(mem[_1941])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1863
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1863
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1887 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1887] == bool(mem[_1887])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1947 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1959 = mem[_1947]
                    if mem[_1947]:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1959
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1959
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1977 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1977] == bool(mem[_1977])
            else:
                if mem[_603 + 12 len 20] != address(arg1):
                    revert with 0, 'bad LP token'
                if stor3 != address(_597):
                    revert with 0, 'bad LP token'
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _641 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _645 = mem[_641]
                if Mask(112, 0, _585) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 0, 17
                if 1000 * Mask(112, 0, _585) and mem[_641] > -1 / 1000 * Mask(112, 0, _585):
                    revert with 0, 17
                if mem[_641] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * mem[_641] / 2 > !(1997 * Mask(112, 0, _585)):
                    revert with 0, 17
                if mem[_641] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * mem[_641] / 2 and mem[_641] / 2 > -1 / 997 * mem[_641] / 2:
                    revert with 0, 17
                if 997 * mem[_641] / 2 * mem[_641] / 2 > !(1000 * Mask(112, 0, _585) * mem[_641]):
                    revert with 0, 17
                if not (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)):
                    revert with 0, 18
                if (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) > !(1997 * Mask(112, 0, _585)):
                    revert with 0, 17
                if (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) and (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) > -1 / 997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)):
                    revert with 0, 17
                if 997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) > !(1000 * Mask(112, 0, _585) * mem[_641]):
                    revert with 0, 17
                if not (1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)):
                    revert with 0, 18
                if (997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) > !(1997 * Mask(112, 0, _585)):
                    revert with 0, 17
                if (997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) and (997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) > -1 / 997 * (997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)):
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) * (997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) > !(1000 * Mask(112, 0, _585) * mem[_641]):
                    revert with 0, 17
                if not (1994 * (997 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585)) * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * (997 * mem[_641] / 2 * mem[_641] / 2) + (1000 * Mask(112, 0, _585) * mem[_641]) / (1994 * mem[_641] / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)):
                    revert with 0, 18
                require address(arg1)
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = (997 * (997 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) * (997 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, (997 * (997 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) * (997 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_665] == bool(mem[_665])
                _682 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if not mem[_682]:
                    revert with 0, 50
                mem[_682 + 32] = stor3
                if 1 >= mem[_682]:
                    revert with 0, 50
                mem[_682 + 64] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[_682 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_682 + 100] = (997 * (997 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585)) * (997 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585)) * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1000 * Mask(112, 0, _585) * _645) / (1994 * (997 * _645 / 2 * _645 / 2) + (1000 * Mask(112, 0, _585) * _645) / (1994 * _645 / 2) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))) + (1997 * Mask(112, 0, _585))
                mem[_682 + 132] = 0
                mem[_682 + 164] = 160
                mem[_682 + 260] = mem[_682]
                idx = 0
                s = _682 + 292
                t = _682 + 32
                while idx < mem[_682]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_682 + 196] = this.address
                mem[_682 + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _682 + (32 * mem[_682]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _992 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _998 = mem[_992]
                require mem[_992] <= test266151307()
                require _992 + mem[_992] + 31 < _992 + return_data.size
                _1004 = mem[_992 + mem[_992]]
                if mem[_992 + mem[_992]] > test266151307():
                    revert with 0, 65
                if _992 + ceil32(return_data.size) + ceil32(32 * mem[_992 + mem[_992]]) + 1 > test266151307() or ceil32(32 * mem[_992 + mem[_992]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _992 + ceil32(return_data.size) + ceil32(32 * mem[_992 + mem[_992]]) + 1
                mem[_992 + ceil32(return_data.size)] = _1004
                require return_data.size >= _998 + (32 * _1004) + 32
                mem[_992 + ceil32(return_data.size) + 32 len 32 * _1004] = mem[_992 + _998 + 32 len 32 * _1004]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1526 = mem[_1520]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1550 = mem[_1544]
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1526
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1526
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1568 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1568] == bool(mem[_1568])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1550
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1550
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1592 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1592] == bool(mem[_1592])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1550
                mem[mem[64] + 100] = _1526
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor3, address(arg1), _1550, _1526, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1658 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1664 = mem[_1658]
                mem[0] = stor9[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
                mem[mem[64] + 36] = _1664
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor9[address(arg1)]], _1664
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1688 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1688] == bool(mem[_1688])
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1712 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1718 = mem[_1712]
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1736 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1743 = mem[_1736]
                require mem[_1736 + 64] == mem[_1736 + 92 len 4]
                require mem[_1736 + 96] == mem[_1736 + 124 len 4]
                require ext_code.size(stor10[stor9[address(arg1)]])
                call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1664, _1718, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1802 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1802 + 64] == mem[_1802 + 92 len 4]
                require mem[_1802 + 96] == mem[_1802 + 124 len 4]
                if mem[_1802] < _1743:
                    revert with 0, 17
                if mem[_1802] - _1743 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1856 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1862 = mem[_1856]
                if not mem[_1856]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1899 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1910 = mem[_1899]
                    if mem[_1899]:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1910
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1910
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1940 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1940] == bool(mem[_1940])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1862
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1862
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1884 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1884] == bool(mem[_1884])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1946 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1958 = mem[_1946]
                    if mem[_1946]:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1958
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1958
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1976 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1976] == bool(mem[_1976])
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = stor5
        mem[(2 * ceil32(return_data.size)) + 132] = arg2
        require ext_code.size(stor2)
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, arg2
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = stor2
        mem[(4 * ceil32(return_data.size)) + 160] = stor3
        if 60 > !block.timestamp:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg2
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 388
        t = (4 * ceil32(return_data.size)) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(stor5)
        call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _220 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _222 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
        require return_data.size >= _220 + (32 * _222) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _222] = mem[(4 * ceil32(return_data.size)) + _220 + 224 len 32 * _222]
        mem[0] = address(arg1)
        mem[32] = 9
        require stor9[address(arg1)]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _584 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _586 = mem[_584]
        require mem[_584] == mem[_584 + 18 len 14]
        _588 = mem[_584 + 32]
        require mem[_584 + 32] == mem[_584 + 50 len 14]
        require mem[_584 + 64] == mem[_584 + 92 len 4]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _596 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _598 = mem[_596]
        require mem[_596] == mem[_596 + 12 len 20]
        require ext_code.size(stor9[address(arg1)])
        staticcall stor9[address(arg1)].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _604 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_604] == mem[_604 + 12 len 20]
        if address(_598) != address(arg1):
            if mem[_604 + 12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if stor3 != address(_598):
                revert with 0, 'bad LP token'
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _644 = mem[_639]
            if Mask(112, 0, _586) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 0, 17
            if 1000 * Mask(112, 0, _586) and mem[_639] > -1 / 1000 * Mask(112, 0, _586):
                revert with 0, 17
            if mem[_639] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * mem[_639] / 2 > !(1997 * Mask(112, 0, _586)):
                revert with 0, 17
            if mem[_639] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * mem[_639] / 2 and mem[_639] / 2 > -1 / 997 * mem[_639] / 2:
                revert with 0, 17
            if 997 * mem[_639] / 2 * mem[_639] / 2 > !(1000 * Mask(112, 0, _586) * mem[_639]):
                revert with 0, 17
            if not (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)):
                revert with 0, 18
            if (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) > !(1997 * Mask(112, 0, _586)):
                revert with 0, 17
            if (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) and (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) > -1 / 997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)):
                revert with 0, 17
            if 997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) > !(1000 * Mask(112, 0, _586) * mem[_639]):
                revert with 0, 17
            if not (1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)):
                revert with 0, 18
            if (997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) > !(1997 * Mask(112, 0, _586)):
                revert with 0, 17
            if (997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) and (997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) > -1 / 997 * (997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)):
                revert with 0, 17
            if 997 * (997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) * (997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) > !(1000 * Mask(112, 0, _586) * mem[_639]):
                revert with 0, 17
            if not (1994 * (997 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * (997 * mem[_639] / 2 * mem[_639] / 2) + (1000 * Mask(112, 0, _586) * mem[_639]) / (1994 * mem[_639] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)):
                revert with 0, 18
            require address(arg1)
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = (997 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))
            require ext_code.size(stor3)
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, (997 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _663 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_663] == bool(mem[_663])
            _679 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if not mem[_679]:
                revert with 0, 50
            mem[_679 + 32] = stor3
            if 1 >= mem[_679]:
                revert with 0, 50
            mem[_679 + 64] = address(arg1)
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[_679 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_679 + 100] = (997 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _644) / (1994 * (997 * _644 / 2 * _644 / 2) + (1000 * Mask(112, 0, _586) * _644) / (1994 * _644 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))
            mem[_679 + 132] = 0
            mem[_679 + 164] = 160
            mem[_679 + 260] = mem[_679]
            idx = 0
            s = _679 + 292
            t = _679 + 32
            while idx < mem[_679]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_679 + 196] = this.address
            mem[_679 + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _679 + (32 * mem[_679]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _994 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1000 = mem[_994]
            require mem[_994] <= test266151307()
            require _994 + mem[_994] + 31 < _994 + return_data.size
            _1006 = mem[_994 + mem[_994]]
            if mem[_994 + mem[_994]] > test266151307():
                revert with 0, 65
            if _994 + ceil32(return_data.size) + ceil32(32 * mem[_994 + mem[_994]]) + 1 > test266151307() or ceil32(32 * mem[_994 + mem[_994]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _994 + ceil32(return_data.size) + ceil32(32 * mem[_994 + mem[_994]]) + 1
            mem[_994 + ceil32(return_data.size)] = _1006
            require return_data.size >= _1000 + (32 * _1006) + 32
            mem[_994 + ceil32(return_data.size) + 32 len 32 * _1006] = mem[_994 + _1000 + 32 len 32 * _1006]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1522 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1528 = mem[_1522]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1546 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1552 = mem[_1546]
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _1528
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _1528
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1570 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1570] == bool(mem[_1570])
            mem[mem[64] + 4] = stor6
            mem[mem[64] + 36] = _1552
            require ext_code.size(stor3)
            call stor3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, _1552
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1594 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1594] == bool(mem[_1594])
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 68] = _1552
            mem[mem[64] + 100] = _1528
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor3, address(arg1), _1552, _1528, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            mem[0] = address(arg1)
            mem[32] = 9
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor9[address(arg1)])
            staticcall stor9[address(arg1)].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1660 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1666 = mem[_1660]
            mem[0] = stor9[address(arg1)]
            mem[32] = 10
            mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
            mem[mem[64] + 36] = _1666
            require ext_code.size(stor9[address(arg1)])
            call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor10[stor9[address(arg1)]], _1666
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1690 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1690] == bool(mem[_1690])
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1714 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1720 = mem[_1714]
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1738 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _1747 = mem[_1738]
            require mem[_1738 + 64] == mem[_1738 + 92 len 4]
            require mem[_1738 + 96] == mem[_1738 + 124 len 4]
            require ext_code.size(stor10[stor9[address(arg1)]])
            call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                 gas gas_remaining wei
                args _1666, _1720, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(stor10[stor9[address(arg1)]])
            staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1804 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_1804 + 64] == mem[_1804 + 92 len 4]
            require mem[_1804 + 96] == mem[_1804 + 124 len 4]
            if mem[_1804] < _1747:
                revert with 0, 17
            if mem[_1804] - _1747 < arg3:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1858 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1864 = mem[_1858]
            if not mem[_1858]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1903 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1912 = mem[_1903]
                if mem[_1903]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1912
                    require ext_code.size(stor3)
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1912
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1942 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1942] == bool(mem[_1942])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1864
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1864
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1890 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1890] == bool(mem[_1890])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1948 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1960 = mem[_1948]
                if mem[_1948]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1960
                    require ext_code.size(stor3)
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1960
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1978 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1978] == bool(mem[_1978])
        else:
            if stor3 == mem[_604 + 12 len 20]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _632 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _640 = mem[_632]
                if Mask(112, 0, _588) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 0, 17
                if 1000 * Mask(112, 0, _588) and mem[_632] > -1 / 1000 * Mask(112, 0, _588):
                    revert with 0, 17
                if mem[_632] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * mem[_632] / 2 > !(1997 * Mask(112, 0, _588)):
                    revert with 0, 17
                if mem[_632] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * mem[_632] / 2 and mem[_632] / 2 > -1 / 997 * mem[_632] / 2:
                    revert with 0, 17
                if 997 * mem[_632] / 2 * mem[_632] / 2 > !(1000 * Mask(112, 0, _588) * mem[_632]):
                    revert with 0, 17
                if not (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)):
                    revert with 0, 18
                if (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) > !(1997 * Mask(112, 0, _588)):
                    revert with 0, 17
                if (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) and (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) > -1 / 997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)):
                    revert with 0, 17
                if 997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) > !(1000 * Mask(112, 0, _588) * mem[_632]):
                    revert with 0, 17
                if not (1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)):
                    revert with 0, 18
                if (997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)) > !(1997 * Mask(112, 0, _588)):
                    revert with 0, 17
                if (997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)) and (997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)) > -1 / 997 * (997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)):
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)) * (997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)) > !(1000 * Mask(112, 0, _588) * mem[_632]):
                    revert with 0, 17
                if not (1994 * (997 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588)) * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * (997 * mem[_632] / 2 * mem[_632] / 2) + (1000 * Mask(112, 0, _588) * mem[_632]) / (1994 * mem[_632] / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)):
                    revert with 0, 18
                require address(arg1)
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = (997 * (997 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588)) * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)) * (997 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588)) * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588)) * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, (997 * (997 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588)) * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)) * (997 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588)) * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588)) * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _656 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_656] == bool(mem[_656])
                _671 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if not mem[_671]:
                    revert with 0, 50
                mem[_671 + 32] = stor3
                if 1 >= mem[_671]:
                    revert with 0, 50
                mem[_671 + 64] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[_671 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_671 + 100] = (997 * (997 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588)) * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588)) * (997 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588)) * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588)) * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1000 * Mask(112, 0, _588) * _640) / (1994 * (997 * _640 / 2 * _640 / 2) + (1000 * Mask(112, 0, _588) * _640) / (1994 * _640 / 2) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588))) + (1997 * Mask(112, 0, _588))
                mem[_671 + 132] = 0
                mem[_671 + 164] = 160
                mem[_671 + 260] = mem[_671]
                idx = 0
                s = _671 + 292
                t = _671 + 32
                while idx < mem[_671]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_671 + 196] = this.address
                mem[_671 + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _671 + (32 * mem[_671]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _996 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1002 = mem[_996]
                require mem[_996] <= test266151307()
                require _996 + mem[_996] + 31 < _996 + return_data.size
                _1008 = mem[_996 + mem[_996]]
                if mem[_996 + mem[_996]] > test266151307():
                    revert with 0, 65
                if _996 + ceil32(return_data.size) + ceil32(32 * mem[_996 + mem[_996]]) + 1 > test266151307() or ceil32(32 * mem[_996 + mem[_996]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _996 + ceil32(return_data.size) + ceil32(32 * mem[_996 + mem[_996]]) + 1
                mem[_996 + ceil32(return_data.size)] = _1008
                require return_data.size >= _1002 + (32 * _1008) + 32
                mem[_996 + ceil32(return_data.size) + 32 len 32 * _1008] = mem[_996 + _1002 + 32 len 32 * _1008]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1524 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1530 = mem[_1524]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1548 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1554 = mem[_1548]
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1530
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1530
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1572 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1572] == bool(mem[_1572])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1554
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1554
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1596 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1596] == bool(mem[_1596])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1554
                mem[mem[64] + 100] = _1530
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor3, address(arg1), _1554, _1530, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1668 = mem[_1662]
                mem[0] = stor9[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
                mem[mem[64] + 36] = _1668
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor9[address(arg1)]], _1668
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1692 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1692] == bool(mem[_1692])
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1716 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1722 = mem[_1716]
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1740 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1751 = mem[_1740]
                require mem[_1740 + 64] == mem[_1740 + 92 len 4]
                require mem[_1740 + 96] == mem[_1740 + 124 len 4]
                require ext_code.size(stor10[stor9[address(arg1)]])
                call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1668, _1722, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1806 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1806 + 64] == mem[_1806 + 92 len 4]
                require mem[_1806 + 96] == mem[_1806 + 124 len 4]
                if mem[_1806] < _1751:
                    revert with 0, 17
                if mem[_1806] - _1751 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1860 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1866 = mem[_1860]
                if not mem[_1860]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1907 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1914 = mem[_1907]
                    if mem[_1907]:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1914
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1914
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1944 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1944] == bool(mem[_1944])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1866
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1866
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1896 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1896] == bool(mem[_1896])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1950 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1962 = mem[_1950]
                    if mem[_1950]:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1962
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1962
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1980 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1980] == bool(mem[_1980])
            else:
                if mem[_604 + 12 len 20] != address(arg1):
                    revert with 0, 'bad LP token'
                if stor3 != address(_598):
                    revert with 0, 'bad LP token'
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _642 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _646 = mem[_642]
                if Mask(112, 0, _586) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                    revert with 0, 17
                if 1000 * Mask(112, 0, _586) and mem[_642] > -1 / 1000 * Mask(112, 0, _586):
                    revert with 0, 17
                if mem[_642] / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * mem[_642] / 2 > !(1997 * Mask(112, 0, _586)):
                    revert with 0, 17
                if mem[_642] / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * mem[_642] / 2 and mem[_642] / 2 > -1 / 997 * mem[_642] / 2:
                    revert with 0, 17
                if 997 * mem[_642] / 2 * mem[_642] / 2 > !(1000 * Mask(112, 0, _586) * mem[_642]):
                    revert with 0, 17
                if not (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)):
                    revert with 0, 18
                if (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) > !(1997 * Mask(112, 0, _586)):
                    revert with 0, 17
                if (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) and (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) > -1 / 997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)):
                    revert with 0, 17
                if 997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) > !(1000 * Mask(112, 0, _586) * mem[_642]):
                    revert with 0, 17
                if not (1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)):
                    revert with 0, 18
                if (997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                    revert with 0, 17
                if 1994 * (997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) > !(1997 * Mask(112, 0, _586)):
                    revert with 0, 17
                if (997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) and (997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) > -1 / 997 * (997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)):
                    revert with 0, 17
                if 997 * (997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) * (997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) > !(1000 * Mask(112, 0, _586) * mem[_642]):
                    revert with 0, 17
                if not (1994 * (997 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586)) * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * (997 * mem[_642] / 2 * mem[_642] / 2) + (1000 * Mask(112, 0, _586) * mem[_642]) / (1994 * mem[_642] / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)):
                    revert with 0, 18
                require address(arg1)
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = (997 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, (997 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_666] == bool(mem[_666])
                _685 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if not mem[_685]:
                    revert with 0, 50
                mem[_685 + 32] = stor3
                if 1 >= mem[_685]:
                    revert with 0, 50
                mem[_685 + 64] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[_685 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_685 + 100] = (997 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586)) * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586)) * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1000 * Mask(112, 0, _586) * _646) / (1994 * (997 * _646 / 2 * _646 / 2) + (1000 * Mask(112, 0, _586) * _646) / (1994 * _646 / 2) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))) + (1997 * Mask(112, 0, _586))
                mem[_685 + 132] = 0
                mem[_685 + 164] = 160
                mem[_685 + 260] = mem[_685]
                idx = 0
                s = _685 + 292
                t = _685 + 32
                while idx < mem[_685]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_685 + 196] = this.address
                mem[_685 + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _685 + (32 * mem[_685]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _995 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1001 = mem[_995]
                require mem[_995] <= test266151307()
                require _995 + mem[_995] + 31 < _995 + return_data.size
                _1007 = mem[_995 + mem[_995]]
                if mem[_995 + mem[_995]] > test266151307():
                    revert with 0, 65
                if _995 + ceil32(return_data.size) + ceil32(32 * mem[_995 + mem[_995]]) + 1 > test266151307() or ceil32(32 * mem[_995 + mem[_995]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _995 + ceil32(return_data.size) + ceil32(32 * mem[_995 + mem[_995]]) + 1
                mem[_995 + ceil32(return_data.size)] = _1007
                require return_data.size >= _1001 + (32 * _1007) + 32
                mem[_995 + ceil32(return_data.size) + 32 len 32 * _1007] = mem[_995 + _1001 + 32 len 32 * _1007]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1523 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1529 = mem[_1523]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1547 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1553 = mem[_1547]
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1529
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1529
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1571 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1571] == bool(mem[_1571])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1553
                require ext_code.size(stor3)
                call stor3.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1553
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1595 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1595] == bool(mem[_1595])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1553
                mem[mem[64] + 100] = _1529
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor3, address(arg1), _1553, _1529, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor9[address(arg1)])
                staticcall stor9[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1661 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1667 = mem[_1661]
                mem[0] = stor9[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor9[address(arg1)]]
                mem[mem[64] + 36] = _1667
                require ext_code.size(stor9[address(arg1)])
                call stor9[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor9[address(arg1)]], _1667
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1691 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1691] == bool(mem[_1691])
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1715 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1721 = mem[_1715]
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1739 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1749 = mem[_1739]
                require mem[_1739 + 64] == mem[_1739 + 92 len 4]
                require mem[_1739 + 96] == mem[_1739 + 124 len 4]
                require ext_code.size(stor10[stor9[address(arg1)]])
                call stor10[stor9[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1667, _1721, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor9[address(arg1)]])
                staticcall stor10[stor9[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1805 + 64] == mem[_1805 + 92 len 4]
                require mem[_1805 + 96] == mem[_1805 + 124 len 4]
                if mem[_1805] < _1749:
                    revert with 0, 17
                if mem[_1805] - _1749 < arg3:
                    revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1859 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1865 = mem[_1859]
                if not mem[_1859]:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1905 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1913 = mem[_1905]
                    if mem[_1905]:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1913
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1913
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1943 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1943] == bool(mem[_1943])
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1865
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1865
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1893 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1893] == bool(mem[_1893])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1949 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1961 = mem[_1949]
                    if mem[_1949]:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1961
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1961
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1979 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1979] == bool(mem[_1979])
}

function sub_943a051e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor4
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = address(arg1)
    mem[32] = 8
    require stor8[address(arg1)]
    require ext_code.size(stor8[address(arg1)])
    staticcall stor8[address(arg1)].getReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor8[address(arg1)])
    staticcall stor8[address(arg1)].token0() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor8[address(arg1)])
    staticcall stor8[address(arg1)].token1() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(arg1):
        if ext_call.return_data[12 len 20] != address(arg1):
            revert with 0, 'bad LP token'
        if stor2 != address(ext_call.return_data[0]):
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
            revert with 0, 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 0, 17
        if 1994 * arg2 / 2 > !(1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
            revert with 0, 17
        if 997 * arg2 / 2 * arg2 / 2 > !(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2):
            revert with 0, 17
        if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 0, 17
        if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > !(1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > !(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2):
            revert with 0, 17
        if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
            revert with 0, 17
        if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > !(1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 17
        if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > !(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2):
            revert with 0, 17
        if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
            revert with 0, 18
        require address(arg1)
        if stor3 == address(arg1):
            mem[(7 * ceil32(return_data.size)) + 100] = stor6
            mem[(7 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 96] = 2
            mem[(8 * ceil32(return_data.size)) + 128] = stor2
            mem[(8 * ceil32(return_data.size)) + 160] = address(arg1)
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(8 * ceil32(return_data.size)) + 228] = 0
            mem[(8 * ceil32(return_data.size)) + 260] = 160
            mem[(8 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (8 * ceil32(return_data.size)) + 388
            t = (8 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 292] = this.address
            mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(stor6)
            call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _404 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
            _410 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
            mem[(10 * ceil32(return_data.size)) + 192] = _410
            require return_data.size >= _404 + (32 * _410) + 32
            mem[(10 * ceil32(return_data.size)) + 224 len 32 * _410] = mem[(8 * ceil32(return_data.size)) + _404 + 224 len 32 * _410]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1070 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1076 = mem[_1070]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1094 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1100 = mem[_1094]
            if stor3 == address(arg1):
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1076
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1076
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1130 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1130] == bool(mem[_1130])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1100
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1100
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1178 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1178] == bool(mem[_1178])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1100
                mem[mem[64] + 100] = _1076
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _1100, _1076, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 8
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor8[address(arg1)])
                staticcall stor8[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1310 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1322 = mem[_1310]
                mem[0] = stor8[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                mem[mem[64] + 36] = _1322
                require ext_code.size(stor8[address(arg1)])
                call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor8[address(arg1)]], _1322
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1370 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1370] == bool(mem[_1370])
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1430 = mem[_1418]
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1466 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1478 = mem[_1466]
                require mem[_1466 + 64] == mem[_1466 + 92 len 4]
                require mem[_1466 + 96] == mem[_1466 + 124 len 4]
                require ext_code.size(stor10[stor8[address(arg1)]])
                call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1322, _1430, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1598 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1598 + 64] == mem[_1598 + 92 len 4]
                require mem[_1598 + 96] == mem[_1598 + 124 len 4]
                if mem[_1598] < _1478:
                    revert with 0, 17
                mem[mem[64]] = mem[_1598] - _1478
            else:
                mem[mem[64] + 4] = stor5
                mem[mem[64] + 36] = _1076
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor5, _1076
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1131 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1131] == bool(mem[_1131])
                mem[mem[64] + 4] = stor5
                mem[mem[64] + 36] = _1100
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor5, _1100
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1179 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1179] == bool(mem[_1179])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1100
                mem[mem[64] + 100] = _1076
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor5)
                call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _1100, _1076, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 8
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor8[address(arg1)])
                staticcall stor8[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1323 = mem[_1311]
                mem[0] = stor8[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                mem[mem[64] + 36] = _1323
                require ext_code.size(stor8[address(arg1)])
                call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor8[address(arg1)]], _1323
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1371 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1371] == bool(mem[_1371])
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1431 = mem[_1419]
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1467 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1480 = mem[_1467]
                require mem[_1467 + 64] == mem[_1467 + 92 len 4]
                require mem[_1467 + 96] == mem[_1467 + 124 len 4]
                require ext_code.size(stor10[stor8[address(arg1)]])
                call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1323, _1431, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1599 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1599 + 64] == mem[_1599 + 92 len 4]
                require mem[_1599 + 96] == mem[_1599 + 124 len 4]
                if mem[_1599] < _1480:
                    revert with 0, 17
                mem[mem[64]] = mem[_1599] - _1480
        else:
            mem[(7 * ceil32(return_data.size)) + 100] = stor5
            mem[(7 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor5, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 96] = 2
            mem[(8 * ceil32(return_data.size)) + 128] = stor2
            mem[(8 * ceil32(return_data.size)) + 160] = address(arg1)
            if 60 > !block.timestamp:
                revert with 0, 17
            mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
            mem[(8 * ceil32(return_data.size)) + 228] = 0
            mem[(8 * ceil32(return_data.size)) + 260] = 160
            mem[(8 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (8 * ceil32(return_data.size)) + 388
            t = (8 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 292] = this.address
            mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _405 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
            _411 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
            mem[(10 * ceil32(return_data.size)) + 192] = _411
            require return_data.size >= _405 + (32 * _411) + 32
            mem[(10 * ceil32(return_data.size)) + 224 len 32 * _411] = mem[(8 * ceil32(return_data.size)) + _405 + 224 len 32 * _411]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1071 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1077 = mem[_1071]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1095 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1101 = mem[_1095]
            if stor3 == address(arg1):
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1077
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1077
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1132] == bool(mem[_1132])
                mem[mem[64] + 4] = stor6
                mem[mem[64] + 36] = _1101
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, _1101
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1180 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1180] == bool(mem[_1180])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1101
                mem[mem[64] + 100] = _1077
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _1101, _1077, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 8
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor8[address(arg1)])
                staticcall stor8[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1312 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1324 = mem[_1312]
                mem[0] = stor8[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                mem[mem[64] + 36] = _1324
                require ext_code.size(stor8[address(arg1)])
                call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor8[address(arg1)]], _1324
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1372 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1372] == bool(mem[_1372])
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1432 = mem[_1420]
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1468 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1482 = mem[_1468]
                require mem[_1468 + 64] == mem[_1468 + 92 len 4]
                require mem[_1468 + 96] == mem[_1468 + 124 len 4]
                require ext_code.size(stor10[stor8[address(arg1)]])
                call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1324, _1432, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1600 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1600 + 64] == mem[_1600 + 92 len 4]
                require mem[_1600 + 96] == mem[_1600 + 124 len 4]
                if mem[_1600] < _1482:
                    revert with 0, 17
                mem[mem[64]] = mem[_1600] - _1482
            else:
                mem[mem[64] + 4] = stor5
                mem[mem[64] + 36] = _1077
                require ext_code.size(address(arg1))
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor5, _1077
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1133] == bool(mem[_1133])
                mem[mem[64] + 4] = stor5
                mem[mem[64] + 36] = _1101
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor5, _1101
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1181 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1181] == bool(mem[_1181])
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[mem[64] + 68] = _1101
                mem[mem[64] + 100] = _1077
                mem[mem[64] + 132] = 0
                mem[mem[64] + 164] = 0
                mem[mem[64] + 196] = this.address
                mem[mem[64] + 228] = block.timestamp + 60
                require ext_code.size(stor5)
                call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                     gas gas_remaining wei
                    args stor2, address(arg1), _1101, _1077, 0, 0, address(this.address), block.timestamp + 60
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[0] = address(arg1)
                mem[32] = 8
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor8[address(arg1)])
                staticcall stor8[address(arg1)].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1325 = mem[_1313]
                mem[0] = stor8[address(arg1)]
                mem[32] = 10
                mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                mem[mem[64] + 36] = _1325
                require ext_code.size(stor8[address(arg1)])
                call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor10[stor8[address(arg1)]], _1325
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1373 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1373] == bool(mem[_1373])
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1433 = mem[_1421]
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1469 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _1484 = mem[_1469]
                require mem[_1469 + 64] == mem[_1469 + 92 len 4]
                require mem[_1469 + 96] == mem[_1469 + 124 len 4]
                require ext_code.size(stor10[stor8[address(arg1)]])
                call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                     gas gas_remaining wei
                    args _1325, _1433, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require ext_code.size(stor10[stor8[address(arg1)]])
                staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1601 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require mem[_1601 + 64] == mem[_1601 + 92 len 4]
                require mem[_1601 + 96] == mem[_1601 + 124 len 4]
                if mem[_1601] < _1484:
                    revert with 0, 17
                mem[mem[64]] = mem[_1601] - _1484
    else:
        if stor2 == ext_call.return_data[12 len 20]:
            if Mask(112, 0, ext_call.return_data[32]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 0, 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * arg2 / 2 > !(1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
                revert with 0, 17
            if 997 * arg2 / 2 * arg2 / 2 > !(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2):
                revert with 0, 17
            if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > !(1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) > !(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2):
                revert with 0, 17
            if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > !(1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) > !(1000 * Mask(112, 0, ext_call.return_data[32]) * arg2):
                revert with 0, 17
            if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 18
            require address(arg1)
            if stor3 == address(arg1):
                mem[(7 * ceil32(return_data.size)) + 100] = stor6
                mem[(7 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 96] = 2
                mem[(8 * ceil32(return_data.size)) + 128] = stor2
                mem[(8 * ceil32(return_data.size)) + 160] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(8 * ceil32(return_data.size)) + 228] = 0
                mem[(8 * ceil32(return_data.size)) + 260] = 160
                mem[(8 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 388
                t = (8 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 292] = this.address
                mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _408 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                _414 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193
                mem[(10 * ceil32(return_data.size)) + 192] = _414
                require return_data.size >= _408 + (32 * _414) + 32
                mem[(10 * ceil32(return_data.size)) + 224 len 32 * _414] = mem[(8 * ceil32(return_data.size)) + _408 + 224 len 32 * _414]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1074 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1080 = mem[_1074]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1098 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1104 = mem[_1098]
                if stor3 == address(arg1):
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _1080
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _1080
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1138] == bool(mem[_1138])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _1104
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _1104
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1186 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1186] == bool(mem[_1186])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64] + 68] = _1104
                    mem[mem[64] + 100] = _1080
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _1104, _1080, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[0] = address(arg1)
                    mem[32] = 8
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor8[address(arg1)])
                    staticcall stor8[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1318 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1330 = mem[_1318]
                    mem[0] = stor8[address(arg1)]
                    mem[32] = 10
                    mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                    mem[mem[64] + 36] = _1330
                    require ext_code.size(stor8[address(arg1)])
                    call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor10[stor8[address(arg1)]], _1330
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1378 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1378] == bool(mem[_1378])
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1438 = mem[_1426]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1494 = mem[_1474]
                    require mem[_1474 + 64] == mem[_1474 + 92 len 4]
                    require mem[_1474 + 96] == mem[_1474 + 124 len 4]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                         gas gas_remaining wei
                        args _1330, _1438, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1606 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1606 + 64] == mem[_1606 + 92 len 4]
                    require mem[_1606 + 96] == mem[_1606 + 124 len 4]
                    if mem[_1606] < _1494:
                        revert with 0, 17
                    mem[mem[64]] = mem[_1606] - _1494
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = _1080
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, _1080
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1139] == bool(mem[_1139])
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = _1104
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, _1104
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1187 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1187] == bool(mem[_1187])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64] + 68] = _1104
                    mem[mem[64] + 100] = _1080
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor5)
                    call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _1104, _1080, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[0] = address(arg1)
                    mem[32] = 8
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor8[address(arg1)])
                    staticcall stor8[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1331 = mem[_1319]
                    mem[0] = stor8[address(arg1)]
                    mem[32] = 10
                    mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                    mem[mem[64] + 36] = _1331
                    require ext_code.size(stor8[address(arg1)])
                    call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor10[stor8[address(arg1)]], _1331
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1379] == bool(mem[_1379])
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1439 = mem[_1427]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1475 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1496 = mem[_1475]
                    require mem[_1475 + 64] == mem[_1475 + 92 len 4]
                    require mem[_1475 + 96] == mem[_1475 + 124 len 4]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                         gas gas_remaining wei
                        args _1331, _1439, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1607 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1607 + 64] == mem[_1607 + 92 len 4]
                    require mem[_1607 + 96] == mem[_1607 + 124 len 4]
                    if mem[_1607] < _1496:
                        revert with 0, 17
                    mem[mem[64]] = mem[_1607] - _1496
            else:
                mem[(7 * ceil32(return_data.size)) + 100] = stor5
                mem[(7 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor5, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 96] = 2
                mem[(8 * ceil32(return_data.size)) + 128] = stor2
                mem[(8 * ceil32(return_data.size)) + 160] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))
                mem[(8 * ceil32(return_data.size)) + 228] = 0
                mem[(8 * ceil32(return_data.size)) + 260] = 160
                mem[(8 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 388
                t = (8 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 292] = this.address
                mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(stor5)
                call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _409 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32
                require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                _415 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[32]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) + (1997 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 192]) + 193
                mem[(10 * ceil32(return_data.size)) + 192] = _415
                require return_data.size >= _409 + (32 * _415) + 32
                mem[(10 * ceil32(return_data.size)) + 224 len 32 * _415] = mem[(8 * ceil32(return_data.size)) + _409 + 224 len 32 * _415]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1075 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1081 = mem[_1075]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1099 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1105 = mem[_1099]
                if stor3 == address(arg1):
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _1081
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _1081
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1140 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1140] == bool(mem[_1140])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _1105
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _1105
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1188 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1188] == bool(mem[_1188])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64] + 68] = _1105
                    mem[mem[64] + 100] = _1081
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _1105, _1081, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[0] = address(arg1)
                    mem[32] = 8
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor8[address(arg1)])
                    staticcall stor8[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1320 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1332 = mem[_1320]
                    mem[0] = stor8[address(arg1)]
                    mem[32] = 10
                    mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                    mem[mem[64] + 36] = _1332
                    require ext_code.size(stor8[address(arg1)])
                    call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor10[stor8[address(arg1)]], _1332
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1380] == bool(mem[_1380])
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1440 = mem[_1428]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1476 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1498 = mem[_1476]
                    require mem[_1476 + 64] == mem[_1476 + 92 len 4]
                    require mem[_1476 + 96] == mem[_1476 + 124 len 4]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                         gas gas_remaining wei
                        args _1332, _1440, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1608 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1608 + 64] == mem[_1608 + 92 len 4]
                    require mem[_1608 + 96] == mem[_1608 + 124 len 4]
                    if mem[_1608] < _1498:
                        revert with 0, 17
                    mem[mem[64]] = mem[_1608] - _1498
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = _1081
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, _1081
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1141] == bool(mem[_1141])
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = _1105
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, _1105
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1189] == bool(mem[_1189])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64] + 68] = _1105
                    mem[mem[64] + 100] = _1081
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor5)
                    call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _1105, _1081, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[0] = address(arg1)
                    mem[32] = 8
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor8[address(arg1)])
                    staticcall stor8[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1333 = mem[_1321]
                    mem[0] = stor8[address(arg1)]
                    mem[32] = 10
                    mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                    mem[mem[64] + 36] = _1333
                    require ext_code.size(stor8[address(arg1)])
                    call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor10[stor8[address(arg1)]], _1333
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1381] == bool(mem[_1381])
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1441 = mem[_1429]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1477 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1500 = mem[_1477]
                    require mem[_1477 + 64] == mem[_1477 + 92 len 4]
                    require mem[_1477 + 96] == mem[_1477 + 124 len 4]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                         gas gas_remaining wei
                        args _1333, _1441, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1609 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1609 + 64] == mem[_1609 + 92 len 4]
                    require mem[_1609 + 96] == mem[_1609 + 124 len 4]
                    if mem[_1609] < _1500:
                        revert with 0, 17
                    mem[mem[64]] = mem[_1609] - _1500
        else:
            if ext_call.return_data[12 len 20] != address(arg1):
                revert with 0, 'bad LP token'
            if stor2 != address(ext_call.return_data[0]):
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > 0x20d135b66ae990fc484cea55e38a936bcf497445394d4cc984add428823e4d:
                revert with 0, 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if arg2 / 2 > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * arg2 / 2 > !(1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            if arg2 / 2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * arg2 / 2 and arg2 / 2 > -1 / 997 * arg2 / 2:
                revert with 0, 17
            if 997 * arg2 / 2 * arg2 / 2 > !(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2):
                revert with 0, 17
            if not (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > !(1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            if (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            if 997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) > !(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2):
                revert with 0, 17
            if not (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x20ddd97c0522a9fb60cd6a8f472018a6631d03d9ff7c889a0feb7558127cca:
                revert with 0, 17
            if 1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > !(1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            if (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) and (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > -1 / 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            if 997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) > !(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2):
                revert with 0, 17
            if not (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 18
            require address(arg1)
            if stor3 == address(arg1):
                mem[(7 * ceil32(return_data.size)) + 100] = stor6
                mem[(7 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor6, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 96] = 2
                mem[(8 * ceil32(return_data.size)) + 128] = stor2
                mem[(8 * ceil32(return_data.size)) + 160] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(8 * ceil32(return_data.size)) + 228] = 0
                mem[(8 * ceil32(return_data.size)) + 260] = 160
                mem[(8 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 388
                t = (8 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 292] = this.address
                mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(stor6)
                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _406 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                _412 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
                mem[(10 * ceil32(return_data.size)) + 192] = _412
                require return_data.size >= _406 + (32 * _412) + 32
                mem[(10 * ceil32(return_data.size)) + 224 len 32 * _412] = mem[(8 * ceil32(return_data.size)) + _406 + 224 len 32 * _412]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1072 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1078 = mem[_1072]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1096 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1102 = mem[_1096]
                if stor3 == address(arg1):
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _1078
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _1078
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1134] == bool(mem[_1134])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _1102
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _1102
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1182 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1182] == bool(mem[_1182])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64] + 68] = _1102
                    mem[mem[64] + 100] = _1078
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _1102, _1078, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[0] = address(arg1)
                    mem[32] = 8
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor8[address(arg1)])
                    staticcall stor8[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1314 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1326 = mem[_1314]
                    mem[0] = stor8[address(arg1)]
                    mem[32] = 10
                    mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                    mem[mem[64] + 36] = _1326
                    require ext_code.size(stor8[address(arg1)])
                    call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor10[stor8[address(arg1)]], _1326
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1374] == bool(mem[_1374])
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1422 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1434 = mem[_1422]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1486 = mem[_1470]
                    require mem[_1470 + 64] == mem[_1470 + 92 len 4]
                    require mem[_1470 + 96] == mem[_1470 + 124 len 4]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                         gas gas_remaining wei
                        args _1326, _1434, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1602 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1602 + 64] == mem[_1602 + 92 len 4]
                    require mem[_1602 + 96] == mem[_1602 + 124 len 4]
                    if mem[_1602] < _1486:
                        revert with 0, 17
                    mem[mem[64]] = mem[_1602] - _1486
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = _1078
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, _1078
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1135 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1135] == bool(mem[_1135])
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = _1102
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, _1102
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1183 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1183] == bool(mem[_1183])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64] + 68] = _1102
                    mem[mem[64] + 100] = _1078
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor5)
                    call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _1102, _1078, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[0] = address(arg1)
                    mem[32] = 8
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor8[address(arg1)])
                    staticcall stor8[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1327 = mem[_1315]
                    mem[0] = stor8[address(arg1)]
                    mem[32] = 10
                    mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                    mem[mem[64] + 36] = _1327
                    require ext_code.size(stor8[address(arg1)])
                    call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor10[stor8[address(arg1)]], _1327
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1375] == bool(mem[_1375])
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1435 = mem[_1423]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1488 = mem[_1471]
                    require mem[_1471 + 64] == mem[_1471 + 92 len 4]
                    require mem[_1471 + 96] == mem[_1471 + 124 len 4]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                         gas gas_remaining wei
                        args _1327, _1435, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1603 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1603 + 64] == mem[_1603 + 92 len 4]
                    require mem[_1603 + 96] == mem[_1603 + 124 len 4]
                    if mem[_1603] < _1488:
                        revert with 0, 17
                    mem[mem[64]] = mem[_1603] - _1488
            else:
                mem[(7 * ceil32(return_data.size)) + 100] = stor5
                mem[(7 * ceil32(return_data.size)) + 132] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor5, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 96] = 2
                mem[(8 * ceil32(return_data.size)) + 128] = stor2
                mem[(8 * ceil32(return_data.size)) + 160] = address(arg1)
                if 60 > !block.timestamp:
                    revert with 0, 17
                mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 196] = (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))
                mem[(8 * ceil32(return_data.size)) + 228] = 0
                mem[(8 * ceil32(return_data.size)) + 260] = 160
                mem[(8 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (8 * ceil32(return_data.size)) + 388
                t = (8 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 292] = this.address
                mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 60
                require ext_code.size(stor5)
                call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _407 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32
                require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
                _413 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, (997 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0])) * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * (997 * arg2 / 2 * arg2 / 2) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2) / (1994 * arg2 / 2) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) + (1997 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 192]) + 193
                mem[(10 * ceil32(return_data.size)) + 192] = _413
                require return_data.size >= _407 + (32 * _413) + 32
                mem[(10 * ceil32(return_data.size)) + 224 len 32 * _413] = mem[(8 * ceil32(return_data.size)) + _407 + 224 len 32 * _413]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1073 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1079 = mem[_1073]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1097 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1103 = mem[_1097]
                if stor3 == address(arg1):
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _1079
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _1079
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1136 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1136] == bool(mem[_1136])
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = _1103
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, _1103
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1184 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1184] == bool(mem[_1184])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64] + 68] = _1103
                    mem[mem[64] + 100] = _1079
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor6)
                    call stor6.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _1103, _1079, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[0] = address(arg1)
                    mem[32] = 8
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor8[address(arg1)])
                    staticcall stor8[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1328 = mem[_1316]
                    mem[0] = stor8[address(arg1)]
                    mem[32] = 10
                    mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                    mem[mem[64] + 36] = _1328
                    require ext_code.size(stor8[address(arg1)])
                    call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor10[stor8[address(arg1)]], _1328
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1376 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1376] == bool(mem[_1376])
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1436 = mem[_1424]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1490 = mem[_1472]
                    require mem[_1472 + 64] == mem[_1472 + 92 len 4]
                    require mem[_1472 + 96] == mem[_1472 + 124 len 4]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                         gas gas_remaining wei
                        args _1328, _1436, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1604 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1604 + 64] == mem[_1604 + 92 len 4]
                    require mem[_1604 + 96] == mem[_1604 + 124 len 4]
                    if mem[_1604] < _1490:
                        revert with 0, 17
                    mem[mem[64]] = mem[_1604] - _1490
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = _1079
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, _1079
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1137 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1137] == bool(mem[_1137])
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = _1103
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, _1103
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1185 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1185] == bool(mem[_1185])
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[mem[64] + 68] = _1103
                    mem[mem[64] + 100] = _1079
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    mem[mem[64] + 228] = block.timestamp + 60
                    require ext_code.size(stor5)
                    call stor5.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args stor2, address(arg1), _1103, _1079, 0, 0, address(this.address), block.timestamp + 60
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    mem[0] = address(arg1)
                    mem[32] = 8
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor8[address(arg1)])
                    staticcall stor8[address(arg1)].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1329 = mem[_1317]
                    mem[0] = stor8[address(arg1)]
                    mem[32] = 10
                    mem[mem[64] + 4] = stor10[stor8[address(arg1)]]
                    mem[mem[64] + 36] = _1329
                    require ext_code.size(stor8[address(arg1)])
                    call stor8[address(arg1)].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor10[stor8[address(arg1)]], _1329
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1377] == bool(mem[_1377])
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondPrice() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1437 = mem[_1425]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _1492 = mem[_1473]
                    require mem[_1473 + 64] == mem[_1473 + 92 len 4]
                    require mem[_1473 + 96] == mem[_1473 + 124 len 4]
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    call stor10[stor8[address(arg1)]].0x8dbdbe6d with:
                         gas gas_remaining wei
                        args _1329, _1437, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require ext_code.size(stor10[stor8[address(arg1)]])
                    staticcall stor10[stor8[address(arg1)]].bondInfo(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1605 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    require mem[_1605 + 64] == mem[_1605 + 92 len 4]
                    require mem[_1605 + 96] == mem[_1605 + 124 len 4]
                    if mem[_1605] < _1492:
                        revert with 0, 17
                    mem[mem[64]] = mem[_1605] - _1492
    return memory
      from mem[64]
       len 32
}



}
