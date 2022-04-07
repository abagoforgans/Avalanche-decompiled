contract main {




// =====================  Runtime code  =====================


#
#  - addLiquidity(address arg1, address arg2, uint256[] arg3, uint256[] arg4, uint256 arg5, uint256 arg6)
#  - removeLiquidity(address arg1, address arg2, uint256 arg3, uint256[] arg4, uint256[] arg5, uint256 arg6)
#  - swapFromBase(address arg1, address arg2, uint8 arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7)
#  - calculateConvert(address arg1, address arg2, uint256 arg3)
#  - convert(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - swapToBase(address arg1, address arg2, uint8 arg3, uint8 arg4, uint256 arg5, uint256 arg6, uint256 arg7)
#
function _fallback() payable {
    revert
}

function calculateRemoveBaseLiquidityOneToken(address arg1, address arg2, uint256 arg3, uint8 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require ext_code.size(arg2)
    staticcall arg2.getLpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.calculateRemoveLiquidityOneToken(address rg1, uint256 rg2, uint8 rg3) with:
            gas gas_remaining wei
           args this.address, arg3, uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.calculateRemoveLiquidityOneToken(address rg1, uint256 rg2, uint8 rg3) with:
            gas gas_remaining wei
           args this.address, ext_call.return_data[0], arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function calculateSwapToBase(address arg1, address arg2, uint8 arg3, uint8 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(arg2)
    staticcall arg2.getLpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if arg3 == ext_call.return_data[31 len 1]:
        require ext_code.size(arg2)
        staticcall arg2.calculateRemoveLiquidityOneToken(address rg1, uint256 rg2, uint8 rg3) with:
                gas gas_remaining wei
               args this.address, arg5, arg4
    else:
        require ext_code.size(arg1)
        staticcall arg1.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg3 << 248, ext_call.return_data[0] << 248, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.calculateRemoveLiquidityOneToken(address rg1, uint256 rg2, uint8 rg3) with:
                gas gas_remaining wei
               args this.address, ext_call.return_data[0], arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function calculateSwapFromBase(address arg1, address arg2, uint8 arg3, uint8 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(arg2)
    staticcall arg2.getLpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg2)
    staticcall arg2.getNumberOfTokens() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    if arg3 >= ext_call.return_data[0]:
        revert with 0, 50
    if ext_call.return_data[0]:
        require ext_code.size(arg2)
        staticcall arg2.calculateTokenAmount(uint256[] rg1, bool rg2) with:
                gas gas_remaining wei
               args Array(len=ext_call.return_data[0], data=call.data[calldata.size len 32 * ext_call.return_data[0]]), 1
    else:
        mem[(32 * uint8(arg3)) + (4 * ceil32(return_data.size)) + 128] = arg5
        require ext_code.size(arg2)
        staticcall arg2.calculateTokenAmount(uint256[] rg1, bool rg2) with:
                gas gas_remaining wei
               args Array(len=ext_call.return_data[0], data=mem[(4 * ceil32(return_data.size)) + 128 len 32 * ext_call.return_data[0]]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[0]) != arg4:
        require ext_code.size(arg1)
        staticcall arg1.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 248, arg4 << 248, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return ext_call.return_data[0]
}

function calculateTokenAmount(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg3.length) + 97] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(32 * arg3.length) + 129
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 == arg5
    require ext_code.size(arg2)
    staticcall arg2.getLpToken() with:
            gas gas_remaining wei
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(return_data.size) + 102] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + (2 * ceil32(return_data.size)) + 98] = 0xe6ab280600000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + (2 * ceil32(return_data.size)) + 102] = 64
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + (2 * ceil32(return_data.size)) + 166] = arg4.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + (2 * ceil32(return_data.size)) + 198 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + (2 * ceil32(return_data.size)) + 134] = arg5
    require ext_code.size(arg2)
    staticcall arg2.calculateTokenAmount(uint256[] rg1, bool rg2) with:
            gas gas_remaining wei
           args Array(len=arg4.length, data=mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), arg5
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[0]) >= arg3.length:
        revert with 0, 50
    if mem[(32 * uint8(ext_call.return_data[0])) + 128] > !ext_call.return_data[0]:
        revert with 0, 17
    if uint8(ext_call.return_data[0]) >= arg3.length:
        revert with 0, 50
    mem[(32 * uint8(ext_call.return_data[0])) + 128] = mem[(32 * uint8(ext_call.return_data[0])) + 128] + ext_call.return_data[0]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + (4 * ceil32(return_data.size)) + 98] = 0xe6ab280600000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + (4 * ceil32(return_data.size)) + 102] = 64
    require ext_code.size(arg1)
    staticcall arg1.calculateTokenAmount(uint256[] rg1, bool rg2) with:
            gas gas_remaining wei
           args Array(len=arg3.length, data=mem[128 len 32 * arg3.length]), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function calculateRemoveLiquidity(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.getLpToken() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 96] = 0x7c61e56100000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    mem[(2 * ceil32(return_data.size)) + 132] = arg3
    require ext_code.size(arg1)
    staticcall arg1.calculateRemoveLiquidity(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, this.address) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, this.address) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 96 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, this.address) >> 32 + 127
    _13 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, this.address) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, this.address) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _13
    require _12 + (32 * _13) + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _13] = mem[(2 * ceil32(return_data.size)) + _12 + 128 len 32 * _13]
    if uint8(ext_call.return_data[0]) >= _13:
        revert with 0, 50
    _34 = mem[(32 * uint8(ext_call.return_data[0])) + (4 * ceil32(return_data.size)) + 128]
    if uint8(ext_call.return_data[0]) >= _13:
        revert with 0, 50
    mem[(32 * uint8(ext_call.return_data[0])) + (4 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = 0x7c61e56100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = _34
    require ext_code.size(arg2)
    staticcall arg2.calculateRemoveLiquidity(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args this.address, _34
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _38 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _39 = mem[_38]
    require mem[_38] <= test266151307()
    require _38 + return_data.size > _38 + mem[_38] + 31
    _40 = mem[_38 + mem[_38]]
    if mem[_38 + mem[_38]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_38 + mem[_38]]) + 1 < 0 or _38 + ceil32(return_data.size) + ceil32(32 * mem[_38 + mem[_38]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _38 + ceil32(return_data.size) + ceil32(32 * mem[_38 + mem[_38]]) + 1
    mem[_38 + ceil32(return_data.size)] = _40
    require _39 + (32 * _40) + 32 <= return_data.size
    mem[_38 + ceil32(return_data.size) + 32 len 32 * _40] = mem[_38 + _39 + 32 len 32 * _40]
    _50 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = _13
    mem[mem[64] + 96 len 32 * _13] = mem[(4 * ceil32(return_data.size)) + 128 len 32 * _13]
    mem[mem[64] + 32] = (32 * _13) + 96
    mem[_50 + (32 * _13) + 96] = _40
    mem[_50 + (32 * _13) + 128 len 32 * _40] = mem[_38 + ceil32(return_data.size) + 32 len 32 * _40]
    return memory
      from mem[64]
       len _50 + (32 * _13) + (32 * _40) + -mem[64] + 128
}

function removeBaseLiquidityOneToken(address arg1, address arg2, uint256 arg3, uint8 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require ext_code.size(arg1)
    staticcall arg1.getLpToken() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg2)
    staticcall arg2.getLpToken() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.getTokenIndex(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = this.address
    mem[(4 * ceil32(return_data.size)) + 164] = arg3
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 100] = arg1
    mem[(6 * ceil32(return_data.size)) + 132] = arg3
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 100] = arg3
    mem[(7 * ceil32(return_data.size)) + 132] = uint8(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 164] = 0
    mem[(7 * ceil32(return_data.size)) + 196] = arg6
    require ext_code.size(arg1)
    call arg1.removeLiquidityOneToken(uint256 rg1, uint8 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args arg3, ext_call.return_data[0] << 248, 0, arg6
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(10 * ceil32(return_data.size)) + 100] = arg2
    mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(11 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(11 * ceil32(return_data.size)) + 132] = arg4
    mem[(11 * ceil32(return_data.size)) + 164] = arg5
    mem[(11 * ceil32(return_data.size)) + 196] = arg6
    require ext_code.size(arg2)
    call arg2.removeLiquidityOneToken(uint256 rg1, uint8 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg4 << 248, arg5, arg6
    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(12 * ceil32(return_data.size)) + 100] = arg4
    require ext_code.size(arg2)
    staticcall arg2.getToken(uint8 rg1) with:
            gas gas_remaining wei
           args arg4
    mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(13 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(14 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(14 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(14 * ceil32(return_data.size)) + 96] = 68
    mem[(14 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(14 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(14 * ceil32(return_data.size)) + 196] = 32
    mem[(14 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(14 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[(14 * ceil32(return_data.size)) + 328] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(14 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(14 * ceil32(return_data.size)) + 292] == bool(mem[(14 * ceil32(return_data.size)) + 292])
            if not mem[(14 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}



}
