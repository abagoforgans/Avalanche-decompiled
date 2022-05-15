contract main {




// =====================  Runtime code  =====================


address owner;
address USDTAddress;
address WAVAXAddress;
address sub_d2c96cb8Address;
address stor4;
uint256 stor5;
array of struct stor6;

function WAVAX() {
    return WAVAXAddress
}

function owner() {
    return owner
}

function USDT() {
    return USDTAddress
}

function sub_d2c96cb8(?) {
    return sub_d2c96cb8Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawETHLiquidity() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_8d60497f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(USDTAddress)
    staticcall USDTAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(USDTAddress)
    call USDTAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_d2c96cb8Address)
    staticcall sub_d2c96cb8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_d2c96cb8Address)
    call sub_d2c96cb8Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAll() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(USDTAddress)
    staticcall USDTAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(USDTAddress)
    call USDTAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_d2c96cb8Address)
    staticcall sub_d2c96cb8Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_d2c96cb8Address)
    call sub_d2c96cb8Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function AutoLiquidity() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(USDTAddress)
    staticcall USDTAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = stor6.length
    if not stor6.length:
        mem[ceil32(return_data.size) + (32 * stor6.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + (32 * stor6.length) + 132] = ext_call.return_data[0] / 2
        mem[ceil32(return_data.size) + (32 * stor6.length) + 164] = 64
        mem[ceil32(return_data.size) + (32 * stor6.length) + 196] = stor6.length
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + (32 * stor6.length) + 228
        while idx < stor6.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor4)
        staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(return_data.size) + (32 * stor6.length) + 132 len (96 * stor6.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * stor6.length) + 128
        require return_data.size >= 32
        _41 = mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159 < ceil32(return_data.size) + (32 * stor6.length) + return_data.size + 128
        _42 = mem[ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
        if mem[ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + (32 * stor6.length) + floor32(mem[ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * stor6.length) + floor32(mem[ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(2 * ceil32(return_data.size)) + (32 * stor6.length) + 128] = _42
        require _41 + (32 * _42) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + (32 * stor6.length) + _41 + 160
        t = (2 * ceil32(return_data.size)) + (32 * stor6.length) + 160
        while idx < _42:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _42 < 1:
            revert with 'NH{q', 17
        if _42 - 1 >= _42:
            revert with 'NH{q', 50
        if mem[(32 * _42 - 1) + (2 * ceil32(return_data.size)) + (32 * stor6.length) + 160] and stor5 > -1 / mem[(32 * _42 - 1) + (2 * ceil32(return_data.size)) + (32 * stor6.length) + 160]:
            revert with 'NH{q', 17
        _80 = mem[64]
        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] / 2
        mem[mem[64] + 36] = mem[(32 * _42 - 1) + (2 * ceil32(return_data.size)) + (32 * stor6.length) + 160] * stor5 / 1000
        mem[mem[64] + 68] = 160
        _82 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _82:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_80 + 100] = this.address
        mem[_80 + 132] = block.timestamp
        require ext_code.size(stor4)
        call stor4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _80 + (32 * _82) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _134 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _136 = mem[_134]
        require mem[_134] <= test266151307()
        require _134 + mem[_134] + 31 < _134 + return_data.size
        _137 = mem[_134 + mem[_134]]
        if mem[_134 + mem[_134]] > test266151307():
            revert with 'NH{q', 65
        if _134 + ceil32(return_data.size) + floor32(mem[_134 + mem[_134]]) + 1 > test266151307() or floor32(mem[_134 + mem[_134]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _134 + ceil32(return_data.size) + floor32(mem[_134 + mem[_134]]) + 1
        mem[_134 + ceil32(return_data.size)] = _137
        require _136 + (32 * _137) + 32 <= return_data.size
        idx = 0
        s = _134 + _136 + 32
        t = _134 + ceil32(return_data.size) + 32
        while idx < _137:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(USDTAddress)
        staticcall USDTAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _190 = mem[_189]
        require mem[_189] == mem[_189]
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_d2c96cb8Address)
        staticcall sub_d2c96cb8Address.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _194 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _196 = mem[_194]
        require mem[_194] == mem[_194]
        if _190 > 0:
            if eth.balance(this.address) > 0:
                if mem[_194] > 0:
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = msg.sender
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(stor4)
                    call stor4.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args sub_d2c96cb8Address, Mask(255, 1, _196), 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _208 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_208] == mem[_208]
                    require mem[_208 + 32] == mem[_208 + 32]
                    require mem[_208 + 64] == mem[_208 + 64]
                    mem[mem[64] + 68] = _196 / 2
                    mem[mem[64] + 100] = _190
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = msg.sender
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(stor4)
                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_d2c96cb8Address, USDTAddress, Mask(255, 1, _196), _190, 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_221] == mem[_221]
                    require mem[_221 + 32] == mem[_221 + 32]
                    require mem[_221 + 64] == mem[_221 + 64]
    else:
        mem[0] = 6
        mem[ceil32(return_data.size) + 128] = address(stor6.field_0)
        idx = ceil32(return_data.size) + 128
        s = 0
        while ceil32(return_data.size) + (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + (32 * stor6.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + (32 * stor6.length) + 132] = ext_call.return_data[0] / 2
        mem[ceil32(return_data.size) + (32 * stor6.length) + 164] = 64
        mem[ceil32(return_data.size) + (32 * stor6.length) + 196] = stor6.length
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + (32 * stor6.length) + 228
        while idx < stor6.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor4)
        staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(return_data.size) + (32 * stor6.length) + 132 len (96 * stor6.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * stor6.length) + 128
        require return_data.size >= 32
        _131 = mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159 < ceil32(return_data.size) + (32 * stor6.length) + return_data.size + 128
        _132 = mem[ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
        if mem[ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + (32 * stor6.length) + floor32(mem[ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * stor6.length) + floor32(mem[ceil32(return_data.size) + (32 * stor6.length) + mem[ceil32(return_data.size) + (32 * stor6.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(2 * ceil32(return_data.size)) + (32 * stor6.length) + 128] = _132
        require _131 + (32 * _132) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + (32 * stor6.length) + _131 + 160
        t = (2 * ceil32(return_data.size)) + (32 * stor6.length) + 160
        while idx < _132:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _132 < 1:
            revert with 'NH{q', 17
        if _132 - 1 >= _132:
            revert with 'NH{q', 50
        _187 = mem[(32 * _132 - 1) + (2 * ceil32(return_data.size)) + (32 * stor6.length) + 160]
        if mem[(32 * _132 - 1) + (2 * ceil32(return_data.size)) + (32 * stor6.length) + 160] and stor5 > -1 / mem[(32 * _132 - 1) + (2 * ceil32(return_data.size)) + (32 * stor6.length) + 160]:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] / 2
        mem[mem[64] + 36] = _187 * stor5 / 1000
        mem[mem[64] + 68] = 160
        _195 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _195:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(stor4)
        call stor4.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0]), _187 * stor5 / 1000, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _195) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _234 = mem[_233]
        require mem[_233] <= test266151307()
        require _233 + mem[_233] + 31 < _233 + return_data.size
        _235 = mem[_233 + mem[_233]]
        if mem[_233 + mem[_233]] > test266151307():
            revert with 'NH{q', 65
        if _233 + ceil32(return_data.size) + floor32(mem[_233 + mem[_233]]) + 1 > test266151307() or floor32(mem[_233 + mem[_233]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _233 + ceil32(return_data.size) + floor32(mem[_233 + mem[_233]]) + 1
        mem[_233 + ceil32(return_data.size)] = _235
        require _234 + (32 * _235) + 32 <= return_data.size
        idx = 0
        s = _233 + _234 + 32
        t = _233 + ceil32(return_data.size) + 32
        while idx < _235:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(USDTAddress)
        staticcall USDTAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _259 = mem[_258]
        require mem[_258] == mem[_258]
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_d2c96cb8Address)
        staticcall sub_d2c96cb8Address.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _262 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _263 = mem[_262]
        require mem[_262] == mem[_262]
        if _259 > 0:
            if eth.balance(this.address) > 0:
                if mem[_262] > 0:
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = msg.sender
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(stor4)
                    call stor4.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args sub_d2c96cb8Address, Mask(255, 1, _263), 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _266 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_266] == mem[_266]
                    require mem[_266 + 32] == mem[_266 + 32]
                    require mem[_266 + 64] == mem[_266 + 64]
                    mem[mem[64] + 68] = _263 / 2
                    mem[mem[64] + 100] = _259
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = msg.sender
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(stor4)
                    call stor4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args sub_d2c96cb8Address, USDTAddress, Mask(255, 1, _263), _259, 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _272 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_272] == mem[_272]
                    require mem[_272 + 32] == mem[_272 + 32]
                    require mem[_272 + 64] == mem[_272 + 64]
}



}
