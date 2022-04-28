contract main {




// =====================  Runtime code  =====================


address owner;
address WAVAXAddress;
address opsAddress;
uint256 stor3;
uint256 sub_e4d430bf;

function WAVAX() {
    return WAVAXAddress
}

function owner() {
    return owner
}

function sub_e4d430bf(?) {
    return sub_e4d430bf
}

function ops() {
    return opsAddress
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

function sub_3a0a029d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e4d430bf = arg1
}

function changeOps(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    opsAddress = arg1
}

function sub_168ae9b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    WAVAXAddress = address(arg1)
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

function tokenApproveTo(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function sub_62a9e562(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = WAVAXAddress
    mem[ceil32(return_data.size) + 132] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args WAVAXAddress, address(arg2)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if sub_e4d430bf and 2 > -1 / sub_e4d430bf:
            revert with 'NH{q', 17
        if eth.balance(this.address) < 2 * sub_e4d430bf:
            revert with 0, 'no enough avax'
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            call address(arg1).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value sub_e4d430bf wei
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(address(arg1))
            staticcall address(arg1).factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args WAVAXAddress, address(arg2)
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
            if ext_call.return_data[0] <= 0:
                revert with 0, 'lpAmount is 0'
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            mem[(4 * ceil32(return_data.size)) + 96] = 2
            mem[(4 * ceil32(return_data.size)) + 128] = WAVAXAddress
            mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 0
            mem[(4 * ceil32(return_data.size)) + 228] = 128
            mem[(4 * ceil32(return_data.size)) + 324] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 260] = this.address
            mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value sub_e4d430bf wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _153 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _157 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _153 + (32 * _157) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _153 + 224
            t = (6 * ceil32(return_data.size)) + 224
            while idx < _157:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _157 < 1:
                revert with 'NH{q', 17
            if _157 - 1 >= _157:
                revert with 'NH{q', 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg1)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _382 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_382] == mem[_382]
            if mem[_382]:
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value sub_e4d430bf wei
                     gas gas_remaining wei
                    args address(arg2), mem[(32 * _157 - 1) + (6 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_400] == mem[_400]
                require mem[_400 + 32] == mem[_400 + 32]
                require mem[_400 + 64] == mem[_400 + 64]
                require ext_code.size(address(arg1))
                staticcall address(arg1).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _416 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _420 = mem[_416]
                require mem[_416] == mem[_416 + 12 len 20]
                mem[mem[64] + 4] = WAVAXAddress
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(_420))
                staticcall address(_420).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WAVAXAddress, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _436 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _440 = mem[_436]
                require mem[_436] == mem[_436 + 12 len 20]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_440))
                staticcall address(_440).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _448 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _454 = mem[_448]
                require mem[_448] == mem[_448]
                if mem[_448] <= 0:
                    revert with 0, 'lpAmount is 0'
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg1)
                require ext_code.size(address(_440))
                staticcall address(_440).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_478] == mem[_478]
                if mem[_478]:
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _454
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(arg2), _454, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_516] == mem[_516]
                else:
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = stor3
                    require ext_code.size(address(_440))
                    call address(_440).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_500] == bool(mem[_500])
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _454
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(arg2), _454, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_532] == mem[_532]
            else:
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = stor3
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _392 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_392] == bool(mem[_392])
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value sub_e4d430bf wei
                     gas gas_remaining wei
                    args address(arg2), mem[(32 * _157 - 1) + (6 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _414 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_414] == mem[_414]
                require mem[_414 + 32] == mem[_414 + 32]
                require mem[_414 + 64] == mem[_414 + 64]
                require ext_code.size(address(arg1))
                staticcall address(arg1).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _437 = mem[_432]
                require mem[_432] == mem[_432 + 12 len 20]
                mem[mem[64] + 4] = WAVAXAddress
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(_437))
                staticcall address(_437).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WAVAXAddress, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _456 = mem[_452]
                require mem[_452] == mem[_452 + 12 len 20]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_456))
                staticcall address(_456).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _474 = mem[_472]
                require mem[_472] == mem[_472]
                if mem[_472] <= 0:
                    revert with 0, 'lpAmount is 0'
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg1)
                require ext_code.size(address(_456))
                staticcall address(_456).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _501 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_501] == mem[_501]
                if mem[_501]:
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _474
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(arg2), _474, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _533 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_533] == mem[_533]
                else:
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = stor3
                    require ext_code.size(address(_456))
                    call address(_456).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_520] == bool(mem[_520])
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _474
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(arg2), _474, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_542] == mem[_542]
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'lpAmount is 0'
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            if sub_e4d430bf and 2 > -1 / sub_e4d430bf:
                revert with 'NH{q', 17
            if eth.balance(this.address) < 2 * sub_e4d430bf:
                revert with 0, 'no enough avax'
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(arg2))
                staticcall address(arg2).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(arg1))
                call address(arg1).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value sub_e4d430bf wei
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_code.size(address(arg1))
                staticcall address(arg1).factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WAVAXAddress, address(arg2)
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
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'lpAmount is 0'
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(arg1))
                call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                mem[(6 * ceil32(return_data.size)) + 96] = 2
                mem[(6 * ceil32(return_data.size)) + 128] = WAVAXAddress
                mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = 0
                mem[(6 * ceil32(return_data.size)) + 228] = 128
                mem[(6 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 260] = this.address
                mem[(6 * ceil32(return_data.size)) + 292] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value sub_e4d430bf wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _154 = mem[(6 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _158 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require _154 + (32 * _158) + 32 <= return_data.size
                idx = 0
                s = (6 * ceil32(return_data.size)) + _154 + 224
                t = (7 * ceil32(return_data.size)) + 224
                while idx < _158:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _158 < 1:
                    revert with 'NH{q', 17
                if _158 - 1 >= _158:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg1)
                require ext_code.size(address(arg2))
                staticcall address(arg2).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_383] == mem[_383]
                if mem[_383]:
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value sub_e4d430bf wei
                         gas gas_remaining wei
                        args address(arg2), mem[(32 * _158 - 1) + (7 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_401] == mem[_401]
                    require mem[_401 + 32] == mem[_401 + 32]
                    require mem[_401 + 64] == mem[_401 + 64]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _421 = mem[_417]
                    require mem[_417] == mem[_417 + 12 len 20]
                    mem[mem[64] + 4] = WAVAXAddress
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(_421))
                    staticcall address(_421).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args WAVAXAddress, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _438 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _441 = mem[_438]
                    require mem[_438] == mem[_438 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_441))
                    staticcall address(_441).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _450 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _455 = mem[_450]
                    require mem[_450] == mem[_450]
                    if mem[_450] <= 0:
                        revert with 0, 'lpAmount is 0'
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg1)
                    require ext_code.size(address(_441))
                    staticcall address(_441).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_479] == mem[_479]
                    if mem[_479]:
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = _455
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(arg2), _455, 0, 0, address(this.address), block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _518 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_518] == mem[_518]
                    else:
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = stor3
                        require ext_code.size(address(_441))
                        call address(_441).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg1), stor3
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _502 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_502] == bool(mem[_502])
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = _455
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(arg2), _455, 0, 0, address(this.address), block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _534 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_534] == mem[_534]
                else:
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = stor3
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_393] == bool(mem[_393])
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value sub_e4d430bf wei
                         gas gas_remaining wei
                        args address(arg2), mem[(32 * _158 - 1) + (7 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _415 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_415] == mem[_415]
                    require mem[_415 + 32] == mem[_415 + 32]
                    require mem[_415 + 64] == mem[_415 + 64]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _439 = mem[_433]
                    require mem[_433] == mem[_433 + 12 len 20]
                    mem[mem[64] + 4] = WAVAXAddress
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(_439))
                    staticcall address(_439).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args WAVAXAddress, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _453 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _457 = mem[_453]
                    require mem[_453] == mem[_453 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_457))
                    staticcall address(_457).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _475 = mem[_473]
                    require mem[_473] == mem[_473]
                    if mem[_473] <= 0:
                        revert with 0, 'lpAmount is 0'
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg1)
                    require ext_code.size(address(_457))
                    staticcall address(_457).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_503] == mem[_503]
                    if mem[_503]:
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = _475
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(arg2), _475, 0, 0, address(this.address), block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_535] == mem[_535]
                    else:
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = stor3
                        require ext_code.size(address(_457))
                        call address(_457).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg1), stor3
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_521] == bool(mem[_521])
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = _475
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(arg2), _475, 0, 0, address(this.address), block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _543 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_543] == mem[_543]
}

function sub_82ffcb91(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = WAVAXAddress
    mem[ceil32(return_data.size) + 132] = address(arg2)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args WAVAXAddress, address(arg2)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if sub_e4d430bf and 2 > -1 / sub_e4d430bf:
            revert with 'NH{q', 17
        if eth.balance(this.address) < 2 * sub_e4d430bf:
            revert with 0, 'no enough avax'
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            call address(arg1).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value sub_e4d430bf wei
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_code.size(address(arg1))
            staticcall address(arg1).factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args WAVAXAddress, address(arg2)
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
            if ext_call.return_data[0] <= 0:
                revert with 0, 'lpAmount is 0'
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            mem[(4 * ceil32(return_data.size)) + 96] = 2
            mem[(4 * ceil32(return_data.size)) + 128] = WAVAXAddress
            mem[(4 * ceil32(return_data.size)) + 160] = address(arg2)
            mem[(4 * ceil32(return_data.size)) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 0
            mem[(4 * ceil32(return_data.size)) + 228] = 128
            mem[(4 * ceil32(return_data.size)) + 324] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 260] = this.address
            mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value sub_e4d430bf wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _153 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _157 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _153 + (32 * _157) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _153 + 224
            t = (6 * ceil32(return_data.size)) + 224
            while idx < _157:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _157 < 1:
                revert with 'NH{q', 17
            if _157 - 1 >= _157:
                revert with 'NH{q', 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg1)
            require ext_code.size(address(arg2))
            staticcall address(arg2).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _382 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_382] == mem[_382]
            if mem[_382]:
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value sub_e4d430bf wei
                     gas gas_remaining wei
                    args address(arg2), mem[(32 * _157 - 1) + (6 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_400] == mem[_400]
                require mem[_400 + 32] == mem[_400 + 32]
                require mem[_400 + 64] == mem[_400 + 64]
                require ext_code.size(address(arg1))
                staticcall address(arg1).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _416 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _420 = mem[_416]
                require mem[_416] == mem[_416 + 12 len 20]
                mem[mem[64] + 4] = WAVAXAddress
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(_420))
                staticcall address(_420).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WAVAXAddress, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _436 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _440 = mem[_436]
                require mem[_436] == mem[_436 + 12 len 20]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_440))
                staticcall address(_440).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _448 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _454 = mem[_448]
                require mem[_448] == mem[_448]
                if mem[_448] <= 0:
                    revert with 0, 'lpAmount is 0'
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg1)
                require ext_code.size(address(_440))
                staticcall address(_440).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_478] == mem[_478]
                if mem[_478]:
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _454
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(arg2), _454, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_516] == mem[_516]
                else:
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = stor3
                    require ext_code.size(address(_440))
                    call address(_440).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_500] == bool(mem[_500])
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _454
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(arg2), _454, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_532] == mem[_532]
            else:
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = stor3
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _392 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_392] == bool(mem[_392])
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value sub_e4d430bf wei
                     gas gas_remaining wei
                    args address(arg2), mem[(32 * _157 - 1) + (6 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _414 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_414] == mem[_414]
                require mem[_414 + 32] == mem[_414 + 32]
                require mem[_414 + 64] == mem[_414 + 64]
                require ext_code.size(address(arg1))
                staticcall address(arg1).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _437 = mem[_432]
                require mem[_432] == mem[_432 + 12 len 20]
                mem[mem[64] + 4] = WAVAXAddress
                mem[mem[64] + 36] = address(arg2)
                require ext_code.size(address(_437))
                staticcall address(_437).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WAVAXAddress, address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _456 = mem[_452]
                require mem[_452] == mem[_452 + 12 len 20]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_456))
                staticcall address(_456).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _474 = mem[_472]
                require mem[_472] == mem[_472]
                if mem[_472] <= 0:
                    revert with 0, 'lpAmount is 0'
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg1)
                require ext_code.size(address(_456))
                staticcall address(_456).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _501 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_501] == mem[_501]
                if mem[_501]:
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _474
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(arg2), _474, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _533 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_533] == mem[_533]
                else:
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = stor3
                    require ext_code.size(address(_456))
                    call address(_456).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_520] == bool(mem[_520])
                    mem[mem[64] + 4] = address(arg2)
                    mem[mem[64] + 36] = _474
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(arg2), _474, 0, 0, address(this.address), block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_542] == mem[_542]
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'lpAmount is 0'
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg1), stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            if sub_e4d430bf and 2 > -1 / sub_e4d430bf:
                revert with 'NH{q', 17
            if eth.balance(this.address) < 2 * sub_e4d430bf:
                revert with 0, 'no enough avax'
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(arg2))
                staticcall address(arg2).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(arg1))
                call address(arg1).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value sub_e4d430bf wei
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_code.size(address(arg1))
                staticcall address(arg1).factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WAVAXAddress, address(arg2)
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
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'lpAmount is 0'
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(arg1))
                call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                mem[(6 * ceil32(return_data.size)) + 96] = 2
                mem[(6 * ceil32(return_data.size)) + 128] = WAVAXAddress
                mem[(6 * ceil32(return_data.size)) + 160] = address(arg2)
                mem[(6 * ceil32(return_data.size)) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = 0
                mem[(6 * ceil32(return_data.size)) + 228] = 128
                mem[(6 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 260] = this.address
                mem[(6 * ceil32(return_data.size)) + 292] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value sub_e4d430bf wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _154 = mem[(6 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _158 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require _154 + (32 * _158) + 32 <= return_data.size
                idx = 0
                s = (6 * ceil32(return_data.size)) + _154 + 224
                t = (7 * ceil32(return_data.size)) + 224
                while idx < _158:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _158 < 1:
                    revert with 'NH{q', 17
                if _158 - 1 >= _158:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = address(arg1)
                require ext_code.size(address(arg2))
                staticcall address(arg2).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_383] == mem[_383]
                if mem[_383]:
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value sub_e4d430bf wei
                         gas gas_remaining wei
                        args address(arg2), mem[(32 * _158 - 1) + (7 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _401 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_401] == mem[_401]
                    require mem[_401 + 32] == mem[_401 + 32]
                    require mem[_401 + 64] == mem[_401 + 64]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _421 = mem[_417]
                    require mem[_417] == mem[_417 + 12 len 20]
                    mem[mem[64] + 4] = WAVAXAddress
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(_421))
                    staticcall address(_421).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args WAVAXAddress, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _438 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _441 = mem[_438]
                    require mem[_438] == mem[_438 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_441))
                    staticcall address(_441).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _450 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _455 = mem[_450]
                    require mem[_450] == mem[_450]
                    if mem[_450] <= 0:
                        revert with 0, 'lpAmount is 0'
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg1)
                    require ext_code.size(address(_441))
                    staticcall address(_441).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_479] == mem[_479]
                    if mem[_479]:
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = _455
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(arg2), _455, 0, 0, address(this.address), block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _518 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_518] == mem[_518]
                    else:
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = stor3
                        require ext_code.size(address(_441))
                        call address(_441).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg1), stor3
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _502 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_502] == bool(mem[_502])
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = _455
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(arg2), _455, 0, 0, address(this.address), block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _534 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_534] == mem[_534]
                else:
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = stor3
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg1), stor3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_393] == bool(mem[_393])
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value sub_e4d430bf wei
                         gas gas_remaining wei
                        args address(arg2), mem[(32 * _158 - 1) + (7 * ceil32(return_data.size)) + 224], 0, 0, address(this.address), block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _415 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_415] == mem[_415]
                    require mem[_415 + 32] == mem[_415 + 32]
                    require mem[_415 + 64] == mem[_415 + 64]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _439 = mem[_433]
                    require mem[_433] == mem[_433 + 12 len 20]
                    mem[mem[64] + 4] = WAVAXAddress
                    mem[mem[64] + 36] = address(arg2)
                    require ext_code.size(address(_439))
                    staticcall address(_439).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args WAVAXAddress, address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _453 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _457 = mem[_453]
                    require mem[_453] == mem[_453 + 12 len 20]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_457))
                    staticcall address(_457).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _475 = mem[_473]
                    require mem[_473] == mem[_473]
                    if mem[_473] <= 0:
                        revert with 0, 'lpAmount is 0'
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(arg1)
                    require ext_code.size(address(_457))
                    staticcall address(_457).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_503] == mem[_503]
                    if mem[_503]:
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = _475
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(arg2), _475, 0, 0, address(this.address), block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_535] == mem[_535]
                    else:
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = stor3
                        require ext_code.size(address(_457))
                        call address(_457).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(arg1), stor3
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_521] == bool(mem[_521])
                        mem[mem[64] + 4] = address(arg2)
                        mem[mem[64] + 36] = _475
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).removeLiquidityAVAXSupportingFeeOnTransferTokens(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(arg2), _475, 0, 0, address(this.address), block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _543 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_543] == mem[_543]
}



}
