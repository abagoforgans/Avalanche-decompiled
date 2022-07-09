contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address sub_ac680cdfAddress;
address sub_9e1a8613Address;
address routerAddress;
uint256 stor5;
array of struct sub_e7e7c2d2;

function routerAddress() {
    return routerAddress
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function sub_9e1a8613(?) {
    return sub_9e1a8613Address
}

function sub_ac680cdf(?) {
    return sub_ac680cdfAddress
}

function sub_e7e7c2d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_e7e7c2d2.length
    return sub_e7e7c2d2[arg1].field_0
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

function sub_b9ea8671(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_9e1a8613Address)
    staticcall sub_9e1a8613Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_9e1a8613Address)
    call sub_9e1a8613Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3c2ce869(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9e1a8613Address)
    staticcall sub_9e1a8613Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_9e1a8613Address)
    call sub_9e1a8613Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function execute() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_9e1a8613Address)
    staticcall sub_9e1a8613Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = sub_e7e7c2d2.length
    if not sub_e7e7c2d2.length:
        mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 132] = ext_call.return_data[0] / 2
        mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 164] = 64
        mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 196] = sub_e7e7c2d2.length
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 228
        while idx < sub_e7e7c2d2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 132 len (96 * sub_e7e7c2d2.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 128
        require return_data.size >= 32
        _41 = mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159 < ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + return_data.size + 128
        _42 = mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
        if mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + floor32(mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + floor32(mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 128] = _42
        require _41 + (32 * _42) + 32 <= return_data.size
        idx = ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + _41 + 160
        s = (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 160
        while idx < ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + _41 + (32 * _42) + 160:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _42 < 1:
            revert with 'NH{q', 17
        if _42 - 1 >= _42:
            revert with 'NH{q', 50
        _71 = mem[(32 * _42 - 1) + (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 160]
        if mem[(32 * _42 - 1) + (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 160] and stor5 > -1 / mem[(32 * _42 - 1) + (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 160]:
            revert with 'NH{q', 17
        _77 = mem[64]
        mem[mem[64]] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] / 2
        mem[mem[64] + 36] = _71 * stor5 / 1000
        mem[mem[64] + 68] = 160
        _79 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _79:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_77 + 100] = this.address
        mem[_77 + 132] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _77 + (32 * _79) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _130 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _132 = mem[_130]
        require mem[_130] <= test266151307()
        require _130 + mem[_130] + 31 < _130 + return_data.size
        _133 = mem[_130 + mem[_130]]
        if mem[_130 + mem[_130]] > test266151307():
            revert with 'NH{q', 65
        if _130 + ceil32(return_data.size) + floor32(mem[_130 + mem[_130]]) + 1 > test266151307() or floor32(mem[_130 + mem[_130]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _130 + ceil32(return_data.size) + floor32(mem[_130 + mem[_130]]) + 1
        mem[_130 + ceil32(return_data.size)] = _133
        require _132 + (32 * _133) + 32 <= return_data.size
        idx = _130 + _132 + 32
        s = _130 + ceil32(return_data.size) + 32
        while idx < _130 + _132 + (32 * _133) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_9e1a8613Address)
        staticcall sub_9e1a8613Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _181 = mem[_180]
        require mem[_180] == mem[_180]
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _187 = mem[_185]
        require mem[_185] == mem[_185]
        if _181 > 0:
            if eth.balance(this.address) > 0:
                if mem[_185] > 0:
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = msg.sender
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args tokenAddress, Mask(255, 1, _187), 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_201] == mem[_201]
                    require mem[_201 + 32] == mem[_201 + 32]
                    require mem[_201 + 64] == mem[_201 + 64]
                    mem[mem[64] + 68] = _187 / 2
                    mem[mem[64] + 100] = _181
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = msg.sender
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args tokenAddress, sub_9e1a8613Address, Mask(255, 1, _187), _181, 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _213 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_213] == mem[_213]
                    require mem[_213 + 32] == mem[_213 + 32]
                    require mem[_213 + 64] == mem[_213 + 64]
    else:
        mem[0] = 6
        mem[ceil32(return_data.size) + 128] = address(sub_e7e7c2d2.field_0)
        idx = ceil32(return_data.size) + 128
        s = 0
        while ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 96 > idx:
            mem[idx + 32] = sub_e7e7c2d2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 132] = ext_call.return_data[0] / 2
        mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 164] = 64
        mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 196] = sub_e7e7c2d2.length
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 228
        while idx < sub_e7e7c2d2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 132 len (96 * sub_e7e7c2d2.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 128
        require return_data.size >= 32
        _127 = mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 159 < ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + return_data.size + 128
        _128 = mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]
        if mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + floor32(mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + floor32(mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + mem[ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + 128 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 128]) + 129
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 128] = _128
        require _127 + (32 * _128) + 32 <= return_data.size
        idx = ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + _127 + 160
        s = (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 160
        while idx < ceil32(return_data.size) + (32 * sub_e7e7c2d2.length) + _127 + (32 * _128) + 160:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _128 < 1:
            revert with 'NH{q', 17
        if _128 - 1 >= _128:
            revert with 'NH{q', 50
        _178 = mem[(32 * _128 - 1) + (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 160]
        if mem[(32 * _128 - 1) + (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 160] and stor5 > -1 / mem[(32 * _128 - 1) + (2 * ceil32(return_data.size)) + (32 * sub_e7e7c2d2.length) + 160]:
            revert with 'NH{q', 17
        _183 = mem[64]
        mem[mem[64]] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] / 2
        mem[mem[64] + 36] = _178 * stor5 / 1000
        mem[mem[64] + 68] = 160
        _186 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _186:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_183 + 100] = this.address
        mem[_183 + 132] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _183 + (32 * _186) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _224 = mem[_223]
        require mem[_223] <= test266151307()
        require _223 + mem[_223] + 31 < _223 + return_data.size
        _225 = mem[_223 + mem[_223]]
        if mem[_223 + mem[_223]] > test266151307():
            revert with 'NH{q', 65
        if _223 + ceil32(return_data.size) + floor32(mem[_223 + mem[_223]]) + 1 > test266151307() or floor32(mem[_223 + mem[_223]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _223 + ceil32(return_data.size) + floor32(mem[_223 + mem[_223]]) + 1
        mem[_223 + ceil32(return_data.size)] = _225
        require _224 + (32 * _225) + 32 <= return_data.size
        idx = _223 + _224 + 32
        s = _223 + ceil32(return_data.size) + 32
        while idx < _223 + _224 + (32 * _225) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_9e1a8613Address)
        staticcall sub_9e1a8613Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _247 = mem[_246]
        require mem[_246] == mem[_246]
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _250 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _251 = mem[_250]
        require mem[_250] == mem[_250]
        if _247 > 0:
            if eth.balance(this.address) > 0:
                if mem[_250] > 0:
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = msg.sender
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args tokenAddress, Mask(255, 1, _251), 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_254] == mem[_254]
                    require mem[_254 + 32] == mem[_254 + 32]
                    require mem[_254 + 64] == mem[_254 + 64]
                    mem[mem[64] + 68] = _251 / 2
                    mem[mem[64] + 100] = _247
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = msg.sender
                    mem[mem[64] + 228] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args tokenAddress, sub_9e1a8613Address, Mask(255, 1, _251), _247, 0, 0, msg.sender, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_260] == mem[_260]
                    require mem[_260 + 32] == mem[_260 + 32]
                    require mem[_260 + 64] == mem[_260 + 64]
}



}
