contract main {




// =====================  Runtime code  =====================


address owner;
address sub_4085afe6Address;
mapping of uint8 stor2;

function sub_4085afe6(?) {
    return sub_4085afe6Address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5c263d78(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
}

function sub_8325aa1f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawFunds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c8b86e6d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'E 000'
    require ext_code.size(address(arg2))
    staticcall address(arg2).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'E 001'
}

function sub_8320bb6a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    mem[100] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'E 000'
    require ext_code.size(address(arg2))
    staticcall address(arg2).factory() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).WAVAX() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 100] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'E 001'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[18 len 14] > ext_call.return_data[50 len 14]:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0]) > -2:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= (ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[0])) + 1:
            revert with 0, 'E 002'
        mem[(10 * ceil32(return_data.size)) + 100] = address(arg2)
        mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(11 * ceil32(return_data.size)) + 100] = address(arg1)
        mem[(11 * ceil32(return_data.size)) + 132] = 1
        mem[(11 * ceil32(return_data.size)) + 164] = 0
        mem[(11 * ceil32(return_data.size)) + 196] = 0
        mem[(11 * ceil32(return_data.size)) + 228] = this.address
        mem[(11 * ceil32(return_data.size)) + 260] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg1), 1, 0, 0, address(this.address), block.timestamp
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg3:
            require ext_code.size(address(arg2))
            staticcall address(arg2).WAVAX() with:
                    gas gas_remaining wei
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(13 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'E 003'
            mem[(14 * ceil32(return_data.size)) + 100] = address(arg2)
            mem[(14 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(15 * ceil32(return_data.size)) + 128] = address(arg1)
            mem[(15 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(15 * ceil32(return_data.size)) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(15 * ceil32(return_data.size)) + 228] = 0
            mem[(15 * ceil32(return_data.size)) + 260] = 160
            mem[(15 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (15 * ceil32(return_data.size)) + 128
            t = (15 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(15 * ceil32(return_data.size)) + 292] = sub_4085afe6Address
            mem[(15 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, sub_4085afe6Address, block.timestamp, 2, mem[(15 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(15 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (16 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _121 = mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (15 * ceil32(return_data.size)) + return_data.size + 192
            _123 = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 'NH{q', 65
            if (16 * ceil32(return_data.size)) + floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(16 * ceil32(return_data.size)) + 192] = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            require _121 + (32 * _123) + 32 <= return_data.size
            idx = 0
            s = (15 * ceil32(return_data.size)) + _121 + 224
            t = (16 * ceil32(return_data.size)) + 224
            while idx < _123:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    else:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) > -2:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= (ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32])) + 1:
            revert with 0, 'E 002'
        mem[(10 * ceil32(return_data.size)) + 100] = address(arg2)
        mem[(10 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(11 * ceil32(return_data.size)) + 100] = address(arg1)
        mem[(11 * ceil32(return_data.size)) + 132] = 1
        mem[(11 * ceil32(return_data.size)) + 164] = 0
        mem[(11 * ceil32(return_data.size)) + 196] = 0
        mem[(11 * ceil32(return_data.size)) + 228] = this.address
        mem[(11 * ceil32(return_data.size)) + 260] = block.timestamp
        require ext_code.size(address(arg2))
        call address(arg2).removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(arg1), 1, 0, 0, address(this.address), block.timestamp
        mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg3:
            require ext_code.size(address(arg2))
            staticcall address(arg2).WAVAX() with:
                    gas gas_remaining wei
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(13 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'E 003'
            mem[(14 * ceil32(return_data.size)) + 100] = address(arg2)
            mem[(14 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(15 * ceil32(return_data.size)) + 128] = address(arg1)
            mem[(15 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
            mem[(15 * ceil32(return_data.size)) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[(15 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(15 * ceil32(return_data.size)) + 228] = 0
            mem[(15 * ceil32(return_data.size)) + 260] = 160
            mem[(15 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (15 * ceil32(return_data.size)) + 128
            t = (15 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(15 * ceil32(return_data.size)) + 292] = sub_4085afe6Address
            mem[(15 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, sub_4085afe6Address, block.timestamp, 2, mem[(15 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(15 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (16 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _122 = mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (15 * ceil32(return_data.size)) + return_data.size + 192
            _124 = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 'NH{q', 65
            if (16 * ceil32(return_data.size)) + floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(16 * ceil32(return_data.size)) + 192] = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            require _122 + (32 * _124) + 32 <= return_data.size
            idx = 0
            s = (15 * ceil32(return_data.size)) + _122 + 224
            t = (16 * ceil32(return_data.size)) + 224
            while idx < _124:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}



}
