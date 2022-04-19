contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_34cc8136(?)
#  - sub_623fcf2e(?)
#  - sub_70d2939f(?)
#  - sub_88a1cab9(?)
#  - turnOutToken(address arg1, uint256 arg2)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV3SwapCallback(int256 arg1, int256 arg2, bytes arg3)
#
address superManAddress;
address wETHAddress;
address sub_41e9bd95Address;
address stor3;
uint8 sub_50220e7f;
uint8 sub_0cec8da3; offset 8
uint8 sub_d1e83332; offset 16
uint256 stor14; offset 16
uint256 stor14; offset 8
mapping of uint256 controller;
mapping of address sub_7eb403c2;
mapping of address sub_aaafe928;

function sub_0cec8da3(?) {
    return bool(sub_0cec8da3)
}

function sub_41e9bd95(?) {
    return sub_41e9bd95Address
}

function sub_50220e7f(?) {
    return bool(sub_50220e7f)
}

function Controller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return controller[arg1]
}

function sub_7eb403c2(?) {
    require calldata.size - 4 >= 32
    return sub_7eb403c2[arg1]
}

function getController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return controller[address(arg1)]
}

function sub_aaafe928(?) {
    require calldata.size - 4 >= 32
    return sub_aaafe928[arg1]
}

function getWETHAddress() {
    return wETHAddress
}

function sub_d1e83332(?) {
    return bool(sub_d1e83332)
}

function getSuperMan() {
    return superManAddress
}

function _fallback() payable {
    revert
}

function setWETHAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    wETHAddress = arg1
}

function setIfTurnout(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    sub_50220e7f = uint8(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    superManAddress = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    controller[address(arg1)] = 1
}

function sub_e562056a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    sub_41e9bd95Address = address(arg1)
}

function sub_97f0e052(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    Mask(248, 0, stor14.field_8) = Mask(248, 0, bool(arg1))
}

function sub_a42cbd8e(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    Mask(240, 0, stor14.field_16) = Mask(240, 0, bool(arg1))
}

function ETHtoWETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(wETHAddress)
    call wETHAddress.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function WETHToETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(wETHAddress)
    call wETHAddress.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function turnOutETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    call superManAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_487ede04(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(stor3)
    call stor3.withdraw(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if superManAddress != arg1:
        if controller[address(arg1)] != 1:
            revert with 0, 'wrong beneficiary!'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7f5cb4a0(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    if not arg1:
        call address(arg2).0x8dae7333 with:
             gas gas_remaining wei
            args 0, arg3, 0, 96, 0
    else:
        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                gas gas_remaining wei
               args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_eeb149e7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
         gas gas_remaining wei
        args address(arg1), arg2, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ce106664(?) {
    require calldata.size - 4 >= 192
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 == ('signextend', 15, ('param', 'arg3'))
    require arg4 == ('signextend', 15, ('param', 'arg4'))
    require arg5 == address(arg5)
    require ext_code.size(address(arg2))
    if not arg1:
        call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, uint32(('signextend', 15, ('param', 'arg3'))), ('signextend', 15, ('param', 'arg4')), arg6, 0
    else:
        staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ('signextend', 15, ('param', 'arg3')), ('signextend', 15, ('param', 'arg4')), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0337b944(?) {
    require calldata.size - 4 >= 192
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 == ('signextend', 15, ('param', 'arg3'))
    require arg4 == ('signextend', 15, ('param', 'arg4'))
    require arg5 == address(arg5)
    require ext_code.size(address(arg2))
    if not arg1:
        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, uint32(('signextend', 15, ('param', 'arg3'))), ('signextend', 15, ('param', 'arg4')), arg6, 0
    else:
        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ('signextend', 15, ('param', 'arg3')), ('signextend', 15, ('param', 'arg4')), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_dd21f62e(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 == bool(arg5)
    require ext_code.size(address(arg1))
    if address(arg2) < address(arg3):
        call address(arg1).swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(this.address), address(arg2) < address(arg3), arg4, 4295128740, 160, 128, arg2 << 192, address(arg1), arg4, bool(arg5)
    else:
        call address(arg1).swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(this.address), address(arg2) < address(arg3), arg4, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, 128, arg2 << 192, address(arg1), arg4, bool(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_7fbd1308(?) {
    require calldata.size - 4 >= 192
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg6 == arg6 % 16777216
    if arg1:
        require ext_code.size(sub_41e9bd95Address)
        call sub_41e9bd95Address.quoteExactInputSingle(address rg1, address rg2, uint24 rg3, uint256 rg4, uint160 rg5) with:
             gas gas_remaining wei
            args 0, 0, address(arg4), arg6 << 232, arg5, 0
    else:
        if block.timestamp + 100 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(address(arg2))
        call address(arg2).exactInputSingle(address rg1, address rg2, uint24 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint160 rg8) with:
             gas gas_remaining wei
            args address(arg3), address(arg4), arg6 << 232, address(this.address), block.timestamp + 100, arg5, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8fa2e78b(?) {
    require calldata.size - 4 >= 192
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 == ('signextend', 15, ('param', 'arg3'))
    require arg4 == ('signextend', 15, ('param', 'arg4'))
    require arg5 == address(arg5)
    if arg1:
        require ext_code.size(address(arg2))
        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ('signextend', 15, ('param', 'arg3')), ('signextend', 15, ('param', 'arg4')), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
         gas gas_remaining wei
        args ('signextend', 15, ('param', 'arg3')), ('signextend', 15, ('param', 'arg4')), arg6, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg5))
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    else:
        return 0
}

function sub_d8303990(?) {
    require calldata.size - 4 >= 160
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 == ('signextend', 15, ('param', 'arg3'))
    require arg4 == ('signextend', 15, ('param', 'arg4'))
    if arg1:
        require ext_code.size(address(arg2))
        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ('signextend', 15, ('param', 'arg3')), ('signextend', 15, ('param', 'arg4')), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    require ext_code.size(sub_7eb403c2[('signextend', 15, ('param', 'arg3'))])
    call sub_7eb403c2[('signextend', 15, ('param', 'arg3'))].approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
         gas gas_remaining wei
        args sub_7eb403c2[('signextend', 15, ('param', 'arg3'))], arg5, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_aaafe928[('signextend', 15, ('param', 'arg4'))])
    staticcall sub_aaafe928[('signextend', 15, ('param', 'arg4'))].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_aaafe928[('signextend', 15, ('param', 'arg3'))])
    call sub_aaafe928[('signextend', 15, ('param', 'arg3'))].approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
         gas gas_remaining wei
        args ('signextend', 15, ('param', 'arg3')), ('signextend', 15, ('param', 'arg4')), arg5, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_aaafe928[('signextend', 15, ('param', 'arg4'))])
    staticcall sub_aaafe928[('signextend', 15, ('param', 'arg4'))].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(stor3)
    call stor3.withdraw(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args sub_7eb403c2[('signextend', 15, ('param', 'arg4'))], 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_c137197b(?) {
    require calldata.size - 4 >= 160
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    if not arg1:
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp + 100 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg5
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        call address(arg2).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg5, 0, 160, address(this.address), block.timestamp + 100, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
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
    require ext_code.size(address(arg2))
    staticcall address(arg2).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _41 = mem[192 len 4], Mask(224, 32, arg5) >> 32
    require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg5) >> 32 + 223
    _43 = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    require return_data.size >= _41 + (32 * _43) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _43] = mem[_41 + 224 len 32 * _43]
    require _43 - 1 < _43
    mem[mem[64]] = mem[(32 * _43 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_168df522(?) {
    require calldata.size - 4 >= 192
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[96] = 1
    mem[160] = 2
    mem[128] = address(arg5)
    mem[192] = address(arg3)
    mem[224] = address(arg4)
    if arg1:
        mem[256] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
        mem[260] = arg6
        mem[292] = 96
        mem[356] = 1
        idx = 0
        s = 128
        t = 388
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[324] = 160
        mem[420] = 2
        idx = 0
        s = 192
        t = 452
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xa8312b1d with:
                gas gas_remaining wei
               args arg6, 96, 160, 1, mem[388], 2, mem[452 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 256
        require return_data.size >= 32
        _75 = mem[256 len 4], Mask(224, 32, arg6) >> 32
        require mem[256 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require return_data.size + 256 > mem[256 len 4], Mask(224, 32, arg6) >> 32 + 287
        _77 = mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256]
        require mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256] <= test266151307()
        require (32 * mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256]) + 288 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256]) + 288
        mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256]
        require return_data.size >= _75 + (32 * _77) + 32
        mem[ceil32(return_data.size) + 288 len 32 * _77] = mem[_75 + 288 len 32 * _77]
        require _77 - 1 < _77
        mem[mem[64]] = mem[(32 * _77 - 1) + ceil32(return_data.size) + 288]
    else:
        if block.timestamp + 100 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[256] = 0xceb757d500000000000000000000000000000000000000000000000000000000
        mem[260] = arg6
        mem[292] = 0
        mem[324] = 192
        mem[452] = 1
        idx = 0
        s = 128
        t = 484
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[356] = 256
        mem[516] = 2
        idx = 0
        s = 192
        t = 548
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[388] = this.address
        mem[420] = block.timestamp + 100
        require ext_code.size(address(arg2))
        call address(arg2).0xceb757d5 with:
             gas gas_remaining wei
            args arg6, 0, 192, 256, address(this.address), block.timestamp + 100, 1, mem[484], 2, mem[548 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 256
        require return_data.size >= 32
        _74 = mem[256 len 4], Mask(224, 32, arg6) >> 32
        require mem[256 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require return_data.size + 256 > mem[256 len 4], Mask(224, 32, arg6) >> 32 + 287
        _76 = mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256]
        require mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256] <= test266151307()
        require (32 * mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256]) + 288 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256]) + 288
        mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg6) >> 32 + 256]
        require return_data.size >= _74 + (32 * _76) + 32
        mem[ceil32(return_data.size) + 288 len 32 * _76] = mem[_74 + 288 len 32 * _76]
        require _76 - 1 < _76
        mem[mem[64]] = mem[(32 * _76 - 1) + ceil32(return_data.size) + 288]
    return memory
      from mem[64]
       len 32
}

function sub_5ff02628(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg6 == bool(arg6)
    mem[96] = 2
    mem[128] = address(arg3)
    mem[160] = address(arg4)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg5
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
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    if address(arg3) < address(arg4):
        _89 = mem[192 len 4], Mask(224, 32, arg5) >> 32
        require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg5) >> 32 + 223
        _91 = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
        require return_data.size >= _89 + (32 * _91) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _91] = mem[_89 + 224 len 32 * _91]
        require _91 - 1 < _91
        _161 = mem[(32 * _91 - 1) + ceil32(return_data.size) + 224]
        if address(arg3) == address(arg3):
            _163 = mem[64]
            mem[64] = mem[64] + 128
            mem[_163] = 0
            mem[_163 + 32] = 0
            mem[_163 + 64] = 0
            mem[_163 + 96] = 0
            _167 = mem[64]
            mem[64] = mem[64] + 128
            mem[_167] = address(arg3)
            mem[_167 + 32] = address(arg2)
            mem[_167 + 64] = arg5
            mem[_167 + 96] = bool(arg6)
            _168 = mem[64]
            mem[mem[64] + 32] = address(arg3)
            mem[mem[64] + 64] = address(arg2)
            mem[mem[64] + 96] = arg5
            mem[mem[64] + 128] = bool(arg6)
            _191 = mem[64]
            mem[64] = mem[64] + 160
            mem[_168 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_168 + 164] = 0
            mem[_168 + 196] = _161
            mem[_168 + 228] = this.address
            mem[_168 + 260] = 128
            _199 = mem[_191]
            mem[_168 + 292] = mem[_191]
            mem[_168 + 324 len ceil32(_199)] = mem[_191 + 32 len ceil32(_199)]
            if ceil32(_199) > _199:
                mem[_199 + _168 + 324] = 0
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, _161, address(this.address), 128, mem[_168 + 292 len ceil32(_199) + 32]
        else:
            _164 = mem[64]
            mem[64] = mem[64] + 128
            mem[_164] = 0
            mem[_164 + 32] = 0
            mem[_164 + 64] = 0
            mem[_164 + 96] = 0
            _169 = mem[64]
            mem[64] = mem[64] + 128
            mem[_169] = address(arg3)
            mem[_169 + 32] = address(arg2)
            mem[_169 + 64] = arg5
            mem[_169 + 96] = bool(arg6)
            _170 = mem[64]
            mem[mem[64] + 32] = address(arg3)
            mem[mem[64] + 64] = address(arg2)
            mem[mem[64] + 96] = arg5
            mem[mem[64] + 128] = bool(arg6)
            _193 = mem[64]
            mem[64] = mem[64] + 160
            mem[_170 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_170 + 164] = _161
            mem[_170 + 196] = 0
            mem[_170 + 228] = this.address
            mem[_170 + 260] = 128
            _200 = mem[_193]
            mem[_170 + 292] = mem[_193]
            mem[_170 + 324 len ceil32(_200)] = mem[_193 + 32 len ceil32(_200)]
            if ceil32(_200) > _200:
                mem[_200 + _170 + 324] = 0
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args _161, 0, address(this.address), 128, mem[_170 + 292 len ceil32(_200) + 32]
    else:
        _90 = mem[192 len 4], Mask(224, 32, arg5) >> 32
        require mem[192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg5) >> 32 + 223
        _92 = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg5) >> 32 + 192]
        require return_data.size >= _90 + (32 * _92) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _92] = mem[_90 + 224 len 32 * _92]
        require _92 - 1 < _92
        _162 = mem[(32 * _92 - 1) + ceil32(return_data.size) + 224]
        if address(arg3) == address(arg4):
            _165 = mem[64]
            mem[64] = mem[64] + 128
            mem[_165] = 0
            mem[_165 + 32] = 0
            mem[_165 + 64] = 0
            mem[_165 + 96] = 0
            _171 = mem[64]
            mem[64] = mem[64] + 128
            mem[_171] = address(arg3)
            mem[_171 + 32] = address(arg2)
            mem[_171 + 64] = arg5
            mem[_171 + 96] = bool(arg6)
            _172 = mem[64]
            mem[mem[64] + 32] = address(arg3)
            mem[mem[64] + 64] = address(arg2)
            mem[mem[64] + 96] = arg5
            mem[mem[64] + 128] = bool(arg6)
            _195 = mem[64]
            mem[64] = mem[64] + 160
            mem[_172 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_172 + 164] = 0
            mem[_172 + 196] = _162
            mem[_172 + 228] = this.address
            mem[_172 + 260] = 128
            _201 = mem[_195]
            mem[_172 + 292] = mem[_195]
            mem[_172 + 324 len ceil32(_201)] = mem[_195 + 32 len ceil32(_201)]
            if ceil32(_201) > _201:
                mem[_201 + _172 + 324] = 0
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, _162, address(this.address), 128, mem[_172 + 292 len ceil32(_201) + 32]
        else:
            _166 = mem[64]
            mem[64] = mem[64] + 128
            mem[_166] = 0
            mem[_166 + 32] = 0
            mem[_166 + 64] = 0
            mem[_166 + 96] = 0
            _173 = mem[64]
            mem[64] = mem[64] + 128
            mem[_173] = address(arg3)
            mem[_173 + 32] = address(arg2)
            mem[_173 + 64] = arg5
            mem[_173 + 96] = bool(arg6)
            _174 = mem[64]
            mem[mem[64] + 32] = address(arg3)
            mem[mem[64] + 64] = address(arg2)
            mem[mem[64] + 96] = arg5
            mem[mem[64] + 128] = bool(arg6)
            _197 = mem[64]
            mem[64] = mem[64] + 160
            mem[_174 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_174 + 164] = _162
            mem[_174 + 196] = 0
            mem[_174 + 228] = this.address
            mem[_174 + 260] = 128
            _202 = mem[_197]
            mem[_174 + 292] = mem[_197]
            mem[_174 + 324 len ceil32(_202)] = mem[_197 + 32 len ceil32(_202)]
            if ceil32(_202) > _202:
                mem[_202 + _174 + 324] = 0
            require ext_code.size(address(arg2))
            call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args _162, 0, address(this.address), 128, mem[_174 + 292 len ceil32(_202) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d47888ba(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 256
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 384 >= 352 and (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 384 <= test266151307()
    mem[352] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[0] + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[0] + 36
    t = 384
    while idx < cd[(cd[4] + ('cd', 4)[0] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[128] = 352
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 416 >= 384 and (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 416 <= test266151307()
    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 384] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[1] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[1] + 36
    t = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 416
    while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
        require cd[s] == ('signextend', 15, ('cd', ('var', 1)))
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[160] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 384
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 448 >= 416 and (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 448 <= test266151307()
    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 416] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[2] + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[2] + 36
    t = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 448
    while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 416
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 480 >= 448 and (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 480 <= test266151307()
    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 448] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 480
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 448
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 512 >= 480 and (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 512 <= test266151307()
    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 480] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[4] + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[4] + 36
    t = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 512
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        require cd[s] == cd[s] % 16777216
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[256] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 480
    require ('cd', 4)[5] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 544 >= 512 and (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 544 <= test266151307()
    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 512] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[5] + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[5] + 36
    t = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 544
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[288] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 512
    require ('cd', 4)[6] == address(('cd', 4)[6])
    mem[320] = ('cd', 4)[6]
    if msg.sender == superManAddress:
        require 0 < cd[(cd[4] + ('cd', 4)[5] + 4)]
        if mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 544] != 1:
            require 0 < cd[(cd[4] + ('cd', 4)[5] + 4)]
            if 2 == mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 544]:
                require 0 < cd[(cd[4] + ('cd', 4)[3] + 4)]
                _6539 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 480]
                require 0 < cd[(cd[4] + ('cd', 4)[0] + 4)]
                _6550 = mem[384]
                require 1 < cd[(cd[4] + ('cd', 4)[0] + 4)]
                _6561 = mem[416]
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 832] = mem[396 len 20]
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 864] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20]
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 896] = ('cd', 4).length
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 928] = 0
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 960] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 964] = this.address
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 996] = mem[396 len 20] < mem[428 len 20]
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1028] = ('cd', 4).length
                if mem[396 len 20] < mem[428 len 20]:
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1060] = 4295128740
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1092] = 160
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1124] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 832 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])]
                    if ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]) <= mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]:
                        require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20])
                        call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(this.address), mem[396 len 20] < mem[428 len 20], ('cd', 4).length, 4295128740, Array(len=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800], data=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])])
                    else:
                        mem[mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800] + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156] = 0
                        require ext_code.size(address(_6539))
                        call address(_6539).swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(this.address), address(_6550) < address(_6561), ('cd', 4).length, 4295128740, Array(len=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800], data=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])])
                else:
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1060] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1092] = 160
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1124] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 832 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])]
                    if ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]) <= mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]:
                        require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20])
                        call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(this.address), mem[396 len 20] < mem[428 len 20], ('cd', 4).length, 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800], data=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])])
                    else:
                        mem[mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800] + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156] = 0
                        require ext_code.size(address(_6539))
                        call address(_6539).swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(this.address), address(_6550) < address(_6561), ('cd', 4).length, 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800], data=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
        else:
            require 0 < cd[(cd[4] + ('cd', 4)[2] + 4)]
            require 0 < cd[(cd[4] + ('cd', 4)[3] + 4)]
            _6532 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 480]
            require 0 < cd[(cd[4] + ('cd', 4)[0] + 4)]
            _6542 = mem[384]
            require 1 < cd[(cd[4] + ('cd', 4)[0] + 4)]
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 544] = 2
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 576] = mem[396 len 20]
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 608] = mem[428 len 20]
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 644] = ('cd', 4).length
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 676] = 64
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 708] = 2
            idx = 0
            s = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 576
            t = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 740
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 460 len 20])
            staticcall mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 460 len 20].getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args ('cd', 4).length, Array(len=2, data=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 740 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 640
            require return_data.size >= 32
            if mem[396 len 20] < mem[428 len 20]:
                _7618 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32
                require mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 <= test266151307()
                require (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + return_data.size + 640 > (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 671
                _7634 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]
                require mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640] <= test266151307()
                require (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 32 >= 0 and (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 672 <= test266151307()
                mem[64] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 672
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 640] = _7634
                require return_data.size >= _7618 + (32 * _7634) + 32
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 672 len 32 * _7634] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + _7618 + 672 len 32 * _7634]
                require _7634 - 1 < _7634
                _8566 = mem[(32 * _7634 - 1) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 672]
                if mem[396 len 20] == mem[396 len 20]:
                    _8570 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8570] = 0
                    mem[_8570 + 32] = 0
                    mem[_8570 + 64] = 0
                    mem[_8570 + 96] = 0
                    _8578 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8578] = address(_6542)
                    mem[_8578 + 32] = address(_6532)
                    mem[_8578 + 64] = ('cd', 4).length
                    mem[_8578 + 96] = 0
                    _8579 = mem[64]
                    mem[mem[64] + 32] = address(_6542)
                    mem[mem[64] + 64] = address(_6532)
                    mem[mem[64] + 96] = ('cd', 4).length
                    mem[mem[64] + 128] = 0
                    _8626 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_8579 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8579 + 164] = 0
                    mem[_8579 + 196] = _8566
                    mem[_8579 + 228] = this.address
                    mem[_8579 + 260] = 128
                    _8642 = mem[_8626]
                    mem[_8579 + 292] = mem[_8626]
                    mem[_8579 + 324 len ceil32(_8642)] = mem[_8626 + 32 len ceil32(_8642)]
                    if ceil32(_8642) > _8642:
                        mem[_8642 + _8579 + 324] = 0
                    require ext_code.size(address(_6532))
                    call address(_6532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _8566, address(this.address), 128, mem[_8579 + 292 len ceil32(_8642) + 32]
                else:
                    _8571 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8571] = 0
                    mem[_8571 + 32] = 0
                    mem[_8571 + 64] = 0
                    mem[_8571 + 96] = 0
                    _8580 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8580] = address(_6542)
                    mem[_8580 + 32] = address(_6532)
                    mem[_8580 + 64] = ('cd', 4).length
                    mem[_8580 + 96] = 0
                    _8581 = mem[64]
                    mem[mem[64] + 32] = address(_6542)
                    mem[mem[64] + 64] = address(_6532)
                    mem[mem[64] + 96] = ('cd', 4).length
                    mem[mem[64] + 128] = 0
                    _8628 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_8581 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8581 + 164] = _8566
                    mem[_8581 + 196] = 0
                    mem[_8581 + 228] = this.address
                    mem[_8581 + 260] = 128
                    _8643 = mem[_8628]
                    mem[_8581 + 292] = mem[_8628]
                    mem[_8581 + 324 len ceil32(_8643)] = mem[_8628 + 32 len ceil32(_8643)]
                    if ceil32(_8643) > _8643:
                        mem[_8643 + _8581 + 324] = 0
                    require ext_code.size(address(_6532))
                    call address(_6532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _8566, 0, address(this.address), 128, mem[_8581 + 292 len ceil32(_8643) + 32]
            else:
                _7619 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32
                require mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 <= test266151307()
                require (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + return_data.size + 640 > (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 671
                _7635 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]
                require mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640] <= test266151307()
                require (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 32 >= 0 and (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 672 <= test266151307()
                mem[64] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 672
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 640] = _7635
                require return_data.size >= _7619 + (32 * _7635) + 32
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 672 len 32 * _7635] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + _7619 + 672 len 32 * _7635]
                require _7635 - 1 < _7635
                _8567 = mem[(32 * _7635 - 1) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 672]
                if mem[396 len 20] == mem[428 len 20]:
                    _8572 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8572] = 0
                    mem[_8572 + 32] = 0
                    mem[_8572 + 64] = 0
                    mem[_8572 + 96] = 0
                    _8582 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8582] = address(_6542)
                    mem[_8582 + 32] = address(_6532)
                    mem[_8582 + 64] = ('cd', 4).length
                    mem[_8582 + 96] = 0
                    _8583 = mem[64]
                    mem[mem[64] + 32] = address(_6542)
                    mem[mem[64] + 64] = address(_6532)
                    mem[mem[64] + 96] = ('cd', 4).length
                    mem[mem[64] + 128] = 0
                    _8630 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_8583 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8583 + 164] = 0
                    mem[_8583 + 196] = _8567
                    mem[_8583 + 228] = this.address
                    mem[_8583 + 260] = 128
                    _8644 = mem[_8630]
                    mem[_8583 + 292] = mem[_8630]
                    mem[_8583 + 324 len ceil32(_8644)] = mem[_8630 + 32 len ceil32(_8644)]
                    if ceil32(_8644) > _8644:
                        mem[_8644 + _8583 + 324] = 0
                    require ext_code.size(address(_6532))
                    call address(_6532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _8567, address(this.address), 128, mem[_8583 + 292 len ceil32(_8644) + 32]
                else:
                    _8573 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8573] = 0
                    mem[_8573 + 32] = 0
                    mem[_8573 + 64] = 0
                    mem[_8573 + 96] = 0
                    _8584 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8584] = address(_6542)
                    mem[_8584 + 32] = address(_6532)
                    mem[_8584 + 64] = ('cd', 4).length
                    mem[_8584 + 96] = 0
                    _8585 = mem[64]
                    mem[mem[64] + 32] = address(_6542)
                    mem[mem[64] + 64] = address(_6532)
                    mem[mem[64] + 96] = ('cd', 4).length
                    mem[mem[64] + 128] = 0
                    _8632 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_8585 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8585 + 164] = _8567
                    mem[_8585 + 196] = 0
                    mem[_8585 + 228] = this.address
                    mem[_8585 + 260] = 128
                    _8645 = mem[_8632]
                    mem[_8585 + 292] = mem[_8632]
                    mem[_8585 + 324 len ceil32(_8645)] = mem[_8632 + 32 len ceil32(_8645)]
                    if ceil32(_8645) > _8645:
                        mem[_8645 + _8585 + 324] = 0
                    require ext_code.size(address(_6532))
                    call address(_6532).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _8567, 0, address(this.address), 128, mem[_8585 + 292 len ceil32(_8645) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 < cd[(cd[4] + ('cd', 4)[5] + 4)]
            if 2 == mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 544]:
                require 0 < cd[(cd[4] + ('cd', 4)[3] + 4)]
                require 0 < cd[(cd[4] + ('cd', 4)[0] + 4)]
                require 1 < cd[(cd[4] + ('cd', 4)[0] + 4)]
                require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20])
                if mem[396 len 20] < mem[428 len 20]:
                    call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args address(this.address), mem[396 len 20] < mem[428 len 20], ('cd', 4).length, 4295128740, 160, 128, mem[384] << 192, address(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 480]), ('cd', 4).length, 0
                else:
                    call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args address(this.address), mem[396 len 20] < mem[428 len 20], ('cd', 4).length, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, 128, mem[384] << 192, address(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 480]), ('cd', 4).length, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
    else:
        mem[0] = msg.sender
        mem[32] = 15
        if controller[msg.sender] != 1:
            revert with 0, 'No authority'
        require 0 < cd[(cd[4] + ('cd', 4)[5] + 4)]
        if mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 544] != 1:
            require 0 < cd[(cd[4] + ('cd', 4)[5] + 4)]
            if 2 == mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 544]:
                require 0 < cd[(cd[4] + ('cd', 4)[3] + 4)]
                _6555 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 480]
                require 0 < cd[(cd[4] + ('cd', 4)[0] + 4)]
                _6563 = mem[384]
                require 1 < cd[(cd[4] + ('cd', 4)[0] + 4)]
                _6568 = mem[416]
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 832] = mem[396 len 20]
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 864] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20]
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 896] = ('cd', 4).length
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 928] = 0
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 960] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 964] = this.address
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 996] = mem[396 len 20] < mem[428 len 20]
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1028] = ('cd', 4).length
                if mem[396 len 20] < mem[428 len 20]:
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1060] = 4295128740
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1092] = 160
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1124] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 832 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])]
                    if ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]) <= mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]:
                        require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20])
                        call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(this.address), mem[396 len 20] < mem[428 len 20], ('cd', 4).length, 4295128740, Array(len=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800], data=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])])
                    else:
                        mem[mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800] + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156] = 0
                        require ext_code.size(address(_6555))
                        call address(_6555).swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(this.address), address(_6563) < address(_6568), ('cd', 4).length, 4295128740, Array(len=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800], data=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])])
                else:
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1060] = 0xfffd8963efd1fc6a506488495d951d5263988d25
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1092] = 160
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1124] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]
                    mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 832 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])]
                    if ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]) <= mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800]:
                        require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20])
                        call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(this.address), mem[396 len 20] < mem[428 len 20], ('cd', 4).length, 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800], data=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])])
                    else:
                        mem[mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800] + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156] = 0
                        require ext_code.size(address(_6555))
                        call address(_6555).swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(this.address), address(_6563) < address(_6568), ('cd', 4).length, 0xfffd8963efd1fc6a506488495d951d5263988d25, Array(len=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800], data=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1156 len ceil32(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 800])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
        else:
            require 0 < cd[(cd[4] + ('cd', 4)[2] + 4)]
            require 0 < cd[(cd[4] + ('cd', 4)[3] + 4)]
            _6547 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 480]
            require 0 < cd[(cd[4] + ('cd', 4)[0] + 4)]
            _6558 = mem[384]
            require 1 < cd[(cd[4] + ('cd', 4)[0] + 4)]
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 544] = 2
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 576] = mem[396 len 20]
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 608] = mem[428 len 20]
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 644] = ('cd', 4).length
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 676] = 64
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 708] = 2
            idx = 0
            s = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 576
            t = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 740
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 460 len 20])
            staticcall mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 460 len 20].getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args ('cd', 4).length, Array(len=2, data=mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 740 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 640
            require return_data.size >= 32
            if mem[396 len 20] < mem[428 len 20]:
                _7624 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32
                require mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 <= test266151307()
                require (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + return_data.size + 640 > (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 671
                _7644 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]
                require mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640] <= test266151307()
                require (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 32 >= 0 and (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 672 <= test266151307()
                mem[64] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 672
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 640] = _7644
                require return_data.size >= _7624 + (32 * _7644) + 32
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 672 len 32 * _7644] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + _7624 + 672 len 32 * _7644]
                require _7644 - 1 < _7644
                _8568 = mem[(32 * _7644 - 1) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 672]
                if mem[396 len 20] == mem[396 len 20]:
                    _8574 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8574] = 0
                    mem[_8574 + 32] = 0
                    mem[_8574 + 64] = 0
                    mem[_8574 + 96] = 0
                    _8586 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8586] = address(_6558)
                    mem[_8586 + 32] = address(_6547)
                    mem[_8586 + 64] = ('cd', 4).length
                    mem[_8586 + 96] = 0
                    _8587 = mem[64]
                    mem[mem[64] + 32] = address(_6558)
                    mem[mem[64] + 64] = address(_6547)
                    mem[mem[64] + 96] = ('cd', 4).length
                    mem[mem[64] + 128] = 0
                    _8634 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_8587 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8587 + 164] = 0
                    mem[_8587 + 196] = _8568
                    mem[_8587 + 228] = this.address
                    mem[_8587 + 260] = 128
                    _8646 = mem[_8634]
                    mem[_8587 + 292] = mem[_8634]
                    mem[_8587 + 324 len ceil32(_8646)] = mem[_8634 + 32 len ceil32(_8646)]
                    if ceil32(_8646) > _8646:
                        mem[_8646 + _8587 + 324] = 0
                    require ext_code.size(address(_6547))
                    call address(_6547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _8568, address(this.address), 128, mem[_8587 + 292 len ceil32(_8646) + 32]
                else:
                    _8575 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8575] = 0
                    mem[_8575 + 32] = 0
                    mem[_8575 + 64] = 0
                    mem[_8575 + 96] = 0
                    _8588 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8588] = address(_6558)
                    mem[_8588 + 32] = address(_6547)
                    mem[_8588 + 64] = ('cd', 4).length
                    mem[_8588 + 96] = 0
                    _8589 = mem[64]
                    mem[mem[64] + 32] = address(_6558)
                    mem[mem[64] + 64] = address(_6547)
                    mem[mem[64] + 96] = ('cd', 4).length
                    mem[mem[64] + 128] = 0
                    _8636 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_8589 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8589 + 164] = _8568
                    mem[_8589 + 196] = 0
                    mem[_8589 + 228] = this.address
                    mem[_8589 + 260] = 128
                    _8647 = mem[_8636]
                    mem[_8589 + 292] = mem[_8636]
                    mem[_8589 + 324 len ceil32(_8647)] = mem[_8636 + 32 len ceil32(_8647)]
                    if ceil32(_8647) > _8647:
                        mem[_8647 + _8589 + 324] = 0
                    require ext_code.size(address(_6547))
                    call address(_6547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _8568, 0, address(this.address), 128, mem[_8589 + 292 len ceil32(_8647) + 32]
            else:
                _7625 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32
                require mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 <= test266151307()
                require (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + return_data.size + 640 > (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 671
                _7645 = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]
                require mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640] <= test266151307()
                require (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 32 >= 0 and (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 672 <= test266151307()
                mem[64] = (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 len 4], Mask(224, 32, ('cd', 4).length) >> 32 + 640]) + 672
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 640] = _7645
                require return_data.size >= _7625 + (32 * _7645) + 32
                mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 672 len 32 * _7645] = mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + _7625 + 672 len 32 * _7645]
                require _7645 - 1 < _7645
                _8569 = mem[(32 * _7645 - 1) + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + ceil32(return_data.size) + 672]
                if mem[396 len 20] == mem[428 len 20]:
                    _8576 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8576] = 0
                    mem[_8576 + 32] = 0
                    mem[_8576 + 64] = 0
                    mem[_8576 + 96] = 0
                    _8590 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8590] = address(_6558)
                    mem[_8590 + 32] = address(_6547)
                    mem[_8590 + 64] = ('cd', 4).length
                    mem[_8590 + 96] = 0
                    _8591 = mem[64]
                    mem[mem[64] + 32] = address(_6558)
                    mem[mem[64] + 64] = address(_6547)
                    mem[mem[64] + 96] = ('cd', 4).length
                    mem[mem[64] + 128] = 0
                    _8638 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_8591 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8591 + 164] = 0
                    mem[_8591 + 196] = _8569
                    mem[_8591 + 228] = this.address
                    mem[_8591 + 260] = 128
                    _8648 = mem[_8638]
                    mem[_8591 + 292] = mem[_8638]
                    mem[_8591 + 324 len ceil32(_8648)] = mem[_8638 + 32 len ceil32(_8648)]
                    if ceil32(_8648) > _8648:
                        mem[_8648 + _8591 + 324] = 0
                    require ext_code.size(address(_6547))
                    call address(_6547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _8569, address(this.address), 128, mem[_8591 + 292 len ceil32(_8648) + 32]
                else:
                    _8577 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8577] = 0
                    mem[_8577 + 32] = 0
                    mem[_8577 + 64] = 0
                    mem[_8577 + 96] = 0
                    _8592 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_8592] = address(_6558)
                    mem[_8592 + 32] = address(_6547)
                    mem[_8592 + 64] = ('cd', 4).length
                    mem[_8592 + 96] = 0
                    _8593 = mem[64]
                    mem[mem[64] + 32] = address(_6558)
                    mem[mem[64] + 64] = address(_6547)
                    mem[mem[64] + 96] = ('cd', 4).length
                    mem[mem[64] + 128] = 0
                    _8640 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_8593 + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_8593 + 164] = _8569
                    mem[_8593 + 196] = 0
                    mem[_8593 + 228] = this.address
                    mem[_8593 + 260] = 128
                    _8649 = mem[_8640]
                    mem[_8593 + 292] = mem[_8640]
                    mem[_8593 + 324 len ceil32(_8649)] = mem[_8640 + 32 len ceil32(_8649)]
                    if ceil32(_8649) > _8649:
                        mem[_8649 + _8593 + 324] = 0
                    require ext_code.size(address(_6547))
                    call address(_6547).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _8569, 0, address(this.address), 128, mem[_8593 + 292 len ceil32(_8649) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require 0 < cd[(cd[4] + ('cd', 4)[5] + 4)]
            if 2 == mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 544]:
                require 0 < cd[(cd[4] + ('cd', 4)[3] + 4)]
                require 0 < cd[(cd[4] + ('cd', 4)[0] + 4)]
                require 1 < cd[(cd[4] + ('cd', 4)[0] + 4)]
                require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20])
                if mem[396 len 20] < mem[428 len 20]:
                    call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args address(this.address), mem[396 len 20] < mem[428 len 20], ('cd', 4).length, 4295128740, 160, 128, mem[384] << 192, address(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 480]), ('cd', 4).length, 0
                else:
                    call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args address(this.address), mem[396 len 20] < mem[428 len 20], ('cd', 4).length, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, 128, mem[384] << 192, address(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 480]), ('cd', 4).length, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
}



}
