contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_34cc8136(?)
#  - sub_70d2939f(?)
#  - sub_88a1cab9(?)
#  - turnOutToken(address arg1, uint256 arg2)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV3SwapCallback(int256 arg1, int256 arg2, bytes arg3)
#
address superManAddress;
address wETHAddress;
address sub_41e9bd95Address;
uint8 stor11;
uint8 stor11; offset 8
uint8 stor11; offset 16
uint256 stor11; offset 16
uint256 stor11; offset 8
mapping of uint256 controller;

function sub_0cec8da3(?) {
    return bool(uint8(stor11.field_8))
}

function sub_41e9bd95(?) {
    return sub_41e9bd95Address
}

function sub_50220e7f(?) {
    return bool(uint8(stor11.field_0))
}

function Controller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return controller[arg1]
}

function getController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return controller[address(arg1)]
}

function getWETHAddress() {
    return wETHAddress
}

function sub_d1e83332(?) {
    return bool(uint8(stor11.field_16))
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

function setIfTurnout(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    uint8(stor11.field_0) = uint8(arg1)
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
    Mask(248, 0, stor11.field_8) = Mask(248, 0, bool(arg1))
}

function sub_a42cbd8e(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if superManAddress != msg.sender:
        revert with 0, 'No authority'
    Mask(240, 0, stor11.field_16) = Mask(240, 0, bool(arg1))
}

function WETHToETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(wETHAddress)
    call wETHAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function ETHtoWETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(wETHAddress)
    call wETHAddress.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining wei
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
                        require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20])
                        call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
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
                        require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20])
                        call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
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
        mem[32] = 12
        if controller[msg.sender] != 1:
            revert with 0, 'No authority'
        require 0 < cd[(cd[4] + ('cd', 4)[5] + 4)]
        if mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 544] != 1:
            require 0 < cd[(cd[4] + ('cd', 4)[5] + 4)]
            if 2 == mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)]) + 544]:
                require 0 < cd[(cd[4] + ('cd', 4)[3] + 4)]
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
                        require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20])
                        call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
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
                        require ext_code.size(mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20])
                        call mem[(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 492 len 20].swap(address rg1, bool rg2, int256 rg3, uint160 rg4, bytes rg5) with:
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

function sub_55aaaef6(?) {
    require calldata.size - 4 >= 288
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3 % 16777216
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == ('signextend', 15, ('param', 'arg7'))
    require arg8 == ('signextend', 15, ('param', 'arg8'))
    if arg1:
        if arg4 != 1:
            if arg4 != 2:
                if arg4 != 3:
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                return 0
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args 0, arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 6 == arg4:
                                    require ext_code.size(address(arg2))
                                    if not arg1:
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                    else:
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return 0
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(('signextend', 15, ('param', 'arg7'))), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        else:
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 != 5:
                            if 6 == arg4:
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 6 == arg4:
                                    require ext_code.size(address(arg2))
                                    if not arg1:
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                    else:
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return 0
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 0, uint32(('signextend', 15, ('param', 'arg7'))), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 4 == arg4:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        else:
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if arg4 != 5:
                        if 6 == arg4:
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 6 == arg4:
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg4 != 6:
                                return 0
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if arg1:
                    require ext_code.size(sub_41e9bd95Address)
                    call sub_41e9bd95Address.quoteExactInputSingle(address rg1, address rg2, uint24 rg3, uint256 rg4, uint160 rg5) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg6), arg3 << 232, arg9, 0
                else:
                    if block.timestamp + 100 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(arg2))
                    call address(arg2).exactInputSingle(address rg1, address rg2, uint24 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint160 rg8) with:
                         gas gas_remaining wei
                        args address(arg5), address(arg6), arg3 << 232, address(this.address), block.timestamp + 100, arg9, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 3 == arg4:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if 4 == arg4:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if arg4 != 5:
                    if 6 == arg4:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).0x8dae7333 with:
                                 gas gas_remaining wei
                                args arg9, 0, 96, 0
                        else:
                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if arg1:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 6 == arg4:
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require ext_code.size(address(arg6))
                        staticcall address(arg6).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(arg2))
                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg6))
                        staticcall address(arg6).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg4 != 6:
                            return 0
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).0x8dae7333 with:
                                 gas gas_remaining wei
                                args arg9, 0, 96, 0
                        else:
                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            return ext_call.return_data[0]
        mem[96] = 2
        mem[128] = address(arg5)
        mem[160] = address(arg6)
        if not arg1:
            require ext_code.size(address(arg6))
            staticcall address(arg6).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp + 100 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg9
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
                args arg9, 0, 160, address(this.address), block.timestamp + 100, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg6))
            staticcall address(arg6).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg4 != 2:
                if arg4 != 3:
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                return 0
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 6 == arg4:
                                    require ext_code.size(address(arg2))
                                    if not arg1:
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                    else:
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return 0
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        else:
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 != 5:
                            if 6 == arg4:
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 6 == arg4:
                                    require ext_code.size(address(arg2))
                                    if not arg1:
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                    else:
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return 0
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 4 == arg4:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        else:
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if arg4 != 5:
                        if 6 == arg4:
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 6 == arg4:
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg4 != 6:
                                return 0
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if arg1:
                    require ext_code.size(sub_41e9bd95Address)
                    call sub_41e9bd95Address.quoteExactInputSingle(address rg1, address rg2, uint24 rg3, uint256 rg4, uint160 rg5) with:
                         gas gas_remaining wei
                        args address(arg5), address(arg6), arg3 << 232, arg9, 0
                else:
                    if block.timestamp + 100 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(arg2))
                    call address(arg2).exactInputSingle(address rg1, address rg2, uint24 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint160 rg8) with:
                         gas gas_remaining wei
                        args address(arg5), address(arg6), arg3 << 232, address(this.address), block.timestamp + 100, arg9, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 3 == arg4:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if 4 == arg4:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if arg4 != 5:
                    if 6 == arg4:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).0x8dae7333 with:
                                 gas gas_remaining wei
                                args arg9, 0, 96, 0
                        else:
                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if arg1:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 6 == arg4:
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require ext_code.size(address(arg6))
                        staticcall address(arg6).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(arg2))
                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg6))
                        staticcall address(arg6).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg4 != 6:
                            return 0
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).0x8dae7333 with:
                                 gas gas_remaining wei
                                args arg9, 0, 96, 0
                        else:
                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            return ext_call.return_data[0]
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg9
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
               args arg9, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _10978 = mem[192 len 4], Mask(224, 32, arg9) >> 32
        require mem[192 len 4], Mask(224, 32, arg9) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg9) >> 32 + 223
        _10982 = mem[mem[192 len 4], Mask(224, 32, arg9) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg9) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg9) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg9) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg9) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg9) >> 32 + 192]
        require return_data.size >= _10978 + (32 * _10982) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _10982] = mem[_10978 + 224 len 32 * _10982]
        require _10982 - 1 < _10982
        if arg4 != 2:
            if arg4 != 3:
                if arg4 != 4:
                    if arg4 != 5:
                        if arg4 != 6:
                            mem[mem[64]] = mem[(32 * _10982 - 1) + ceil32(return_data.size) + 224]
                        else:
                            mem[mem[64] + 4] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18416 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64]] = mem[_18416]
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18415 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64]] = mem[_18415]
                    else:
                        if arg1:
                            mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18406 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18406]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18647 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18647]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18646 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18646]
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18405 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18423 = mem[_18405]
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18575 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18645 = mem[_18575]
                            _18721 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_18721] = 30
                            mem[_18721 + 32] = 'SafeMath: subtraction overflow'
                            if _18423 > _18645:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg4 != 6:
                                return (_18645 - _18423)
                            mem[mem[64] + 4] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19500 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64]] = mem[_19500]
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19499 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64]] = mem[_19499]
                else:
                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                    mem[mem[64] + 68] = arg9
                    if arg1:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18380 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18380]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18651 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18651]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18650 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18650]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18620 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18620]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19192 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19192]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19191 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19191]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18619 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18695 = mem[_18619]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19074 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19190 = mem[_19074]
                                _19362 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19362] = 30
                                mem[_19362 + 32] = 'SafeMath: subtraction overflow'
                                if _18695 > _19190:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19190 - _18695)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20438 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20438]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20437 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20437]
                    else:
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(arg2))
                        call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18379]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18649 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18649]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18648 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18648]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18618 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18618]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19189 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19189]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19188 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19188]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18617 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18693 = mem[_18617]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19071 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19187 = mem[_19071]
                                _19359 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19359] = 30
                                mem[_19359 + 32] = 'SafeMath: subtraction overflow'
                                if _18693 > _19187:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19187 - _18693)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20436 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20436]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20435 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20435]
            else:
                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                mem[mem[64] + 68] = arg9
                if arg1:
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18369]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18657 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18657]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18656 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18656]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18624 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18624]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19202 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19202]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19201 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19201]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18623 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18699 = mem[_18623]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19084 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19200 = mem[_19084]
                                _19374 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19374] = 30
                                mem[_19374 + 32] = 'SafeMath: subtraction overflow'
                                if _18699 > _19200:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19200 - _18699)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20444 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20444]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20443 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20443]
                    else:
                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                        mem[mem[64] + 68] = arg9
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18589]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19206 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19206]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19205 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19205]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19149 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19149]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20042 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20042]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20041 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20041]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19148 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19298 = mem[_19148]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19928 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20040 = mem[_19928]
                                    _20266 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20266] = 30
                                    mem[_20266 + 32] = 'SafeMath: subtraction overflow'
                                    if _19298 > _20040:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20040 - _19298)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21234 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21234]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21233 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21233]
                        else:
                            mem[mem[64] + 100] = 0
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18588 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18588]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19204 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19204]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19203 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19203]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19147 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19147]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20039 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20039]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20038 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20038]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19146 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19296 = mem[_19146]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19925 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20037 = mem[_19925]
                                    _20263 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20263] = 30
                                    mem[_20263 + 32] = 'SafeMath: subtraction overflow'
                                    if _19296 > _20037:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20037 - _19296)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21232 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21232]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21231 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21231]
                else:
                    mem[mem[64] + 100] = 0
                    require ext_code.size(address(arg2))
                    call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18368]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18653 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18653]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18652 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18652]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18622 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18622]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19195 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19195]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19194 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19194]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18621 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18697 = mem[_18621]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19077 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19193 = mem[_19077]
                                _19365 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19365] = 30
                                mem[_19365 + 32] = 'SafeMath: subtraction overflow'
                                if _18697 > _19193:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19193 - _18697)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20440 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20440]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20439 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20439]
                    else:
                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                        mem[mem[64] + 68] = arg9
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18585 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18585]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19199 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19199]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19198 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19198]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19145 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19145]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20034 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20034]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20033 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20033]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19144 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19294 = mem[_19144]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19922 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20032 = mem[_19922]
                                    _20258 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20258] = 30
                                    mem[_20258 + 32] = 'SafeMath: subtraction overflow'
                                    if _19294 > _20032:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20032 - _19294)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21230 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21230]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21229 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21229]
                        else:
                            mem[mem[64] + 100] = 0
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18584 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18584]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19197 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19197]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19196 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19196]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19143 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19143]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20031 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20031]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20030 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20030]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19142 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19292 = mem[_19142]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19919 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20029 = mem[_19919]
                                    _20255 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20255] = 30
                                    mem[_20255 + 32] = 'SafeMath: subtraction overflow'
                                    if _19292 > _20029:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20029 - _19292)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21228 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21228]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21227 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21227]
        else:
            if arg1:
                mem[mem[64] + 4] = address(arg5)
                mem[mem[64] + 36] = address(arg6)
                mem[mem[64] + 68] = arg3 % 16777216
                mem[mem[64] + 100] = arg9
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_41e9bd95Address)
                call sub_41e9bd95Address.quoteExactInputSingle(address rg1, address rg2, uint24 rg3, uint256 rg4, uint160 rg5) with:
                     gas gas_remaining wei
                    args address(arg5), address(arg6), arg3 << 232, arg9, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if arg4 != 3:
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18358]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18666 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18666]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18665 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18665]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18628 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18628]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19224 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19224]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19223 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19223]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18627 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18705 = mem[_18627]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19091 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19222 = mem[_19091]
                                _19398 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19398] = 30
                                mem[_19398 + 32] = 'SafeMath: subtraction overflow'
                                if _18705 > _19222:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19222 - _18705)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20457 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20457]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20456 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20456]
                    else:
                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                        mem[mem[64] + 68] = arg9
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18595]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19228 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19228]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19227 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19227]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19158 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19158]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20076 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20076]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20075 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20075]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19157 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19317 = mem[_19157]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19934 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20074 = mem[_19934]
                                    _20301 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20301] = 30
                                    mem[_20301 + 32] = 'SafeMath: subtraction overflow'
                                    if _19317 > _20074:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20074 - _19317)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21244 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21244]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21243 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21243]
                        else:
                            mem[mem[64] + 100] = 0
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18594]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19226 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19226]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19225 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19225]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19156 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19156]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20073 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20073]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20072 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20072]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19155 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19315 = mem[_19155]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19931 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20071 = mem[_19931]
                                    _20298 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20298] = 30
                                    mem[_20298 + 32] = 'SafeMath: subtraction overflow'
                                    if _19315 > _20071:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20071 - _19315)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21242 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21242]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21241 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21241]
                else:
                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                    mem[mem[64] + 68] = arg9
                    if arg1:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18554 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 4:
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18554]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19234 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19234]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19233 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19233]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19162 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19162]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20086 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20086]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20085 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20085]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19161 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19321 = mem[_19161]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19944 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20084 = mem[_19944]
                                    _20313 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20313] = 30
                                    mem[_20313 + 32] = 'SafeMath: subtraction overflow'
                                    if _19321 > _20084:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20084 - _19321)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21250 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21250]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21249 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21249]
                        else:
                            mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19105 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19105]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20090 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20090]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20089 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20089]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20002 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20002]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20958 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20958]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20957 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20957]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20001 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20202 = mem[_20001]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20840 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20956 = mem[_20840]
                                        _21148 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21148] = 30
                                        mem[_21148 + 32] = 'SafeMath: subtraction overflow'
                                        if _20202 > _20956:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_20956 - _20202)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21702 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21702]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21701 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21701]
                            else:
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19104 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19104]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20088 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20088]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20087 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20087]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20000 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20000]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20955 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20955]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20954 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20954]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19999 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20200 = mem[_19999]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20837 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20953 = mem[_20837]
                                        _21145 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21145] = 30
                                        mem[_21145 + 32] = 'SafeMath: subtraction overflow'
                                        if _20200 > _20953:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_20953 - _20200)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21700 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21700]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21699 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21699]
                    else:
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(arg2))
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18553 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 4:
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18553]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19230 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19230]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19229 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19229]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19160 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19160]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20079 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20079]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20078 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20078]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19159 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19319 = mem[_19159]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19937 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20077 = mem[_19937]
                                    _20304 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20304] = 30
                                    mem[_20304 + 32] = 'SafeMath: subtraction overflow'
                                    if _19319 > _20077:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20077 - _19319)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21246 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21246]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21245 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21245]
                        else:
                            mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19101 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19101]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20083 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20083]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20082 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20082]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19998 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_19998]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20950 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20950]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20949 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20949]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19997 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20198 = mem[_19997]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20834 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20948 = mem[_20834]
                                        _21140 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21140] = 30
                                        mem[_21140 + 32] = 'SafeMath: subtraction overflow'
                                        if _20198 > _20948:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_20948 - _20198)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21698 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21698]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21697 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21697]
                            else:
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19100 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19100]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20081 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20081]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20080 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20080]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19996 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_19996]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20947 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20947]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20946 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20946]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19995 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20196 = mem[_19995]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20831 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20945 = mem[_20831]
                                        _21137 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21137] = 30
                                        mem[_21137 + 32] = 'SafeMath: subtraction overflow'
                                        if _20196 > _20945:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_20945 - _20196)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21696 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21696]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21695 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21695]
            else:
                _18331 = mem[64]
                mem[64] = mem[64] + 256
                mem[_18331] = 0
                mem[_18331 + 32] = 0
                mem[_18331 + 64] = 0
                mem[_18331 + 96] = 0
                mem[_18331 + 128] = 0
                mem[_18331 + 160] = 0
                mem[_18331 + 192] = 0
                mem[_18331 + 224] = 0
                _18337 = mem[64]
                mem[64] = mem[64] + 256
                mem[_18337] = address(arg5)
                mem[_18337 + 32] = address(arg6)
                mem[_18337 + 64] = arg3 % 16777216
                mem[_18337 + 96] = this.address
                if block.timestamp + 100 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_18337 + 128] = block.timestamp + 100
                mem[_18337 + 160] = arg9
                mem[_18337 + 192] = 0
                mem[_18337 + 224] = 0
                mem[mem[64] + 4] = address(arg5)
                mem[mem[64] + 36] = address(arg6)
                mem[mem[64] + 68] = arg3 % 16777216
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 100
                mem[mem[64] + 164] = arg9
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                require ext_code.size(address(arg2))
                call address(arg2).exactInputSingle(address rg1, address rg2, uint24 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint160 rg8) with:
                     gas gas_remaining wei
                    args address(arg5), address(arg6), arg3 << 232, address(this.address), block.timestamp + 100, arg9, 0, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if arg4 != 3:
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18425]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18796 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18796]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18795 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18795]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18781 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18781]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19547 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19547]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19546 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19546]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18780 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18808 = mem[_18780]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19469 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19545 = mem[_19469]
                                _19641 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19641] = 30
                                mem[_19641 + 32] = 'SafeMath: subtraction overflow'
                                if _18808 > _19545:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19545 - _18808)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20752 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20752]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20751 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20751]
                    else:
                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                        mem[mem[64] + 68] = arg9
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18770 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18770]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19551 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19551]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19550 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19550]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19512 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19512]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20504 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20504]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20503 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20503]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19511 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19587 = mem[_19511]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20398 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20502 = mem[_20398]
                                    _20620 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20620] = 30
                                    mem[_20620 + 32] = 'SafeMath: subtraction overflow'
                                    if _19587 > _20502:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20502 - _19587)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21446 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21446]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21445 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21445]
                        else:
                            mem[mem[64] + 100] = 0
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18769 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18769]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19549 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19549]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19548 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19548]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19510 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19510]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20501 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20501]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20500 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20500]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19509 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19585 = mem[_19509]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20395 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20499 = mem[_20395]
                                    _20617 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20617] = 30
                                    mem[_20617 + 32] = 'SafeMath: subtraction overflow'
                                    if _19585 > _20499:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20499 - _19585)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21444 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21444]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21443 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21443]
                else:
                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                    mem[mem[64] + 68] = arg9
                    if arg1:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 4:
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18740]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19557 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19557]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19556 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19556]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19516 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19516]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20514 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20514]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20513 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20513]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19515 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19591 = mem[_19515]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20408 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20512 = mem[_20408]
                                    _20632 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20632] = 30
                                    mem[_20632 + 32] = 'SafeMath: subtraction overflow'
                                    if _19591 > _20512:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20512 - _19591)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21452 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21452]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21451 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21451]
                        else:
                            mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19483 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19483]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20518 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20518]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20517 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20517]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20455 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20455]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21298 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21298]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21297 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21297]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20454 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20562 = mem[_20454]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21212 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _21296 = mem[_21212]
                                        _21404 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21404] = 30
                                        mem[_21404 + 32] = 'SafeMath: subtraction overflow'
                                        if _20562 > _21296:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_21296 - _20562)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21818 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21818]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21817 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21817]
                            else:
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19482 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19482]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20516 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20516]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20515 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20515]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20453 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20453]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21295 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21295]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21294 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21294]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20452 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20560 = mem[_20452]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21209 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _21293 = mem[_21209]
                                        _21401 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21401] = 30
                                        mem[_21401 + 32] = 'SafeMath: subtraction overflow'
                                        if _20560 > _21293:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_21293 - _20560)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21816 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21816]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21815 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21815]
                    else:
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(arg2))
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18739 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 4:
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18739]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19553 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19553]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19552 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19552]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19514 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19514]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20507 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20507]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20506 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20506]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19513 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19589 = mem[_19513]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20401 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20505 = mem[_20401]
                                    _20623 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20623] = 30
                                    mem[_20623 + 32] = 'SafeMath: subtraction overflow'
                                    if _19589 > _20505:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20505 - _19589)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21448 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21448]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21447 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21447]
                        else:
                            mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19479 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19479]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20511 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20511]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20510 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20510]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20451 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20451]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21290 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21290]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21289 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21289]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20450 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20558 = mem[_20450]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21206 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _21288 = mem[_21206]
                                        _21396 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21396] = 30
                                        mem[_21396 + 32] = 'SafeMath: subtraction overflow'
                                        if _20558 > _21288:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_21288 - _20558)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21814 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21814]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21813 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21813]
                            else:
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19478 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19478]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20509 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20509]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20508 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20508]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20449 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20449]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21287 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21287]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21286 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21286]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20448 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20556 = mem[_20448]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21203 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _21285 = mem[_21203]
                                        _21393 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21393] = 30
                                        mem[_21393 + 32] = 'SafeMath: subtraction overflow'
                                        if _20556 > _21285:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_21285 - _20556)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21812 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21812]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21811 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21811]
    else:
        mem[100] = address(arg2)
        mem[132] = arg9
        require ext_code.size(address(arg5))
        call address(arg5).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), arg9
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg4 != 1:
            if arg4 != 2:
                if arg4 != 3:
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                return 0
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 6 == arg4:
                                    require ext_code.size(address(arg2))
                                    if not arg1:
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                    else:
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return 0
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        else:
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 != 5:
                            if 6 == arg4:
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 6 == arg4:
                                    require ext_code.size(address(arg2))
                                    if not arg1:
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                    else:
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return 0
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 4 == arg4:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        else:
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if arg4 != 5:
                        if 6 == arg4:
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 6 == arg4:
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg4 != 6:
                                return 0
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if arg1:
                    require ext_code.size(sub_41e9bd95Address)
                    call sub_41e9bd95Address.quoteExactInputSingle(address rg1, address rg2, uint24 rg3, uint256 rg4, uint160 rg5) with:
                         gas gas_remaining wei
                        args address(arg5), address(arg6), arg3 << 232, arg9, 0
                else:
                    if block.timestamp + 100 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(arg2))
                    call address(arg2).exactInputSingle(address rg1, address rg2, uint24 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint160 rg8) with:
                         gas gas_remaining wei
                        args address(arg5), address(arg6), arg3 << 232, address(this.address), block.timestamp + 100, arg9, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 3 == arg4:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if 4 == arg4:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if arg4 != 5:
                    if 6 == arg4:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).0x8dae7333 with:
                                 gas gas_remaining wei
                                args arg9, 0, 96, 0
                        else:
                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if arg1:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 6 == arg4:
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require ext_code.size(address(arg6))
                        staticcall address(arg6).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(arg2))
                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg6))
                        staticcall address(arg6).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg4 != 6:
                            return 0
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).0x8dae7333 with:
                                 gas gas_remaining wei
                                args arg9, 0, 96, 0
                        else:
                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            return ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg5)
        mem[ceil32(return_data.size) + 160] = address(arg6)
        if not arg1:
            mem[ceil32(return_data.size) + 196] = this.address
            require ext_code.size(address(arg6))
            staticcall address(arg6).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp + 100 < block.timestamp:
                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 27
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeMath: addition overflow'
                revert with memory
                  from (2 * ceil32(return_data.size)) + 192
                   len ceil32(return_data.size) + 100
            mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg9
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 100
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg9, 0, 160, address(this.address), block.timestamp + 100, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg6))
            staticcall address(arg6).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg4 != 2:
                if arg4 != 3:
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                return 0
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 6 == arg4:
                                    require ext_code.size(address(arg2))
                                    if not arg1:
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                    else:
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return 0
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        else:
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg4 != 5:
                            if 6 == arg4:
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 6 == arg4:
                                    require ext_code.size(address(arg2))
                                    if not arg1:
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                    else:
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return 0
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                else:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 4 == arg4:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        else:
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    if arg4 != 5:
                        if 6 == arg4:
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 6 == arg4:
                                require ext_code.size(address(arg2))
                                if not arg1:
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                else:
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg4 != 6:
                                return 0
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
            else:
                if arg1:
                    require ext_code.size(sub_41e9bd95Address)
                    call sub_41e9bd95Address.quoteExactInputSingle(address rg1, address rg2, uint24 rg3, uint256 rg4, uint160 rg5) with:
                         gas gas_remaining wei
                        args address(arg5), address(arg6), arg3 << 232, arg9, 0
                else:
                    if block.timestamp + 100 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(address(arg2))
                    call address(arg2).exactInputSingle(address rg1, address rg2, uint24 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint160 rg8) with:
                         gas gas_remaining wei
                        args address(arg5), address(arg6), arg3 << 232, address(this.address), block.timestamp + 100, arg9, 0, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 3 == arg4:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if 4 == arg4:
                    require ext_code.size(address(arg2))
                    if not arg1:
                        call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    else:
                        staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if arg4 != 5:
                    if 6 == arg4:
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).0x8dae7333 with:
                                 gas gas_remaining wei
                                args arg9, 0, 96, 0
                        else:
                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if arg1:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 6 == arg4:
                            require ext_code.size(address(arg2))
                            if not arg1:
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                            else:
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require ext_code.size(address(arg6))
                        staticcall address(arg6).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(arg2))
                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(arg6))
                        staticcall address(arg6).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg4 != 6:
                            return 0
                        require ext_code.size(address(arg2))
                        if not arg1:
                            call address(arg2).0x8dae7333 with:
                                 gas gas_remaining wei
                                args arg9, 0, 96, 0
                        else:
                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                    gas gas_remaining wei
                                   args arg9
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            return ext_call.return_data[0]
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg9
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg9, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _10980 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg9) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg9) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg9) >> 32 + 223
        _10984 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg9) >> 32 + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg9) >> 32 + 192] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg9) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg9) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg9) >> 32 + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg9) >> 32 + 192]
        require return_data.size >= _10980 + (32 * _10984) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _10984] = mem[ceil32(return_data.size) + _10980 + 224 len 32 * _10984]
        require _10984 - 1 < _10984
        if arg4 != 2:
            if arg4 != 3:
                if arg4 != 4:
                    if arg4 != 5:
                        if arg4 != 6:
                            mem[mem[64]] = mem[(32 * _10984 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            mem[mem[64] + 4] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18420 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64]] = mem[_18420]
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18419 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64]] = mem[_18419]
                    else:
                        if arg1:
                            mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18411]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18671 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18671]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18670 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18670]
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18410 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18426 = mem[_18410]
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = 0
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(arg6))
                            staticcall address(arg6).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _18669 = mem[_18596]
                            _18744 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_18744] = 30
                            mem[_18744 + 32] = 'SafeMath: subtraction overflow'
                            if _18426 > _18669:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg4 != 6:
                                return (_18669 - _18426)
                            mem[mem[64] + 4] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                        gas gas_remaining wei
                                       args arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19523 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64]] = mem[_19523]
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 96
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).0x8dae7333 with:
                                     gas gas_remaining wei
                                    args arg9, 0, 96, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19522 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                mem[mem[64]] = mem[_19522]
                else:
                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                    mem[mem[64] + 68] = arg9
                    if arg1:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18394 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18394]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18675 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18675]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18674 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18674]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18634 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18634]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19244 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19244]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19243 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19243]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18633 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18709 = mem[_18633]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19109 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19242 = mem[_19109]
                                _19418 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19418] = 30
                                mem[_19418 + 32] = 'SafeMath: subtraction overflow'
                                if _18709 > _19242:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19242 - _18709)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20469 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20469]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20468 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20468]
                    else:
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(arg2))
                        call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18393]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18673 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18673]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18672 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18672]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18632 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18632]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19241 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19241]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19240 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19240]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18631 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18707 = mem[_18631]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19106 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19239 = mem[_19106]
                                _19415 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19415] = 30
                                mem[_19415 + 32] = 'SafeMath: subtraction overflow'
                                if _18707 > _19239:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19239 - _18707)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20467 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20467]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20466 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20466]
            else:
                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                mem[mem[64] + 68] = arg9
                if arg1:
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18375]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18681 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18681]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18680 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18680]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18638 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18638]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19254 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19254]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19253 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19253]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18637 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18713 = mem[_18637]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19119 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19252 = mem[_19119]
                                _19430 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19430] = 30
                                mem[_19430 + 32] = 'SafeMath: subtraction overflow'
                                if _18713 > _19252:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19252 - _18713)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20475 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20475]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20474 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20474]
                    else:
                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                        mem[mem[64] + 68] = arg9
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18610 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18610]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19258 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19258]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19257 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19257]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19171 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19171]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20110 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20110]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20109 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20109]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19170 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19332 = mem[_19170]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19960 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20108 = mem[_19960]
                                    _20339 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20339] = 30
                                    mem[_20339 + 32] = 'SafeMath: subtraction overflow'
                                    if _19332 > _20108:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20108 - _19332)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21260 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21260]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21259 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21259]
                        else:
                            mem[mem[64] + 100] = 0
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18609 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18609]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19256 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19256]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19255 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19255]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19169 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19169]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20107 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20107]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20106 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20106]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19168 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19330 = mem[_19168]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19957 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20105 = mem[_19957]
                                    _20336 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20336] = 30
                                    mem[_20336 + 32] = 'SafeMath: subtraction overflow'
                                    if _19330 > _20105:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20105 - _19330)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21258 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21258]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21257 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21257]
                else:
                    mem[mem[64] + 100] = 0
                    require ext_code.size(address(arg2))
                    call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _18374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18374]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18677 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18677]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18676 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18676]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18636 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18636]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19247 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19247]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19246 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19246]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18635 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18711 = mem[_18635]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19112 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19245 = mem[_19112]
                                _19421 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19421] = 30
                                mem[_19421 + 32] = 'SafeMath: subtraction overflow'
                                if _18711 > _19245:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19245 - _18711)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20471 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20471]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20470 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20470]
                    else:
                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                        mem[mem[64] + 68] = arg9
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18606 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18606]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19251 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19251]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19250 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19250]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19167 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19167]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20102 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20102]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20101 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20101]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19166 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19328 = mem[_19166]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19954 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20100 = mem[_19954]
                                    _20331 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20331] = 30
                                    mem[_20331 + 32] = 'SafeMath: subtraction overflow'
                                    if _19328 > _20100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20100 - _19328)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21256 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21256]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21255 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21255]
                        else:
                            mem[mem[64] + 100] = 0
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18605 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18605]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19249 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19249]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19248 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19248]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19165 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19165]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20099 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20099]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20098 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20098]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19164 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19326 = mem[_19164]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19951 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20097 = mem[_19951]
                                    _20328 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20328] = 30
                                    mem[_20328 + 32] = 'SafeMath: subtraction overflow'
                                    if _19326 > _20097:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20097 - _19326)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21254 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21254]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21253 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21253]
        else:
            if arg1:
                mem[mem[64] + 4] = address(arg5)
                mem[mem[64] + 36] = address(arg6)
                mem[mem[64] + 68] = arg3 % 16777216
                mem[mem[64] + 100] = arg9
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_41e9bd95Address)
                call sub_41e9bd95Address.quoteExactInputSingle(address rg1, address rg2, uint24 rg3, uint256 rg4, uint160 rg5) with:
                     gas gas_remaining wei
                    args address(arg5), address(arg6), arg3 << 232, arg9, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18364 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if arg4 != 3:
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18364]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18690 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18690]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18689 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18689]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18642 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18642]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19276 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19276]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19275 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19275]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18641 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18719 = mem[_18641]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19126 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19274 = mem[_19126]
                                _19454 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19454] = 30
                                mem[_19454 + 32] = 'SafeMath: subtraction overflow'
                                if _18719 > _19274:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19274 - _18719)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20488 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20488]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20487 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20487]
                    else:
                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                        mem[mem[64] + 68] = arg9
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18616 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18616]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19280 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19280]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19279 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19279]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19180 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19180]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20144 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20144]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20143 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20143]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19179 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19351 = mem[_19179]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19966 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20142 = mem[_19966]
                                    _20374 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20374] = 30
                                    mem[_20374 + 32] = 'SafeMath: subtraction overflow'
                                    if _19351 > _20142:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20142 - _19351)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21270 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21270]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21269 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21269]
                        else:
                            mem[mem[64] + 100] = 0
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18615 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18615]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19278 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19278]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19277 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19277]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19178 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19178]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20141 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20141]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20140 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20140]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19177 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19349 = mem[_19177]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19963 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20139 = mem[_19963]
                                    _20371 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20371] = 30
                                    mem[_20371 + 32] = 'SafeMath: subtraction overflow'
                                    if _19349 > _20139:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20139 - _19349)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21268 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21268]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21267 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21267]
                else:
                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                    mem[mem[64] + 68] = arg9
                    if arg1:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 4:
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18574]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19286 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19286]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19285 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19285]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19184 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19184]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20154 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20154]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20153 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20153]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19183 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19355 = mem[_19183]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19976 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20152 = mem[_19976]
                                    _20386 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20386] = 30
                                    mem[_20386 + 32] = 'SafeMath: subtraction overflow'
                                    if _19355 > _20152:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20152 - _19355)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21276 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21276]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21275 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21275]
                        else:
                            mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19140 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19140]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20158 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20158]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20157 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20157]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20022 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20022]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21006 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21006]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21005 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21005]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20021 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20247 = mem[_20021]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20852 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _21004 = mem[_20852]
                                        _21200 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21200] = 30
                                        mem[_21200 + 32] = 'SafeMath: subtraction overflow'
                                        if _20247 > _21004:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_21004 - _20247)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21722 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21722]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21721 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21721]
                            else:
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19139 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19139]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20156 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20156]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20155 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20155]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20020 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20020]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21003 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21003]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21002 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21002]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20019 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20245 = mem[_20019]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20849 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _21001 = mem[_20849]
                                        _21197 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21197] = 30
                                        mem[_21197 + 32] = 'SafeMath: subtraction overflow'
                                        if _20245 > _21001:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_21001 - _20245)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21720 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21720]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21719 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21719]
                    else:
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(arg2))
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18573 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 4:
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18573]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19282 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19282]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19281 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19281]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19182 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19182]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20147 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20147]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20146 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20146]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19181 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19353 = mem[_19181]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19969 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20145 = mem[_19969]
                                    _20377 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20377] = 30
                                    mem[_20377 + 32] = 'SafeMath: subtraction overflow'
                                    if _19353 > _20145:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20145 - _19353)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21272 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21272]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21271 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21271]
                        else:
                            mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19136 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19136]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20151 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20151]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20150 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20150]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20018 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20018]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20998 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20998]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20997 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20997]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20017 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20243 = mem[_20017]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20846 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20996 = mem[_20846]
                                        _21192 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21192] = 30
                                        mem[_21192 + 32] = 'SafeMath: subtraction overflow'
                                        if _20243 > _20996:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_20996 - _20243)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21718 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21718]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21717 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21717]
                            else:
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19135 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19135]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20149 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20149]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20148 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20148]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20016 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20016]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20995 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20995]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _20994 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_20994]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20015 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20241 = mem[_20015]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20843 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20993 = mem[_20843]
                                        _21189 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21189] = 30
                                        mem[_21189 + 32] = 'SafeMath: subtraction overflow'
                                        if _20241 > _20993:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_20993 - _20241)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21716 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21716]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21715 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21715]
            else:
                _18334 = mem[64]
                mem[64] = mem[64] + 256
                mem[_18334] = 0
                mem[_18334 + 32] = 0
                mem[_18334 + 64] = 0
                mem[_18334 + 96] = 0
                mem[_18334 + 128] = 0
                mem[_18334 + 160] = 0
                mem[_18334 + 192] = 0
                mem[_18334 + 224] = 0
                _18341 = mem[64]
                mem[64] = mem[64] + 256
                mem[_18341] = address(arg5)
                mem[_18341 + 32] = address(arg6)
                mem[_18341 + 64] = arg3 % 16777216
                mem[_18341 + 96] = this.address
                if block.timestamp + 100 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_18341 + 128] = block.timestamp + 100
                mem[_18341 + 160] = arg9
                mem[_18341 + 192] = 0
                mem[_18341 + 224] = 0
                mem[mem[64] + 4] = address(arg5)
                mem[mem[64] + 36] = address(arg6)
                mem[mem[64] + 68] = arg3 % 16777216
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 100
                mem[mem[64] + 164] = arg9
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                require ext_code.size(address(arg2))
                call address(arg2).exactInputSingle(address rg1, address rg2, uint24 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint160 rg8) with:
                     gas gas_remaining wei
                    args address(arg5), address(arg6), arg3 << 232, address(this.address), block.timestamp + 100, arg9, 0, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _18428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if arg4 != 3:
                    if arg4 != 4:
                        if arg4 != 5:
                            if arg4 != 6:
                                mem[mem[64]] = mem[_18428]
                            else:
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18800 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18800]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _18799 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_18799]
                        else:
                            if arg1:
                                mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18791 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18791]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19562 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19562]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19561 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19561]
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _18790 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _18820 = mem[_18790]
                                mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                mem[mem[64] + 68] = arg9
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(arg6))
                                staticcall address(arg6).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19484 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _19560 = mem[_19484]
                                _19702 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19702] = 30
                                mem[_19702 + 32] = 'SafeMath: subtraction overflow'
                                if _18820 > _19560:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if arg4 != 6:
                                    return (_19560 - _18820)
                                mem[mem[64] + 4] = arg9
                                if arg1:
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                            gas gas_remaining wei
                                           args arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20798 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20798]
                                else:
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = 96
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).0x8dae7333 with:
                                         gas gas_remaining wei
                                        args arg9, 0, 96, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20797 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    mem[mem[64]] = mem[_20797]
                    else:
                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                        mem[mem[64] + 68] = arg9
                        if arg1:
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18774 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18774]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19566 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19566]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19565 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19565]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19535 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19535]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20526 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20526]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20525 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20525]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19534 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19610 = mem[_19534]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20418 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20524 = mem[_20418]
                                    _20674 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20674] = 30
                                    mem[_20674 + 32] = 'SafeMath: subtraction overflow'
                                    if _19610 > _20524:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20524 - _19610)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21470 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21470]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21469 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21469]
                        else:
                            mem[mem[64] + 100] = 0
                            require ext_code.size(address(arg2))
                            call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18773 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18773]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19564 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19564]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19563 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19563]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19533 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19533]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20523 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20523]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20522 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20522]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19532 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19608 = mem[_19532]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20415 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20521 = mem[_20415]
                                    _20671 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20671] = 30
                                    mem[_20671 + 32] = 'SafeMath: subtraction overflow'
                                    if _19608 > _20521:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20521 - _19608)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21468 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21468]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21467 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21467]
                else:
                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                    mem[mem[64] + 68] = arg9
                    if arg1:
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).get_dy_underlying(int128 rg1, int128 rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18763 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 4:
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18763]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19572 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19572]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19571 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19571]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19539 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19539]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20536 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20536]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20535 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20535]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19538 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19614 = mem[_19538]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20428 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20534 = mem[_20428]
                                    _20686 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20686] = 30
                                    mem[_20686 + 32] = 'SafeMath: subtraction overflow'
                                    if _19614 > _20534:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20534 - _19614)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21476 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21476]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21475 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21475]
                        else:
                            mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19498 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19498]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20540 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20540]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20539 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20539]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20486 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20486]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21318 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21318]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21317 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21317]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20485 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20595 = mem[_20485]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21224 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _21316 = mem[_21224]
                                        _21432 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21432] = 30
                                        mem[_21432 + 32] = 'SafeMath: subtraction overflow'
                                        if _20595 > _21316:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_21316 - _20595)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21826 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21826]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21825 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21825]
                            else:
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19497 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19497]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20538 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20538]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20537 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20537]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20484 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20484]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21315 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21315]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21314 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21314]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20483 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20593 = mem[_20483]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21221 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _21313 = mem[_21221]
                                        _21429 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21429] = 30
                                        mem[_21429 + 32] = 'SafeMath: subtraction overflow'
                                        if _20593 > _21313:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_21313 - _20593)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21824 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21824]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21823 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21823]
                    else:
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(arg2))
                        call address(arg2).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _18762 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if arg4 != 4:
                            if arg4 != 5:
                                if arg4 != 6:
                                    mem[mem[64]] = mem[_18762]
                                else:
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19568 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19568]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _19567 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_19567]
                            else:
                                if arg1:
                                    mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    require ext_code.size(address(arg2))
                                    staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19537 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19537]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20529 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20529]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20528 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20528]
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19536 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _19612 = mem[_19536]
                                    mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                    mem[mem[64] + 68] = arg9
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(arg2))
                                    call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(arg6))
                                    staticcall address(arg6).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _20421 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _20527 = mem[_20421]
                                    _20677 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_20677] = 30
                                    mem[_20677 + 32] = 'SafeMath: subtraction overflow'
                                    if _19612 > _20527:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg4 != 6:
                                        return (_20527 - _19612)
                                    mem[mem[64] + 4] = arg9
                                    if arg1:
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                gas gas_remaining wei
                                               args arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21472 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21472]
                                    else:
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = 96
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).0x8dae7333 with:
                                             gas gas_remaining wei
                                            args arg9, 0, 96, 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21471 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        mem[mem[64]] = mem[_21471]
                        else:
                            mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                            mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                            mem[mem[64] + 68] = arg9
                            if arg1:
                                require ext_code.size(address(arg2))
                                staticcall address(arg2).get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19494 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19494]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20533 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20533]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20532 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20532]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20482 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20482]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21310 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21310]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21309 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21309]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20481 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20591 = mem[_20481]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21218 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _21308 = mem[_21218]
                                        _21424 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21424] = 30
                                        mem[_21424 + 32] = 'SafeMath: subtraction overflow'
                                        if _20591 > _21308:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_21308 - _20591)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21822 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21822]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21821 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21821]
                            else:
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(arg2))
                                call address(arg2).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19493 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if arg4 != 5:
                                    if arg4 != 6:
                                        mem[mem[64]] = mem[_19493]
                                    else:
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20531 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20531]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _20530 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_20530]
                                else:
                                    if arg1:
                                        mem[mem[64] + 4] = ('signextend', 15, ('param', 'arg7'))
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        require ext_code.size(address(arg2))
                                        staticcall address(arg2).get_dy(uint256 rg1, uint256 rg2, uint256 rg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20480 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if arg4 != 6:
                                            mem[mem[64]] = mem[_20480]
                                        else:
                                            mem[mem[64] + 4] = arg9
                                            if arg1:
                                                require ext_code.size(address(arg2))
                                                staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                        gas gas_remaining wei
                                                       args arg9
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21307 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21307]
                                            else:
                                                mem[mem[64] + 36] = 0
                                                mem[mem[64] + 68] = 96
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).0x8dae7333 with:
                                                     gas gas_remaining wei
                                                    args arg9, 0, 96, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _21306 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                mem[mem[64]] = mem[_21306]
                                    else:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _20479 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _20589 = mem[_20479]
                                        mem[mem[64] + 36] = ('signextend', 15, ('param', 'arg8'))
                                        mem[mem[64] + 68] = arg9
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(arg2))
                                        call address(arg2).exchange(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), arg9, 0, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(arg6))
                                        staticcall address(arg6).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _21215 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _21305 = mem[_21215]
                                        _21421 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_21421] = 30
                                        mem[_21421 + 32] = 'SafeMath: subtraction overflow'
                                        if _20589 > _21305:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if arg4 != 6:
                                            return (_21305 - _20589)
                                        mem[mem[64] + 4] = arg9
                                        if arg1:
                                            require ext_code.size(address(arg2))
                                            staticcall address(arg2).querySellBaseToken(uint256 rg1) with:
                                                    gas gas_remaining wei
                                                   args arg9
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21820 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21820]
                                        else:
                                            mem[mem[64] + 36] = 0
                                            mem[mem[64] + 68] = 96
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).0x8dae7333 with:
                                                 gas gas_remaining wei
                                                args arg9, 0, 96, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _21819 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            mem[mem[64]] = mem[_21819]
    return memory
      from mem[64]
       len 32
}



}
